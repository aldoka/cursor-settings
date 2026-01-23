# Design System Base Settings Template

Generate a separate CSS settings file for each project based on this template.

> **Purpose**: This file describes the base design system settings that apply to the entire site. Specific settings for individual components or pages should be described in separate files and reference this template.

> **Reference**: This template is a checklist of [Color System](../webdesign/visual/color-system.mdc) and [Typography](../webdesign/visual/typography.mdc) rules.

## 📋 Table of Contents

1. [Color System](#1-color-system)
    - [Accent Colors](#11-accent-colors)
      - [Primary Accent](#111-primary-accent)
      - [Secondary Accent](#112-secondary-accent)
      - [Status Colors](#113-status-colors-success-error-warning)
    - Backgrounds and Surfaces
      - [Primary Background](#121-primary-background)
      - [Secondary Surfaces](#122-secondary-surfaces)
      - [Elevation Surfaces](#123-elevation-surfaces)
    - Text and Typography
      - [Primary Text](#131-primary-text)
      - [Secondary Text](#132-secondary-text)
      - [Hints and Disabled Text](#133-hints-and-disabled-text)
     - [Dividers](#134-dividers)
    - [Links](#14-links)
2. Typography
    - [Font Sizes](#21-font-sizes)
    - [Font Weights](#22-font-weights)
    - [Line-height](#23-line-height)
    - [Line Length](#24-line-length)
    - [Letter-spacing](#25-letter-spacing)
3. Spacing System
    - [Base Unit](#31-base-unit)
    - [Spacing Scale](#32-spacing-scale)
    - [Vertical Rhythm](#33-vertical-rhythm)
4. Containers and Layout
    - [Containers](#41-containers)
    - [Grid System](#42-grid-system)
5. Animations and Transitions
    - [Transitions](#51-transitions)
    - [Animations](#52-animations)
6. Shadows and Effects
    - [Box-shadow](#61-box-shadow)
    - [Text-shadow](#62-text-shadow)
    - [Blur Effects](#63-blur-effects)
7. Responsiveness
    - [Breakpoints](#71-breakpoints)
    - [Responsive Changes](#72-responsive-changes)
8. Accessibility
    - [Focus States](#81-focus-states)
    - [Contrast](#82-contrast)
    - [Reduced Motion](#83-reduced-motion)
    - [Touch Targets](#84-touch-targets)
9. [Notes](#9-notes)
---

## 1. Color System

> **Important**: Use **oklch** format instead of HSL for universal recommendations. oklch provides perceptually uniform saturation for all hues.

### 1.1. Accent Colors

#### 1.1.1. Primary Accent

#### 1.1.1.1. Light Mode
- Primary accent: `oklch(__% __ __)` - L: 40-60%, C: 0.15-0.40, hue: `______`
- Hover: `oklch(__% __ __)` - decrease lightness by 10-20%
- Active: `oklch(__% __ __)` - decrease lightness by 20-30%
- Focus: `oklch(__% __ __)` - contrast minimum 4.5:1 with background
- Disabled: `oklch(__% __ __)` - reduced opacity or desaturation
- Selected: `oklch(__% __ __)` - increase lightness by 10-20%

**Recommendations:**
- **Parameters**: L: 40-60%, C: 0.15-0.40 - for buttons, links, interactive elements
- **States**: Hover (10-20% darker), Active (20-30% darker), Focus (clear outline), Disabled (reduced opacity), Selected (10-20% lighter)

#### 1.1.1.2. Dark Mode
- Primary accent: `oklch(__% __ __)` - L: 70-90%, C: 0.12-0.35, (hue from light mode)
- Hover: `oklch(__% __ __)` - increase lightness by 10-20%
- Active: `oklch(__% __ __)` - increase lightness by 20-30%
- Focus: `oklch(__% __ __)` - contrast minimum 4.5:1 with background
- Disabled: `oklch(__% __ __)` - reduced opacity or desaturation
- Selected: `oklch(__% __ __)` - decrease lightness by 10-20%

**Recommendations:**
- **Dark mode**: L: 70-90%, C: 0.12-0.35 - avoid very dark (L < 60%) or very saturated (C > 0.35) tones
- **States**: Hover (10-20% lighter), Active (20-30% lighter), Focus (clear outline), Disabled (reduced opacity), Selected (10-20% darker)
- **Preserve hue**: In dark mode, preserve the same hue to maintain brand identity

**Relationships:**
- **With adaptation rules [1.5]**: Apply the same adaptation rules for dark mode (L +20-30%, C -0.05-0.10, preserve hue)
- **With contrast [8.2]**: All contrast requirements must be met in both modes

#### 1.1.2. Secondary Accent

#### 1.1.2.1. Light Mode
- Secondary accent: `oklch(__% __ __)` - L: 50-70%, C: 0.12-0.35, hue: `______`
- Hover: `oklch(__% __ __)` - increase lightness by 10-20%
- Active: `oklch(__% __ __)` - increase lightness by 20-30%
- Focus: `oklch(__% __ __)` - contrast minimum 4.5:1 with background
- Disabled: `oklch(__% __ __)` - reduced opacity or desaturation
- Selected: `oklch(__% __ __)` - increase lightness by 10-20%

#### 1.1.2.2. Dark Mode
- Secondary accent: `oklch(__% __ __)` - L: 60-80%, C: 0.10-0.30, (hue from light mode)
- Hover: `oklch(__% __ __)` - increase lightness by 10-20%
- Active: `oklch(__% __ __)` - increase lightness by 20-30%
- Focus: `oklch(__% __ __)` - contrast minimum 4.5:1 with background
- Disabled: `oklch(__% __ __)` - reduced opacity or desaturation
- Selected: `oklch(__% __ __)` - increase lightness by 10-20%

**Recommendations:**
- Use for secondary buttons, less important elements
- Apply the same adaptation rules for dark mode as for primary accent

**Relationships:**
- **With adaptation rules [1.5]**: Apply the same adaptation rules for dark mode (L +20-30%, C -0.05-0.10, preserve hue)
- **With primary accent [1.1.1]**: Uses the same adaptation rules

#### 1.1.3. Status Colors (success, error, warning)

#### 1.1.3.1. Light Mode
- Success color: `oklch(__% __ __)` - L: 40-60%, C: 0.15-0.40, hue: 120-150°
- Error color: `oklch(__% __ __)` - L: 40-60%, C: 0.15-0.40, hue: 0-30° or 330-360°
- Warning color: `oklch(__% __ __)` - L: 40-60%, C: 0.15-0.40, hue: 60-90°

#### 1.1.3.2. Dark Mode
- Success color: `oklch(__% __ __)` - L: 65-80%, C: 0.15-0.30, hue from light mode
- Error color: `oklch(__% __ __)` - L: 60-75%, C: 0.20-0.35, hue from light mode
- Warning color: `oklch(__% __ __)` - L: 70-85%, C: 0.20-0.35, hue from light mode

**Recommendations:**
- **Adaptation from light mode**: Lightness increased by +20-30%, Chroma decreased by 0.05-0.10, hue preserved (see [1.5. Dark Mode Adaptation Rules](#15-dark-mode-adaptation-rules))
- **Differences between states**: Success usually requires lower saturation (C: 0.15-0.30), error and warning - higher (C: 0.20-0.35) for better visibility and importance perception
- **Contrast**: Minimum 3:1 with background for UI components (WCAG 1.4.11 Non-Text Contrast). If text is placed on the color, contrast must be minimum 4.5:1 (WCAG AA)

**Relationships:**
- **With contrast [8.2]**: All status colors must provide sufficient contrast
- **With transitions [5.1]**: Transition duration 200ms for smooth color change
- **With adaptation rules [1.5]**: Apply the same adaptation rules for dark mode (L +20-30%, C -0.05-0.10, preserve hue) - see [1.2.4. Status Colors](#124-status-colors-success-error-warning)

### 1.2. Backgrounds and Surfaces

#### 1.2.1. Primary Background

#### 1.2.1.1. Light Mode
- Primary background: `oklch(__% __ __)` - L: 90-100%, C: 0-0.08, hue: `______`
- Recommendation: `oklch(98% 0.02 hue)` - slightly muted white

#### 1.2.1.2. Dark Mode
- Primary background: `oklch(__% __ __)` - L: 7-15%, C: 0-0.06, hue: `______`
- Recommendation: `oklch(10% 0 0)` (≈ `#121212`) or `oklch(12% 0.03 250)`

**Recommendations:**
- **Contrast**: Ensure contrast minimum 4.5:1 with text (WCAG AA), recommended 7:1 (WCAG AAA)

**Relationships:**
- **With adaptation rules [1.5]**: Backgrounds adapt with reduced saturation (C ≤ 0.06 in dark mode)
- **With contrast [8.2]**: All contrast requirements must be met in both modes

#### 1.2.2. Secondary Surfaces

#### 1.2.2.1. Light Mode
- Secondary surface: `oklch(__% __ __)` - L: 80-90%, C: 0-0.08, hue: `______`
- Lightness difference: 5-10% from primary background for visual separation

#### 1.2.2.2. Dark Mode
- Secondary surface: `oklch(__% __ __)` - L: 15-25%, C: 0-0.06, hue: `______`
- Lightness difference: 5-10% from primary background for visual separation

**Recommendations:**
- Use for cards, panels, content areas
- Lightness difference 5-10% from primary background ensures visual separation
- Maintain sufficient contrast with text (minimum 4.5:1)

**Relationships:**
- **With adaptation rules [1.5]**: Backgrounds adapt with reduced saturation (C ≤ 0.06 in dark mode)
- **With primary background [1.2.1]**: Lightness difference 5-10% from primary background

#### 1.2.3. Elevation Surfaces

#### 1.2.3.1. Light Mode
- Elevated surface: `oklch(__% __ __)` - L: 70-80%, C: 0-0.08, hue: `______`

#### 1.2.3.2. Dark Mode
- Elevated surface: `oklch(__% __ __)` - L: 20-40%, C: 0-0.06, hue: `______`
- Recommendation: Use white overlay with 5-16% opacity on base background `oklch(10% 0 0)`

**Recommendations:**
- Use for modal windows, dropdown menus, tooltips
- **Elevation rule**: Surfaces closer to the viewer should be lighter, farther - darker
- *Example for dark mode*: Base background `oklch(10% 0 0)`, card `oklch(15% 0 0)`, modal window `oklch(20% 0 0)`, tooltip `oklch(25% 0 0)`

**Limitations:**
- Light mode: C ≤ 0.08 for all surfaces
- Dark mode: C ≤ 0.06 for all surfaces (reduced saturation)

**Relationships:**
- **With adaptation rules [1.5]**: Backgrounds adapt with reduced saturation (C ≤ 0.06 in dark mode)
- **With text [1.3]**: Contrast between background and text must be minimum 4.5:1 (WCAG AA), recommended 7:1 (WCAG AAA)
- **With shadows [6.1]**: Shadows must be visible on background

### 1.3. Text and Typography

> **Hierarchy through opacity/lightness**: Instead of creating many gray shades, use variations of opacity or lightness of one base color.

#### 1.3.1. Primary Text

#### 1.3.1.1. Light Mode
- Primary text: `oklch(__% __ __)` - L: 15-30%, C: 0-0.12, hue: `______`
- Recommendation: `oklch(20% 0.05 hue)` for 4.5:1 contrast or `oklch(15% 0 hue)` for 7:1 contrast

#### 1.3.1.2. Dark Mode
- Primary text: `oklch(__% __ __)` - L: 85-100%, C: 0-0.10, hue: `______`, recommended `oklch(95% 0.02 hue)` for 7:1 contrast or `oklch(90% 0 hue)` for 4.5:1 contrast

**Recommendations:**
- **Lightness difference**: Minimum 40-50% difference between text and background for sufficient visual contrast

**Relationships:**
- **With adaptation rules [1.5]**: Text adapts with reduced saturation (C ≤ 0.10 in dark mode)
- **With contrast [8.2]**: All contrast requirements must be met in both modes

#### 1.3.2. Secondary Text

#### 1.3.2.1. Light Mode:
- Secondary text: `oklch(__% __ __)` - L: 20-35%, C: 0-0.12, hue: `______`

#### 1.3.2.2. Dark Mode:
- Secondary text: `oklch(__% __ __)` - L: 75-90%, C: 0-0.10, hue: `______`, recommended `oklch(80% 0.05 hue)` or white with ≈ 80% opacity `oklch(80% 0 0)`

**Recommendations:**
- Use for captions, metadata, non-primary content
- Visually softer than primary text, but maintains readability

**Relationships:**
- **With adaptation rules [1.5]**: Text adapts with reduced saturation (C ≤ 0.10 in dark mode)
- **With primary text [1.3.1]**: Visually softer than primary text

#### 1.3.3. Hints and Disabled Text

#### 1.3.3.1. Light Mode:
- Hints: `oklch(__% __ __)` - L: 35-50%, C: 0-0.12, hue: `______`, recommended `oklch(40% 0.08 hue)` or primary color with reduced opacity
- Recommendation: `oklch(40% 0.08 hue)` or primary color with reduced opacity

#### 1.3.3.2. Dark Mode:
- Hints: `oklch(__% __ __)` - L: 50-70%, C: 0-0.10, hue: `______`, recommended `oklch(60% 0.05 hue)` or white with ≈ 60% opacity `oklch(60% 0 0)`
- Recommendation: `oklch(60% 0.05 hue)` or white with ≈ 60% opacity `oklch(60% 0 0)`

**Recommendations:**
- Use for placeholder text, hints, disabled elements
- Contrast minimum 3:1 for large text (≥18pt or ≥14pt bold), recommended 4.5:1

**Relationships:**
- **With adaptation rules [1.5]**: Text adapts with reduced saturation (C ≤ 0.10 in dark mode)
- **With contrast [8.2]**: Contrast minimum 3:1 for large text

#### 1.3.4. Dividers

- Divider: `oklch(__% __ __)` - white with ≈ 12% opacity `oklch(12% 0 hue)`

**Recommendations:**
- Use for visual separation of elements
- Contrast minimum 3:1 with adjacent background (WCAG 1.4.11 Non-Text Contrast)

**Limitations:**
- Light mode: C ≤ 0.12 for all text colors
- Dark mode: C ≤ 0.10 for all text colors

**Relationships:**
- **With contrast [8.2]**: Minimum contrast 4.5:1 for normal text, 3:1 for large text (≥18pt or ≥14pt bold)
  - *Example*: Text `oklch(20% 0.05 0)` on background `oklch(98% 0.02 0)` = contrast 7.5:1 ✅
  - *Example*: Text `oklch(95% 0.02 0)` on background `oklch(10% 0 0)` = contrast 12.6:1 ✅
- **With font size [2.1]**: Size affects contrast requirements
  - Large text (≥18pt) requires 3:1 contrast instead of 4.5:1
  - *Example*: Heading 24px can have 3:1 contrast, body 16px requires 4.5:1
- **With hierarchy**: Use variations of lightness/opacity of one base color instead of many gray shades

### 1.4. Links

#### 1.4.1. Light Mode:
- Link default: `oklch(__% __ __)` - L: 40-60%, C: 0.15-0.40, hue: `______`
- Link hover: `oklch(__% __ __)` - decrease lightness by 10-20%
- Link active: `oklch(__% __ __)` - decrease lightness by 20-30%
- Link visited: `oklch(__% __ __)` - different hue for visual distinction, maintain contrast minimum 4.5:1
- Link focus: `oklch(__% __ __)` - contrast minimum 4.5:1 with background for outline

#### 1.4.2. Dark Mode:
- Link default: `oklch(__% __ __)` - L: 70-90%, C: 0.12-0.35, hue from light mode
- Link hover: `oklch(__% __ __)` - compared to light mode, decrease lightness by 10-20%, chroma decreased by 0.05-0.10
- Link active: `oklch(__% __ __)` - compared to light mode, increase lightness by 20-30%, chroma decreased by 0.05-0.10
- Link visited: `oklch(__% __ __)` - compared to light mode, increase lightness by 20-30%, chroma decreased by 0.05-0.10, maintain contrast minimum 4.5:1
- Link focus: `oklch(__% __ __)` - compared to light mode, increase lightness by 20-30%, chroma decreased by 0.05-0.10

**Recommendations:**
- **Default**: Color should differ from regular text, contrast minimum 4.5:1 with background (WCAG AA). For large text (≥18pt or ≥14pt bold) minimum 3:1
- **Hover**: Change lightness by 10-20% darker (light mode) or lighter (dark mode). Maintain contrast minimum 4.5:1
- **Active**: More pronounced change in lightness by 20-30%. Maintain contrast minimum 4.5:1
- **Visited**: Visually different from unvisited (different hue or reduced saturation). Contrast minimum 4.5:1 with background (WCAG AA)
- **Dark mode**: Preserve the same hue, increase lightness by +20-30%, decrease chroma by 0.05-0.10

**Relationships:**
- **With adaptation rules [1.5]**: Apply the same adaptation rules for dark mode (L +20-30%, C -0.05-0.10, preserve hue)
- **With transitions [5.1]**: Transition duration 200ms for smooth color change
  - *Example*: `transition: color 200ms ease`
- **With focus states [8.1]**: Focus state must be a visible indicator with contrast minimum 3:1
  - *Example*: `outline: 2px solid oklch(50% 0.25 250); outline-offset: 2px`
- **With accent colors [1.1]**: Links use the same rules as accent colors

### 1.5. Dark Mode Adaptation Rules

**Main rules:**
- ✅ **Not just inverting colors** - special adaptation required
- ✅ **Preserve Hue** - to maintain brand identity
- ✅ **Increase Lightness** by **+20-30%** compared to light mode
- ✅ **Decrease Chroma** by **0.05-0.10** compared to light mode
- ✅ **Use dark grays, not pure black** backgrounds
- ✅ **Maintain** contrast requirements [8.2]

**Adaptation example:**
```css
/* Light mode */
--color-primary: oklch(50% 0.25 250);

/* Dark mode */
--color-primary: oklch(75% 0.18 250);
/* Hue: 250 (preserved) */
/* Chroma: 0.25 → 0.18 (decreased by 0.07) */
/* Lightness: 50% → 75% (increased by 25%) */
```

**Recommendations:**
- **Backgrounds**: Light mode L: 90-100% → Dark mode L: 7-15%
- **Text**: Light mode L: 15-30% → Dark mode L: 85-100%
- **Accents**: Light mode L: 40-60% → Dark mode L: 70-90% (+20-30%)
- **Chroma**: Light mode C: 0.15-0.40 → Dark mode C: 0.12-0.35 (-0.05-0.10)

**Limitations:**
- Avoid changing hue during adaptation (violates brand identity)
- Avoid very dark (L < 60%) or very saturated (C > 0.35) accents in dark mode
- Avoid pure black backgrounds `oklch(0% 0 0)` and pure white text `oklch(100% 0 0)`

**Relationships:**
- **With contrast [8.2]**: All contrast requirements must be met in both modes
- **With accent colors [1.1]**: Apply adaptation rules to all accent colors
- **With background [1.2]**: Backgrounds adapt with reduced saturation (C ≤ 0.06 in dark mode)
- **With text [1.3]**: Text adapts with reduced saturation (C ≤ 0.10 in dark mode)

---

## 2. Typography

### 2.1. Font Sizes

- H1 size: `______`rem - 2.5rem - 4rem
- H2 size: `______`rem - 2rem - 3rem
- H3 size: `______`rem - 1.5rem - 2.25rem
- H4 size: `______`rem - 1.25rem - 1.875rem
- Body size: `______`rem - 0.875rem - 1.125rem
- Small size: `______`rem - 0.75rem - 0.875rem
- Tiny size: `______`rem - 0.625rem - 0.75rem

**Recommendations:**
- **Base body size**: 1rem (16px) - minimum 14px for readability. 16px prevents automatic zoom on iOS when focusing on input and provides better readability for most users
- **Modular scale**: 1.25 (Major Third) - balance between hierarchy and consistency. Popular ratios: 1.2 (Minor Third), 1.25 (Major Third), 1.333 (Perfect Fourth), 1.5 (Perfect Fifth)
- **Units**: Use `rem` for font sizes (scalability). `rem` allows users to scale text through browser settings (WCAG 1.4.4 Resize Text). Avoid `px` for typography (except base size in `html { font-size: 16px }`)
- **Fluid typography**: Use `clamp()` for smooth responsive typography. *Example*: `font-size: clamp(1rem, 0.9rem + 0.5vw, 1.125rem)`
- **Font families limitation**: Maximum 2-3 font families for performance

**Relationships:**
- **With breakpoints [7.1]**: Sizes should adapt on different screens
  - *Example*: On mobile H1 can be `clamp(2rem, 4vw, 3rem)`, on desktop `3rem`
- **With weights [2.2]**: Size + weight = hierarchy
  - *Example*: H1 (3rem, 700) vs H2 (2.25rem, 600) create clear hierarchy
- **With line-height [2.3]**: Line-height depends on size
  - *Example*: Larger size (H1) = tighter line-height (1.1-1.2)
  - *Example*: Smaller size (body) = looser line-height (1.5-1.6)

**Limitations:**
- Minimum 14px for body on mobile (16px recommended)
- Maximum 2-3 font families for performance
- Maximum 2-3 font weights (e.g., 400, 600, 700)

### 2.2. Font Weights

- Regular weight: `______` - 400
- Medium weight: `______` - 500-600
- Bold weight: `______` - 700

**Recommendations:**
- **Regular**: 400 (default)
- **Medium**: 500 or 600 - for medium emphasis
- **Bold**: 700 - for headings and emphasis
- **Avoid**: Intermediate weights (300, 500, 800) if not critical for brand. Fewer weights = faster font loading

**Popular weight combinations:**
- Minimal: 400, 700 (regular, bold)
- Standard: 400, 600, 700 (regular, semibold, bold)
- Extended: 400, 500, 600, 700 (regular, medium, semibold, bold)

**Relationships:**
- **With sizes [2.1]**: Size + weight = hierarchy
  - *Example*: H1 (3rem, 700) creates strong emphasis
  - *Example*: Body (1rem, 400) ensures readability
- **With performance**: Fewer weights = faster loading
  - Loading 2 weights (400, 700) is faster than 5 weights (300, 400, 500, 600, 700)
  - *Example*: 2 weights ≈ 50-80KB, 5 weights ≈ 150-250KB

### 2.3. Line-height

- Body line-height: `______` - 1.4 - 1.75
- Heading line-height: `______` - 1.1 - 1.3
- Small text line-height: `______` - 1.4 - 1.6

**Recommendations:**
- **Body text**: 1.5 - ensures comfortable reading of long texts
- **Headings**: 1.25 - tighter line-height for visual compactness
- **Small text**: 1.4-1.6 - larger line-height compensates for small size

**Relationships:**
- **With sizes [2.1]**: Larger size = tighter line-height
  - *Example*: H1 (3rem) → line-height 1.1-1.2 (tight)
  - *Example*: Body (1rem) → line-height 1.5-1.6 (loose)
- **With line length [2.4]**: Line-height affects perception of line length
  - Larger line-height makes long lines more readable
  - *Example*: Line 80ch with line-height 1.5 reads better than with 1.2

**CSS Best Practices:**
- Use unitless values (1.5, not 24px)
- Unitless values scale proportionally with font size

### 2.4. Line Length

- Optimal line length: `______`ch - 45ch - 80ch
- Mobile line length: `______`ch - 45ch - 60ch
- Desktop line length: `______`ch - 65ch - 75ch

**Recommendations:**
- **Optimal length**: 65ch - 50-75 characters. Use `ch` unit (width of "0" character)
- **Responsiveness**: Narrower on mobile (45-60 characters), wider on desktop (65-75ch)

**Relationships:**
- **With containers [4.1]**: Containers should limit width
  - *Example*: `max-width: 65ch` for body content
  - *Example*: Narrow container ensures optimal line length
- **With line-height [2.3]**: Affects readability perception
  - Larger line-height allows using longer lines
  - *Example*: With line-height 1.6 can use up to 75ch, with 1.4 better limit to 65ch

**CSS Best Practices:**
- Use `ch` unit for line length (semantically correct)
- `max-width: 65ch` automatically adapts to font size

### 2.5. Letter-spacing

- Heading letter-spacing: `______`em - -0.02em - -0.01em
- Uppercase letter-spacing: `______`em - +0.05em - +0.1em
- Body letter-spacing: `______`em - 0 - +0.01em
- Small text letter-spacing: `______`em - +0.01em - +0.02em

**Recommendations:**
- **Headings**: -0.025em - slight decrease for visual density. Negative letter-spacing makes headings more compact
- **Uppercase text**: +0.05em - increase for readability. Increased spacing compensates for readability loss in uppercase
- **Body text**: 0 - usually default
- **Small text**: +0.01em - slight increase

**Relationships:**
- **With sizes [2.1]**: Larger size = less letter-spacing
  - *Example*: H1 (3rem) can have -0.025em, body (1rem) has 0
- **With weights [2.2]**: Bold may require more spacing
  - *Example*: Bold text may have +0.01em for better readability

**CSS Best Practices:**
- Use `em` unit for letter-spacing (proportional to font size)
- `em` automatically scales with font size

---

## 3. Spacing System

### 3.1. Base Unit

- Base unit: `______`px - 4px - 8px

**Recommendations:**
- **Base unit**: 8px - provides good balance between flexibility and consistency. Can use 4px for finer granularity
- **All spacing**: Should be multiples of base unit
- **CSS custom properties**: Use for tokens

**Relationships:**
- **With spacing scale [3.2]**: All values from scale are multiples of base unit
  - *Example*: 8px base → 0, 8px, 16px, 24px, 32px, 48px, 64px
- **With breakpoints [7.1]**: Spacing adapts on different screens
  - *Example*: Desktop padding 32px → Mobile padding 16px (50% decrease)

**CSS Best Practices:**
- **Units**: Use `rem` for spacing (scalability)
  - 8px = 0.5rem (at base size 16px)
  - `rem` allows users to scale interface through browser settings
- **Alternative**: Can use `px` for precision, but `rem` is preferred
- **Example**: `--spacing-1: 0.5rem` (8px) instead of `--spacing-1: 8px`

### 3.2. Spacing Scale

- XS spacing: `______`rem - 0.25rem (4px)
- S spacing: `______`rem - 0.5rem (8px)
- M spacing: `______`rem - 1rem (16px)
- L spacing: `______`rem - 1.5rem (24px)
- XL spacing: `______`rem - 2rem (32px)
- 2XL spacing: `______`rem - 3rem (48px)
- 3XL spacing: `______`rem - 4rem (64px)
- Spacing between sections: `______`rem - 3rem (48px) - 8rem (128px)
- Spacing within sections: `______`rem - 1rem (16px) - 2rem (32px)

**Recommendations:**
- **Standard scale** (multiples of 8px): 0, 4px, 8px, 16px, 24px, 32px, 48px, 64px, 96px, 128px. Popular values: 8px, 16px, 24px, 32px, 48px, 64px
- **Semantic names**: Use small, medium, large instead of numbers
- **Spacing between sections**: 4rem (64px) - larger than within sections
- **Spacing within sections**: 1.5rem (24px) - smaller than between sections

**Popular spacing values:**
- XS: 4px (0.25rem) - for very small spacing
- S: 8px (0.5rem) - minimum spacing between elements
- M: 16px (1rem) - standard spacing
- L: 24px (1.5rem) - medium spacing
- XL: 32px (2rem) - large spacing
- 2XL: 48px (3rem) - very large spacing
- 3XL: 64px (4rem) - spacing between sections

**Relationships:**
- **With base unit [3.1]**: All values are multiples of base unit
  - *Example*: Base unit 8px → all values: 0, 8px, 16px, 24px, 32px...
- **With containers [4.1]**: Container padding from this scale
  - *Example*: Container padding: 16px (mobile), 24px (tablet), 32px (desktop)
- **With responsiveness [7.2]**: Spacing decreases on mobile (20-30%)
  - *Example*: Desktop 32px → Mobile 24px (25% decrease)

**Limitations:**
- Minimum 8px between interactive elements (touch targets)
- Maximum spacing should be proportional to screen size

### 3.3. Vertical Rhythm

**Recommendations:**
- **Consistent rhythm**: Maintain constant vertical rhythm between blocks
- **Multiple values**: Use multiples of base unit for vertical spacing
- **Hierarchy**: Spacing between sections should be larger than spacing within sections

**Relationships:**
- **With line-height [2.3]**: Vertical rhythm is related to line-height
  - *Example*: If line-height 1.5 (24px for 16px font), spacing should be multiples of 24px or 8px
  - *Example*: Spacing between paragraphs can be 24px (1.5 × line-height)
- **With spacing scale [3.2]**: Uses values from scale
  - *Example*: Spacing between sections 64px, within sections 24px

---

## 4. Containers and Layout

### 4.1. Containers

- Maximum content width: `______`px - 1200px - 1600px
- Narrow container (for text): `______`ch - 60ch - 75ch
- Wide container (for catalog): `______`px - 1200px - 1600px
- Container padding mobile: `______`rem - 1rem (16px) - 1.5rem (24px)
- Container padding tablet: `______`rem - 1.5rem (24px) - 2rem (32px)
- Container padding desktop: `______`rem - 2rem (32px) - 3rem (48px)

**Recommendations:**
- **Flexible containers**: Use `max-width` instead of `width` for flexibility
- **Maximum content width**: 1280px - popular values: 1200px, 1280px, 1400px
- **Narrow container** (for text): 65ch - ensures optimal line length 50-75 characters
- **Wide container** (for catalog): 1400px

**Popular container widths:**
- Mobile: 100% (with padding 16-24px)
- Tablet: 720px - 960px
- Desktop: 1200px - 1400px
- Large desktop: 1400px - 1600px

**Relationships:**
- **With line length [2.4]**: Narrow container ensures optimal line length
  - *Example*: `max-width: 65ch` guarantees 50-75 characters per line
- **With spacing scale [3.2]**: Container padding from spacing scale
  - *Example*: Container padding: 16px (mobile), 24px (tablet), 32px (desktop)
- **With breakpoints [7.1]**: Width adapts on different screens
  - *Example*: Desktop 1280px → Tablet 960px → Mobile 100%

**Limitations:**
- Container padding: 16-24px on mobile, 24-32px on tablet, 32-48px on desktop (multiples of 8px)
- Minimum width: not less than 320px

**CSS Best Practices:**
- **Units**: Use `px` for maximum container width
  - Containers usually have fixed maximum width
  - `px` ensures precision for layouts
- **Alternative**: Can use `rem` for scalability, but `px` is more common

### 4.2. Grid System

**Recommendations:**
- **CSS Grid**: Use for complex layouts
- **Flexbox**: Use for one-dimensional layouts
- **Mobile-first**: Start with one column, add columns on larger screens

**Relationships:**
- **With spacing scale [3.2]**: Gap in grid from spacing scale
  - *Example*: `gap: 1.5rem` (24px) for grid
- **With breakpoints [7.1]**: Number of columns depends on breakpoints
  - *Example*: Mobile 1 column, Tablet 2 columns, Desktop 3-4 columns

---

## 5. Animations and Transitions

### 5.1. Transitions

- Fast duration: `______`ms - 100ms - 150ms
- Standard duration: `______`ms - 200ms
- Slow duration: `______`ms - 300ms - 400ms
- Easing function: `______` - ease, ease-in-out, ease-out

**Recommendations:**
- **Base duration**: 200ms - perceived as instant reaction
- **Easing function**: `ease` - smooth acceleration and deceleration. Popular: `ease`, `ease-in-out`, `ease-out`
- **More complex animations**: 250-300ms
- **Always consider**: `prefers-reduced-motion` (see [section 8.3](#83-reduced-motion))

**Popular durations:**
- Fast (micro-interactions): 100-150ms
- Standard: 200ms
- Slow (complex transitions): 300-400ms
- Maximum: 500ms (longer seems slow)

**Relationships:**
- **Applied to**: Buttons, links, forms, cards, modal windows
- **With animations [5.2]**: Transitions for simple changes, animations for complex
  - *Example*: `transition: color 200ms` for link color change
  - *Example*: `@keyframes fadeIn` for modal window appearance
- **With reduced motion [8.3]**: Transitions should consider reduced motion
  - *Example*: `@media (prefers-reduced-motion: reduce) { transition: none; }`

**Limitations:**
- Minimum: 100ms (faster not perceived)
- Maximum: 500ms (longer seems slow)

**CSS Best Practices:**
- Use `ms` for duration (semantically correct for short intervals)
- Can use `s` for long animations (>1s)

### 5.2. Animations

- Animation duration: `______`ms - 200ms - 500ms
- Long animation duration: `______`ms - 400ms - 500ms

**Recommendations:**
- **Hardware-accelerated**: Use `transform` and `opacity` for smoothness (60fps). Avoid animating `width`, `height`, `top`, `left` (cause reflow)
- **Duration**: 200-300ms - for element appearance
- **Purpose**: Each animation should have a purpose (not decorative)
- **Always consider**: `prefers-reduced-motion`

**Relationships:**
- **With transitions [5.1]**: Animations for complex effects, transitions for simple
  - *Example*: Transition for hover effect, animation for modal window appearance
- **With reduced motion [8.3]**: Animations should be disabled
  - *Example*: `@media (prefers-reduced-motion: reduce) { animation: none; }`

**Limitations:**
- Avoid animations that may cause motion sickness
- Don't animate more than 3-5 elements simultaneously

**CSS Best Practices:**
- Use `transform` and `opacity` (GPU acceleration)
- Avoid animating layout properties (width, height, margin, padding)

---

## 6. Shadows and Effects

### 6.1. Box-shadow

- Small shadow opacity: `______` - 0.05 - 0.1
- Medium shadow opacity: `______` - 0.1
- Large shadow opacity: `______` - 0.15
- Modal shadow opacity: `______` - 0.2 - 0.4
- Dark mode shadow opacity: `______` - 0.3 - 0.5

**Recommendations:**
- **Shadow scale**: Create scale (small, medium, large)
- **Shadows for cards**: 0.1 - light, for creating depth
- **Shadows for modal windows**: 0.3 - more pronounced
- **Dark mode**: 0.4 - lighter shadows (rgba with higher opacity)

**Popular box-shadow values:**
- Small: `0 1px 2px rgba(0, 0, 0, 0.05)`
- Medium: `0 4px 6px rgba(0, 0, 0, 0.1)`
- Large: `0 10px 15px rgba(0, 0, 0, 0.1)`
- XL: `0 20px 25px rgba(0, 0, 0, 0.15)`

**Relationships:**
- **With background [1.2]**: Shadows must be visible on background
  - *Example*: On light background `hsl(0, 0%, 100%)` shadow `rgba(0, 0, 0, 0.1)` is well visible
  - *Example*: On dark background `hsl(222, 47%, 11%)` shadow `rgba(0, 0, 0, 0.3)` is more pronounced
- **With transitions [5.1]**: Shadows can animate on hover
  - *Example*: `transition: box-shadow 200ms ease`

**Limitations:**
- Avoid too dark shadows (not more than 0.3-0.4 opacity)
- Don't use shadows everywhere - only for creating hierarchy

**CSS Best Practices:**
- Use `rgba()` for shadows (transparency)
- Can use `hsla()` for colored shadows

### 6.2. Text-shadow

**Recommendations:**
- **Minimal use**: Only for text readability on images
- **Light shadows**: For headings on complex backgrounds
  - Range: `0 1px 2px rgba(0, 0, 0, 0.1)` - `0 2px 4px rgba(0, 0, 0, 0.2)`

**Relationships:**
- **With text [1.3]**: Improves text readability on images
- **With contrast [8.2]**: Doesn't replace sufficient contrast
  - Text-shadow is an additional tool, not a replacement for contrast

### 6.3. Blur Effects

- Backdrop blur: `______`px - 4px - 12px
- Overlay blur: `______`px - 2px - 6px

**Recommendations:**
- **Backdrop blur**: 8px - for modal windows
- **Blur for overlay**: 4px
- **Use**: `backdrop-filter` for modern browsers

**Relationships:**
- **With transitions [5.1]**: Blur can animate
- **With performance**: Use moderately (may affect performance)

**Limitations:**
- Check performance on weak devices
- Provide fallback for old browsers

**CSS Best Practices:**
- Use `px` for blur (fixed value)
- Check `backdrop-filter` support (may require `-webkit-` prefix)

---

## 7. Responsiveness

### 7.1. Breakpoints

- Breakpoint sm: `______`px - 640px
- Breakpoint md: `______`px - 768px
- Breakpoint lg: `______`px - 1024px
- Breakpoint xl: `______`px - 1280px
- Breakpoint 2xl: `______`px - 1536px

**Recommendations:**
- **Mobile-first**: Design first for mobile
- **Standard breakpoints**: Mobile up to 768px, Tablet 769px - 1024px, Desktop from 1025px, Large desktop from 1280px
- **Use**: `min-width` media queries (not `max-width`)

**Relationships:**
- **With all sections**: All settings should adapt
- **With typography [2.1]**: Typography scales
  - *Example*: `clamp(1rem, 0.9rem + 0.5vw, 1.125rem)` adapts automatically
- **With spacing [3.2]**: Spacing decreases on mobile
  - *Example*: Desktop 32px → Mobile 24px

**CSS Best Practices:**
- Use `px` for breakpoints (standard practice)
- Define breakpoints in CSS custom properties for reuse
- *Example*: `--breakpoint-md: 768px`

### 7.2. Responsive Changes

**Recommendations:**
- **Typography**: Use `clamp()` for smooth scaling
- **Spacing**: Decrease by 20-30% on mobile
  - Decrease range: 20% - 40% (recommended 25-30%)
- **Containers**: Padding decreases on mobile
- **Grid/Flexbox**: Number of columns adapts

**Relationships:**
- **With typography [2.1]**: Fluid typography
  - *Example*: `font-size: clamp(1rem, 0.9rem + 0.5vw, 1.125rem)`
- **With spacing [3.2]**: Responsive spacing
  - *Example*: Desktop 32px → Mobile 24px (25% decrease)
- **With containers [4.1]**: Responsive containers
  - *Example*: Desktop max-width 1280px → Mobile 100% with padding

**Limitations:**
- Minimum touch target sizes: 44×44px (don't decrease on mobile)
- Minimum font size: 14px on mobile (16px recommended)

---

## 8. Accessibility

### 8.1. Focus States

- Outline thickness: `______`px - 2px - 4px
- Outline offset: `______`px - 2px - 4px

**Recommendations:**
- **Required**: For all interactive elements (WCAG 2.4.7 Focus Visible)
- **Visible and contrasting**: On any background, contrast minimum 3:1 with background (WCAG 1.4.11 Non-Text Contrast)
- **Parameters**: Thickness 2-3px, offset 2-4px, style solid
- **Don't use**: `outline: none` without alternative

**Relationships:**
- **With links [1.4]**: Links must have focus state
- **With contrast [8.2]**: Focus indicator must have sufficient contrast (minimum 3:1)
  - *Example*: Focus outline `hsl(210, 100%, 40%)` on background `hsl(0, 0%, 100%)` = contrast 4.5:1 ✅

**Limitations:**
- Minimum contrast for focus indicator: 3:1
- Always visible, even on complex backgrounds

**CSS Best Practices:**
- Use `px` for thickness and offset (fixed values)
- Use `:focus-visible` instead of `:focus` (only for keyboard navigation)

### 8.2. Contrast

**Recommendations:**
- **For contrast calculation** can use online calculator (e.g., https://webaim.org/resources/contrastchecker/)
- **For text color scheme determination** can use online generator (e.g., https://colorscheme.ru/)
- **WCAG 2.2 AA minimum (1.4.3 Contrast Minimum)**:
  - Normal text: 4.5:1
  - Large text (≥18pt or ≥14pt bold): 3:1
- **WCAG AAA recommended (1.4.6 Contrast Enhanced)**:
  - Normal text: 7:1
  - Large text: 4.5:1
- **WCAG 1.4.11 Non-Text Contrast (Level AA)**:
  - UI components (buttons, forms, icons): Minimum 3:1 with adjacent colors
  - Graphical objects (parts of charts, diagrams): Minimum 3:1
  - Focus indicators: Minimum 3:1 with background

**Relationships:**
- **With background [1.2] and text [1.3]**: Contrast between background and text
  - *Example*: Background `hsl(0, 0%, 100%)` + text `hsl(222, 47%, 11%)` = 15.8:1 (excellent)
  - *Example*: Background `hsl(222, 47%, 11%)` + text `hsl(210, 40%, 96%)` = 12.6:1 (excellent)
- **With links [1.4]**: Links must have sufficient contrast
- **With focus states [8.1]**: Focus indicators must be contrasting

**Limitations:**
- Test all color combinations with contrast tools
- Don't rely only on color to convey information

### 8.3. Reduced Motion

**Recommendations:**
- **Always consider**: `@media (prefers-reduced-motion: reduce)` - required for accessibility (WCAG 2.3.3 Animation from Interactions)
- **Disable or simplify**: Animations for users with motion sensitivity. Provide mechanism to disable animations, except when animation is necessary for functionality
- **Preserve functionality**: Without animations - all functions must work without animations

**Relationships:**
- **With transitions [5.1]**: Transitions should consider reduced motion
  - *Example*: `@media (prefers-reduced-motion: reduce) { transition: none; }`
- **With animations [5.2]**: Animations should be disabled
  - *Example*: `@media (prefers-reduced-motion: reduce) { animation: none; }`

**Limitations:**
- Required for accessibility
- Don't use only animation to convey important information

### 8.4. Touch Targets

- Minimum touch target size: `______`px - 44px
- Spacing between touch targets: `______`px - 8px

**Recommendations:**
- **Minimum**: 44×44px for all interactive elements (iOS HIG, WCAG 2.5.5 Target Size). Android Material recommends 48×48dp
- **Spacing between elements**: Minimum 8px to prevent accidental taps
- **WCAG 2.5.5 Target Size (Level AAA)**: Recommended minimum 44×44px for all interactive elements, except when element is in text line or its size is controlled by user

**Relationships:**
- **With spacing [3.2]**: Spacing between touch targets
  - *Example*: Minimum 8px between buttons
- **With responsiveness [7.2]**: Sizes don't decrease on mobile
  - *Example*: Button always minimum 44×44px, even on small screens

**Limitations:**
- Don't decrease sizes on mobile devices
- Increase padding for small elements

**CSS Best Practices:**
- Use `px` for touch target sizes (fixed values)
- Can use `min-height` and `min-width` to ensure minimum sizes

---

## 9. Notes📝

- All values should be documented in CSS custom properties
- Specific settings for components are described in separate files
- When changing base settings, check impact on all components
- Regularly test accessibility and contrast
- Update this template when adding new system settings

### When to use `rem`:
- ✅ Font sizes (font-size)
- ✅ Spacing (margin, padding) - for scalability
- ✅ Line-height (unitless values preferred)
- ✅ Letter-spacing (em preferred, but rem also works)

### When to use `px`:
- ✅ Breakpoints (media queries)
- ✅ Maximum container width
- ✅ Border thickness, outline
- ✅ Touch target sizes
- ✅ Blur effects
- ✅ Box-shadow values (offset, blur radius)

### When to use `ch`:
- ✅ Line length (max-width for text containers)

### When to use `em`:
- ✅ Letter-spacing (proportional to font size)
- ✅ Spacing within components (proportional to font size)

### When to use `%`:
- ✅ Width in flex/grid layouts
- ✅ Opacity (opacity) - but better to use unitless values 0-1

### When to use `ms`:
- ✅ Duration of transitions and animations
