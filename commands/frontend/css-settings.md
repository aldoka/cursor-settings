# css-settings

Create or update a CSS design system based on the template.

## User Options

- **Allow LLM to fill unspecified values** (disabled by default): When enabled, the LLM may propose and fill colors and other values that have no default in the template or that lack enough values for calculation. When disabled, such placeholders must remain unfilled and be marked with emojis (🎨 for colors, 📏 for others).

## Main Instructions

Determine mode based on context:
- **Create mode**: User asks to create new design system, or no existing settings file
- **Update mode**: User provides existing settings file, or asks to recalculate/update values

## Execution Steps

**Create Mode:**
1. Find `css-system-template.md` in `rules/frontend/css/css-system-template.md`, stop if it is not found.
2. Copy template to location specified by user (or ask where to save)
3. Fix and update paths to references in copied document
4. Follow the instructions for the Update Mode

**Update Mode:**
1. Fill all `__` placeholders with default values in recommendations, fill using "use" values (e.g. "`______`px, use 8px")
2. For updated or filled values, calculate or recalculate values where they are used in formulas (e.g., `= primary_accent_light - 10–20%`)
3. Follow calculation rules
4. For placeholders that have no default value or not enough values for calculation:
   - **If "Allow LLM to fill unspecified values" is disabled (default):** leave them unfilled and mark with emojis: 🎨 for colors, 📏 for others. Remove emojis from calculated values. Example: `🎨 - Primary accent: oklch(__% __ __), use oklch(50% 0.25 hue)`.
   - **If "Allow LLM to fill unspecified values" is enabled:** the LLM may propose and fill colors and other values; remove emojis from filled values.
5. Verify if values in groups correlate with each other and meet group constraints.

## Calculation Rules

- Use **middle value** of ranges, unless formula specifies different
  - for "L: 10–20%" use `15%`
  - for "L: 10-18%, `= background_primary_light - 80–88%`", calculate by formula and ensure it is within the range
- Round values to 2 decimal places
- Calculate rem values for integer px equivalents, if possible
- Verify group constraints are met. For example, Dark Adaptation and Contrast requirements.

## Constraints

- DO NOT leave `__` placeholders unfilled if default value or formula provides enough information
- For placeholders without default value or without enough information to calculate: DO leave them unfilled and mark with emojis (🎨/📏) **unless** the user enabled "Allow LLM to fill unspecified values"—then the LLM may fill them
- DO NOT change template structure or remove sections
- DO NOT skip sections or subsections
- DO NOT overwrite user-provided values in Update mode

## Checklist

**Create mode:**
- [ ] Template copied to correct location
- [ ] Paths to references updated

**Both modes:**
- [ ] All color states calculated (hover, active, focus, disabled, selected)
- [ ] Dark mode colors calculated with adaptation rules
- [ ] Contrast requirements met for all colors
- [ ] All group constraints met
- [ ] All formulas resolved with concrete values, if possible
- [ ] Subsection values correlate with each other
- [ ] Emojis removed from calculated values; emojis added to unfilled placeholders (or LLM-filled only when "Allow LLM to fill unspecified values" is enabled)
