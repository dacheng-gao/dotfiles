# Ghostty AGENTS.md

## Scope

- Only edit `ghostty/config` keys related to color theme or font.
- Allowed keys: `palette`, `background`, `foreground`, `cursor-color`, `cursor-text`, `selection-background`, `selection-foreground`, `font-family`, `font-feature`, `font-size`.
- Do not change window behavior, tabs, shell integration, cursor, mouse, or keybind settings unless explicitly requested.

## Color Theme

- Default to a light theme; do not switch to a dark theme unless explicitly requested.
- Prefer warm, paper-like light backgrounds over pure white.
- Keep foreground and background contrast high enough for fast scanning during coding and terminal work.
- ANSI colors should stay sharp and easy to distinguish in logs, diffs, and prompts.
- Avoid fluorescent colors, muddy grays, or low-contrast palettes.
- Evaluate the palette as a whole instead of tuning isolated hex values.

## Font

- Prefer monospaced fonts built for coding.
- Prioritize glyph clarity and information density over decorative personality.
- Keep ligatures disabled unless explicitly requested.
- Reject fonts that weaken punctuation, zero/O, or similar character distinction.

## Acceptance

- The theme remains readable and comfortable over long sessions.
- The palette keeps clear hierarchy without looking harsh.
- The font is dense, stable, and unambiguous for terminal work.
