#!/bin/bash

input=$(cat)

# Extract fields from JSON
current_dir=$(echo "$input" | jq -r '.workspace.current_dir // ""')
context_remaining=$(echo "$input" | jq -r '.context_window.remaining_percentage // empty')
agent=$(echo "$input" | jq -r '.agent.name // empty')
model=$(echo "$input" | jq -r '.model.display_name // empty')

# Mirror zsh theme: user@host dir
user_host="$(whoami)@$(hostname -s)"
dir_name=$(basename "$current_dir")

# Optional extras
model_part=""
[ -n "$model" ] && model_part=" | $model"
# Always show ctx for consistent layout; placeholder when data is absent
[ -z "$context_remaining" ] && context_remaining="--"
context_part=" | ctx:${context_remaining}%"

# Rate limit usage (Claude.ai subscription; only shown when data is present)
usage_part=""
five_pct=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // empty')
week_pct=$(echo "$input" | jq -r '.rate_limits.seven_day.used_percentage // empty')
if [ -n "$five_pct" ] || [ -n "$week_pct" ]; then
    usage_str=""
    [ -n "$five_pct" ] && usage_str="5h:$(printf '%.0f' "$five_pct")%"
    if [ -n "$week_pct" ]; then
        [ -n "$usage_str" ] && usage_str="$usage_str "
        usage_str="${usage_str}7d:$(printf '%.0f' "$week_pct")%"
    fi
    usage_part=" | $usage_str"
fi

agent_part=""
[ -n "$agent" ] && agent_part=" | $agent"

# Output style: bold-black user@host dir, plain extras
printf "\033[1;30m%s %s\033[0m%s%s%s%s" "$user_host" "$dir_name" "$model_part" "$context_part" "$usage_part" "$agent_part"
