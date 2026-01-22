# Material Design 3 Color Scheme Checklist

This checklist should be filled by developers and designers to define the complete color scheme (color palette) for Material Design 3 implementation. Fill in all color values in HSL, HEX, or RGB format.

## 1. Color System

### 1.1. Primary Colors

#### 1.1.1. Primary Color

- Primary color: `______`
- On primary color (content on primary): `______`
- Primary container color: `______`
- On primary container color (content on primary container): `______`
- Inverse primary color: `______`

**Usage Notes:**
- Primary: Main brand or action color—used in high-emphasis elements (buttons, tabs, active states)
- On Primary: Color for content (text/icons) placed on Primary to ensure contrast
- Primary Container: Container tone for surfaces or backgrounds requiring less emphasis
- On Primary Container: Content color on top of PrimaryContainer
- Inverse Primary: Version of Primary suitable for use on inverse surfaces

### 1.2. Secondary Colors

#### 1.2.1. Secondary Color

- Secondary color: `______`
- On secondary color (content on secondary): `______`
- Secondary container color: `______`
- On secondary container color (content on secondary container): `______`

**Usage Notes:**
- Secondary: Less prominent accent supporting Primary—used in secondary buttons, filters, etc.
- On Secondary: Color for content on Secondary
- Secondary Container: Container tone for Secondary
- On Secondary Container: Content color on SecondaryContainer

### 1.3. Tertiary Colors

#### 1.3.1. Tertiary Color

- Tertiary color: `______`
- On tertiary color (content on tertiary): `______`
- Tertiary container color: `______`
- On tertiary container color (content on tertiary container): `______`

**Usage Notes:**
- Tertiary: Additional accent for contrast or decorative use—charts, avatars, or to balance Primary & Secondary
- On Tertiary: Color for content on Tertiary
- Tertiary Container: Container tone for Tertiary
- On Tertiary Container: Content color on TertiaryContainer

### 1.4. Background Colors

#### 1.4.1. Background

- Background color: `______`
- On background color (content on background): `______`

**Usage Notes:**
- Background: The default app background
- On Background: Color for content on Background

### 1.5. Surface Colors

#### 1.5.1. Surface

- Surface color: `______`
- On surface color (content on surface): `______`
- Surface variant color: `______`
- On surface variant color (content on surface variant): `______`
- Surface dim color: `______`
- Surface bright color: `______`
- Surface tint color: `______`

**Usage Notes:**
- Surface: Main UI panels, cards, sheets, etc.
- On Surface: Text/icons on Surface
- Surface Variant: Variant of Surface for alternate or less emphasized surfaces
- On Surface Variant: Content color on SurfaceVariant
- Surface Dim: Extra tonal variation—darker surface for visual depth
- Surface Bright: Extra tonal variation—lighter surface for visual depth
- Surface Tint: Used to tint surfaces with the Primary accent color

#### 1.5.2. Surface Containers

- Surface container lowest color: `______`
- Surface container low color: `______`
- Surface container color: `______`
- Surface container high color: `______`
- Surface container highest color: `______`

**Usage Notes:**
- Surface Containers: For grouping surface areas into elevation or depth layers
- Use for: card backgrounds, modals, elevated sheets

### 1.6. Inverse Surface Colors

#### 1.6.1. Inverse Surface

- Inverse surface color: `______`
- Inverse on surface color (content on inverse surface): `______`

**Usage Notes:**
- Inverse Surface: Surfaces whose background color is inverse (flipped) relative to the main surface
- Useful for: bottom bars, strong contrast areas, snackbars

### 1.7. Error Colors

#### 1.7.1. Error

- Error color: `______`
- On error color (content on error): `______`
- Error container color: `______`
- On error container color (content on error container): `______`

**Usage Notes:**
- Error: Used to show critical or destructive states (errors, alerts)
- On Error: Color for content on Error
- Error Container: Container tone for Error
- On Error Container: Content color on ErrorContainer

### 1.8. Outline Colors

#### 1.8.1. Outline

- Outline color: `______`
- Outline variant color: `______`

**Usage Notes:**
- Outline: Standard outline color for borders and dividers
- Outline Variant: Softer or more subtle version of Outline

## 2. Theme Variations

### 2.1. Light Theme

- [ ] All colors defined above are for **Light Theme**
- [ ] Contrast ratios verified (WCAG AA minimum 4.5:1)
- [ ] All "on" colors tested against their base colors

### 2.2. Dark Theme

If using dark theme, fill the same structure below:

#### 2.2.1. Primary Colors (Dark Theme)

- Primary color (dark): `______`
- On primary color (dark): `______`
- Primary container color (dark): `______`
- On primary container color (dark): `______`
- Inverse primary color (dark): `______`

#### 2.2.2. Secondary Colors (Dark Theme)

- Secondary color (dark): `______`
- On secondary color (dark): `______`
- Secondary container color (dark): `______`
- On secondary container color (dark): `______`

#### 2.2.3. Tertiary Colors (Dark Theme)

- Tertiary color (dark): `______`
- On tertiary color (dark): `______`
- Tertiary container color (dark): `______`
- On tertiary container color (dark): `______`

#### 2.2.4. Background Colors (Dark Theme)

- Background color (dark): `______`
- On background color (dark): `______`

#### 2.2.5. Surface Colors (Dark Theme)

- Surface color (dark): `______`
- On surface color (dark): `______`
- Surface variant color (dark): `______`
- On surface variant color (dark): `______`
- Surface dim color (dark): `______`
- Surface bright color (dark): `______`
- Surface tint color (dark): `______`

#### 2.2.6. Surface Containers (Dark Theme)

- Surface container lowest color (dark): `______`
- Surface container low color (dark): `______`
- Surface container color (dark): `______`
- Surface container high color (dark): `______`
- Surface container highest color (dark): `______`

#### 2.2.7. Inverse Surface Colors (Dark Theme)

- Inverse surface color (dark): `______`
- Inverse on surface color (dark): `______`

#### 2.2.8. Error Colors (Dark Theme)

- Error color (dark): `______`
- On error color (dark): `______`
- Error container color (dark): `______`
- On error container color (dark): `______`

#### 2.2.9. Outline Colors (Dark Theme)

- Outline color (dark): `______`
- Outline variant color (dark): `______`

- [ ] All dark theme colors defined
- [ ] Contrast ratios verified for dark theme (WCAG AA minimum 4.5:1)
- [ ] Dark theme colors adjusted (lighter accents, reduced saturation by 20+ points)

## 3. Color Format

Specify the color format used:
- [ ] HSL (recommended for Material Design 3)
- [ ] HEX
- [ ] RGB

**Example HSL format:**
```
Primary color: hsl(212, 100%, 50%)
On primary color: hsl(0, 0%, 100%)
```

**Example HEX format:**
```
Primary color: #2196F3
On primary color: #FFFFFF
```

## 4. Validation Checklist

Before submitting this checklist, verify:

- [ ] All required color roles are filled
- [ ] All "on" colors are defined for each base color
- [ ] Container colors are defined for Primary, Secondary, Tertiary, and Error
- [ ] Both light and dark themes are defined (if applicable)
- [ ] Contrast ratios meet WCAG AA standards (4.5:1 minimum)
- [ ] Color format is consistent throughout
- [ ] Surface container hierarchy is logical (lowest → highest)
- [ ] Dark theme colors are properly adjusted (lighter accents, reduced saturation)

## 5. Notes and Additional Information

**Designer Notes:**
```
[Space for designer notes about color choices, brand guidelines, etc.]
```

**Developer Notes:**
```
[Space for developer notes about implementation considerations, CSS variable naming, etc.]
```

**Accessibility Notes:**
```
[Space for accessibility testing results, contrast ratio calculations, etc.]
```

---

**Reference:**
- [Material Design 3 Color Roles Guide](color-roles.mdc)
- [Material Design 3 Official Documentation](https://m3.material.io/styles/color/roles)
- [Color System Guide](../visual/color-system.mdc)
