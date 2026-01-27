# css-variables

Generate CSS variables file based on the three-layer architecture (primitives → semantic → component).

**IMPORTANT: Before starting, read:** [css-variables.mdc](../../rules/frontend/css/css-variables.mdc)

## Main Instructions

This command generates a `variables.css` (or `_variables.scss`) file following the three-layer CSS custom properties architecture.

**Before generation, determine:**
1. **Settings source**: Location of filled design system settings (copy of css-system-template.md)
2. **Naming style**: Standard (default) or M3 (Material Design 3)
3. **Output format**: CSS (default) or SCSS
4. **Output location**: Where to save the generated file

## Execution Steps

### Step 1: Prepare Design System Settings

Check if user has a filled copy of css-system-template.md:
- **If yes**: Read the settings file to get design token values and check that all `__` placeholders are filled with values, otherwise stop and ask user to fill them.
- **If no**: Ask user to run [css-settings](css-settings.md) command first, or offer to run it and stop until it is filled

### Step 2: Configure Generation Options

Ask user to choose if not already chosen:

**Naming Style:**
- **Standard** (default): `--palette-primary-40`, `--color-primary`, `--button-bg`
- **M3**: `--md-ref-palette-primary40`, `--md-sys-color-primary`, `--md-comp-button-*`

**Output Format:**
- **CSS** (default): `.css` file with CSS custom properties
- **SCSS**: `.scss` file with SCSS variables and CSS custom properties

### Step 3: Generate Variables File

Follow the structure from css-variables.mdc rule:

1. **Primitives** (from settings):
   - Color palettes (primary, secondary, tertiary, neutral, neutral-variant, error, success, warning)
   - Spacing scale (based on spacing unit)
   - Border radius scale
   - Container widths
   - Typography primitives
   - Shadow primitives
   - Animation primitives

2. **Semantic tokens** (reference primitives):
   - Color roles with "on" pairs
   - Surface and text colors
   - Status colors
   - Link colors
   - Elevation levels
   - Motion tokens

3. **Component tokens** (reference semantic):
   - Button, card, input tokens
   - State variants (hover, active, focus, disabled)
   - Focus ring tokens

4. **Theme support**:
   - `:root` for light theme (default)
   - `[data-theme="dark"]` for dark theme
   - `@media (prefers-color-scheme: dark)` fallback
   - `@media (prefers-reduced-motion: reduce)` support
   - OKLCH fallback with `@supports`

### Step 4: Save and Verify

1. Save file to specified location
2. Verify file structure follows the rule
3. Check for syntax errors

## Naming Style Reference

### Standard (Default)

```css
/* Primitives */
--palette-primary-40: oklch(40% 0.25 250);
--spacing-4: 32px;
--radius-md: 8px;

/* Semantic */
--color-primary: var(--palette-primary-40);
--color-on-primary: var(--palette-primary-100);
--elevation-md: 0 4px 6px -1px rgba(0, 0, 0, 0.1);

/* Component */
--button-primary-bg: var(--color-primary);
--button-primary-text: var(--color-on-primary);
```

### M3 (Material Design 3)

```css
/* Primitives */
--md-ref-palette-primary40: oklch(40% 0.25 250);

/* Semantic */
--md-sys-color-primary: var(--md-ref-palette-primary40);
--md-sys-color-on-primary: var(--md-ref-palette-primary100);

/* Component */
--md-comp-button-filled-container-color: var(--md-sys-color-primary);
--md-comp-button-filled-label-text-color: var(--md-sys-color-on-primary);
```

## Constraints

- DO NOT generate without reading css-variables.mdc rule first
- DO NOT skip any layer in the architecture
- DO NOT reference primitives directly from component tokens
- DO NOT forget "on" colors for every surface/accent
- DO NOT generate without design system settings (run css-settings first)
- DO NOT mix naming conventions (use either Standard or M3, not both)

## Checklist

**Preparation:**
- [ ] Design system settings file located or created
- [ ] Naming style chosen (Standard or M3)
- [ ] Output format chosen (CSS or SCSS)
- [ ] Output location specified

**Primitives:**
- [ ] All color palettes generated with full tonal scale
- [ ] Spacing primitives generated
- [ ] Border radius primitives generated
- [ ] Typography primitives generated
- [ ] Shadow and animation primitives generated

**Semantic Layer:**
- [ ] Color roles with "on" pairs defined
- [ ] Surface and text colors defined
- [ ] Status colors defined
- [ ] Link colors defined
- [ ] Elevation and motion tokens defined

**Component Layer:**
- [ ] Component tokens reference semantic tokens only
- [ ] State variants defined (hover, active, focus, disabled)
- [ ] Focus ring tokens defined

**Theming:**
- [ ] Light theme in `:root`
- [ ] Dark theme in `[data-theme="dark"]`
- [ ] System preference fallback added
- [ ] Reduced motion support added
- [ ] OKLCH fallback provided

**Quality:**
- [ ] Naming convention consistent throughout
- [ ] No syntax errors
- [ ] File saved to correct location
