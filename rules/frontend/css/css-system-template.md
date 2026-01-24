# Design System Base Settings Template

Generate a separate CSS settings file for each project based on this template.

> **Purpose**: This file describes the base design system settings that apply to the entire site. Specific settings for individual components or pages should be described in separate files and reference this template.

> **Reference**: This template is a checklist of:
- [Color System](../webdesign/visual/color-system.mdc) rules.
- [Typography](../webdesign/visual/typography.mdc) rules.
- [Visual Hierarchy](../webdesign/visual/visual-hierarchy.mdc) rules.
- [Responsive Design](../webdesign/layout/responsive-design.mdc) rules.

## 📋 Table of Contents

1. Color System
    - Accent Colors
      - [Primary Accent](#111-primary-accent)
      - [Secondary Accent](#112-secondary-accent)
      - [Status Colors](#113-status-colors)
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

### Color palette:

#### Light mode🌞
- oklch(`__% __ __`)
- oklch(`__% __ __`)
- oklch(`__% __ __`)
- oklch(`__% __ __`)
- oklch(`__% __ __`)

#### Dark mode🌑
- oklch(`__% __ __`)
- oklch(`__% __ __`)
- oklch(`__% __ __`)
- oklch(`__% __ __`)
- oklch(`__% __ __`)

### 1.1. Accent Colors

**Group constraints:**
- 🔍 **Contrast [8.2]**: Minimum 4.5:1+
- ⚡ **Transitions [5.1]**: Use for state changes (hover, active, focus)
- 🌙 **Dark mode adaptation [1.5]**: L +20-30%, C -0.05-0.10
- 👁️ **Distinguishability**: Status colors must be distinguishable from accents and each other
- 🎨 **Visual coherence**: Accents relate to each other, independent from status colors

---

#### 1.1.1. Primary Accent

- **Application:** primary buttons, active links, interactive elements, important elements

#### Light Mode🌞
- Primary accent: oklch(`__% __ __`), can use oklch(50% 0.25 hue)
  - L: 40-60%, `background_primary_light - 38–58%`
  - C: 0.15-0.40
  - H: determined by brand
  - Contrast: 4.5:1+ with `background_primary_light`
- Hover: oklch(`__% __ __`)
  - L: `= primary_accent_light - 10–20%`
  - C: `= primary_accent_light`
  - H: `= primary_accent_light`
  - Contrast: 4.5:1+ with `background_primary_light`
- Active: oklch(`__% __ __`)
  - L: `= primary_accent_light - 20–30%`
  - C: `= primary_accent_light`
  - H: `= primary_accent_light`
  - Contrast: 4.5:1+ with `background_primary_light`
- Focus: oklch(`__% __ __`)
  - L: `= primary_accent_light - 5–10%`
  - C: `= primary_accent_light`
  - H: `= primary_accent_light`
  - Contrast: 4.5:1+ with `background_primary_light`
- Disabled: oklch(`__% __ __`)
  - L: `= primary_accent_light`
  - C: `= primary_accent_light - 0.05–0.10`
  - H: `= primary_accent_light`
  - Contrast: 4.5:1+ with `background_primary_light`
- Selected: oklch(`__% __ __`)
  - L: `= primary_accent_light - 10–20%`
  - C: `= primary_accent_light`
  - H: `= primary_accent_light`
  - Contrast: 4.5:1+ with `background_primary_light`

#### Dark Mode🌑
- Primary accent: oklch(`__% __ __`), can use oklch(75% 0.18 hue)
  - L: 70-90%, `primary_accent_light + 20–30%` or `background_primary_dark + 60–80%`
  - C: 0.12-0.35, `primary_accent_light - 0.05–0.10`
  - H: `= primary_accent_light`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Hover: oklch(`__% __ __`)
  - L: `= primary_accent_dark + 10–20%`
  - C: `= primary_accent_dark`
  - H: `= primary_accent_dark`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Active: oklch(`__% __ __`)
  - L: `= primary_accent_dark + 20–30%`
  - C: `= primary_accent_dark`
  - H: `= primary_accent_dark`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Focus: oklch(`__% __ __`)
  - L: `= primary_accent_dark - 10–15%`
  - C: `= primary_accent_dark - 0.03–0.05`
  - H: `= primary_accent_dark`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Disabled: oklch(`__% __ __`)
  - L: `= primary_accent_dark`
  - C: `= primary_accent_dark - 0.05–0.10`
  - H: `= primary_accent_dark`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Selected: oklch(`__% __ __`)
  - L: `= primary_accent_dark + 10–20%`
  - C: `= primary_accent_dark`
  - H: `= primary_accent_dark`
  - Contrast: 4.5:1+ with `background_primary_dark`

#### 1.1.2. Secondary Accent

- **Application:** secondary buttons, less important elements
- Secondary accent should be less prominent than primary.

#### Light Mode🌞
- Secondary accent: oklch(`__% __ __`), can use oklch(60% 0.20 hue)
  - L: 50-70%, `accent_primary_light + 5–15%` or `background_primary_light - 28–48%`
  - C: 0.12-0.35, `accent_primary_light - 0.02–0.05`
  - H: determined by brand, typically related to `accent_primary_light`
  - Contrast: 4.5:1+ with `background_primary_light`
- Hover: oklch(`__% __ __`)
  - L: `= secondary_accent_light - 10–20%`
  - C: `= secondary_accent_light`
  - H: `= secondary_accent_light`
- Active: oklch(`__% __ __`)
  - L: `= secondary_accent_light - 20–30%`
  - C: `= secondary_accent_light`
  - H: `= secondary_accent_light`
- Focus: oklch(`__% __ __`)
  - L: `= secondary_accent_light - 5–10%`
  - C: `= secondary_accent_light`
  - H: `= secondary_accent_light`
- Disabled: oklch(`__% __ __`)
  - L: `= secondary_accent_light`
  - C: `= secondary_accent_light - 0.05–0.10`
  - H: `= secondary_accent_light`
- Selected: oklch(`__% __ __`)
  - L: `= secondary_accent_light - 10–20%`
  - C: `= secondary_accent_light`
  - H: `= secondary_accent_light`

#### Dark Mode🌑
- Secondary accent: oklch(`__% __ __`), can use oklch(65% 0.15 hue)
  - L: 60-80%, `secondary_accent_light + 20–30%` or `accent_primary_dark - 5–15%`
  - C: 0.10-0.30, `secondary_accent_light - 0.05–0.10`
  - H: `= secondary_accent_light`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Hover: oklch(`__% __ __`)
  - L: `= secondary_accent_dark + 10–20%`
  - C: `= secondary_accent_dark`
  - H: `= secondary_accent_dark`
- Active: oklch(`__% __ __`)
  - L: `= secondary_accent_dark + 20–30%`
  - C: `= secondary_accent_dark`
  - H: `= secondary_accent_dark`
- Focus: oklch(`__% __ __`)
  - L: `= secondary_accent_dark - 10–15%`
  - C: `= secondary_accent_dark - 0.03–0.05`
  - H: `= secondary_accent_dark`
- Disabled: oklch(`__% __ __`)
  - L: `= secondary_accent_dark`
  - C: `= secondary_accent_dark - 0.05–0.10`
  - H: `= secondary_accent_dark`
- Selected: oklch(`__% __ __`)
  - L: `= secondary_accent_dark + 10–20%`
  - C: `= secondary_accent_dark`
  - H: `= secondary_accent_dark`

#### 1.1.3. Status Colors

- **Application:** success messages, error messages, warning messages, completed states, destructive actions, critical alerts
- **Warning colors** may require darker text or border for sufficient contrast due to higher lightness.
- **Error colors** require higher saturation (C) than success for immediate attention and urgency perception.

#### Light Mode🌞
- Success: oklch(`__% __ __`), can use oklch(55% 0.30 150)
  - L: 50-65%, `= background_primary_light - 33–48%`
  - C: 0.20-0.30
  - H: 140-160
  - Contrast: 4.5:1+ with `background_primary_light`
- Error: oklch(`__% __ __`), can use oklch(50% 0.35 25)
  - L: 45-60%, `= background_primary_light - 38–53%`
  - C: 0.30-0.40
  - H: 0-30 (red range for semantic meaning, includes 330–360° for red-purple)
  - Contrast: 4.5:1+ with `background_primary_light`
- Warning: oklch(`__% __ __`), can use oklch(70% 0.35 75)
  - L: 60-75%, `= background_primary_light - 23–38%`
  - C: 0.30-0.40
  - H: 60-90
  - Contrast: 4.5:1+ with `background_primary_light`

#### Dark Mode🌑
- Success: oklch(`__% __ __`), can use oklch(70% 0.22 150)
  - L: 65-80%, `= status_success_light + 15–20%` or `= background_primary_dark + 55–70%`
  - C: 0.15-0.25, `= status_success_light - 0.05–0.10`
  - H: 140-160, `= status_success_light`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Error: oklch(`__% __ __`), can use oklch(65% 0.28 25)
  - L: 60-75%, `= status_error_light + 15–20%` or `= background_primary_dark + 50–65%`
  - C: 0.20-0.30, `= status_error_light - 0.05–0.10`
  - H: 0-30, `= status_error_light`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Warning: oklch(`__% __ __`), can use oklch(75% 0.28 75)
  - L: 70-85%, `= status_warning_light + 5–15%` or `= background_primary_dark + 60–75%`
  - C: 0.20-0.30, `= status_warning_light - 0.05–0.10`
  - H: 60-90, `= status_warning_light`
  - Contrast: 4.5:1+ with `background_primary_dark`

### 1.2. Backgrounds and Surfaces

**Group constraints:**
- 🔍 **Contrast [8.2]**: Text 4.5:1+, UI components 3:1+
- 🌙 **Dark mode adaptation [1.5]**: Light L: 90-99% → Dark L: 7-15%, C ≤ 0.06
- 🔗 **Text compatibility [1.3]**: Test against all text variants (primary, secondary, hints)

---

#### 1.2.1. Primary Background

- **Application:** main page background, base surface

#### Light Mode🌞
- Primary background: oklch(`__% __ __`), can use oklch(98% 0.02 0)
  - L: 90-99%
  - C: 0-0.08

#### Dark Mode🌑
- Primary background: oklch(`__% __ __`), can use oklch(10% 0 0) or oklch(12% 0.03 250)
  - L: 7-15%
  - C: 0-0.06

#### 1.2.2. Secondary Surfaces

- **Application:** cards, panels, content areas

#### Light Mode🌞
- Secondary surface: oklch(`__% __ __`)
  - L: 80-90%, `= background_primary_light - 10–20%`
  - C: 0-0.08, `= background_primary_light`

#### Dark Mode🌑
- Secondary surface: oklch(`__% __ __`)
  - L: 15-25%, `= background_primary_dark + 5–10%`
  - C: 0-0.06, `= background_primary_dark`

#### 1.2.3. Elevation Surfaces

- **Application:** modal windows, dropdown menus, tooltips

#### Light Mode🌞
- Elevated surface: oklch(`__% __ __`)
  - L: 70-80%, `= surface_secondary_light - 10–20%` or `= background_primary_light - 20–30%`
  - C: 0-0.08, `= background_primary_light`

#### Dark Mode🌑
- Elevated surface: oklch(`__% __ __`)
  - L: 20-40%, `= surface_secondary_dark + 5–15%` or `= background_primary_dark + 10–30%`
  - C: 0-0.06, `= background_primary_dark`

### 1.3. Text and Typography

**Group constraints:**
- 🔍 **Contrast [8.2]**: Normal text 4.5:1+, recommended 7:1
- 🌙 **Dark mode adaptation [1.5]**: Light mode L: 15-30% → Dark mode L: 85-99%
- 🔗 **Background compatibility [1.2]**: Test against all surfaces (primary, secondary, elevated)

---

#### 1.3.1. Primary Text

- **Application:** main content, headings, important text

#### Light Mode🌞
- Primary text: oklch(`__% __ __`), can use oklch(20% 0.05 0) for 4.5:1 or oklch(15% 0 0) for 7:1
  - L: 15-30%, `= background_primary_light - 60–75%`
  - C: 0-0.12
  - Contrast: 7:1 (4.5:1+) with `background_primary_light`

#### Dark Mode🌑
- Primary text: oklch(`__% __ __`), can use oklch(95% 0.02 0) for 7:1 or oklch(90% 0 0) for 4.5:1
  - L: 85-99%, `background_primary_dark + 70–90%`
  - C: 0-0.10
  - Contrast: 7:1 (4.5:1+) with `background_primary_dark`

#### 1.3.2. Secondary Text

- **Application:** captions, metadata, non-primary content

#### Light Mode🌞
- Secondary text: oklch(`__% __ __`)
  - L: 20-35%, `= text_primary_light + 5–10%`
  - C: 0-0.12, `= text_primary_light`
  - Contrast: 4.5:1+ with `background_primary_light`

#### Dark Mode🌑
- Secondary text: oklch(`__% __ __`), can use oklch(80% 0.05 0)
  - L: 75-90%, `= text_primary_dark - 5–15%`
  - C: 0-0.10
  - Contrast: 4.5:1+ with `background_primary_dark`

#### 1.3.3. Hints and Disabled Text

- **Application:** placeholder text, disabled states, hints

#### Light Mode🌞
- Hints: oklch(`__% __ __`), can use oklch(40% 0.08 0)
  - L: 35-50%, `= text_secondary_light + 10–20%`
  - C: 0-0.12, `= text_primary_light`
  - Contrast: 3:1+ (for large text) with `background_primary_light`

#### Dark Mode🌑
- Hints: oklch(`__% __ __`), can use oklch(60% 0.05 0)
  - L: 50-70%, `= text_secondary_dark - 15–25%`
  - C: 0-0.10
  - Contrast: 3:1+ (for large text) with `background_primary_dark`

#### 1.3.4. Dividers

- **Application:** borders, separators, dividers

#### Light Mode🌞
- Divider: oklch(`__% __ __`)
  - L: 10-18%, `= background_primary_light - 80–88%`
  - C: 0
  - Contrast: 3:1+ with `background_primary_light`

#### Dark Mode🌑
- Divider: oklch(`__% __ __`)
  - L: 12-22%, `= background_primary_dark + 2–12%`
  - C: 0
  - Contrast: 3:1+ with `background_primary_dark`

### 1.4. Links

**Group constraints:**
- 🔍 **Contrast [8.2]**: Minimum 4.5:1+
- ⚡ **Transitions [5.1]**: 200-300ms for state changes
- 🌙 **Dark mode adaptation [1.5]**: L +20-30%, C -0.05-0.10
- 👁️ **Focus states [8.1]**: Outline 2-4px, contrast 3:1+

---

- **Application:** text links, navigation links
- Links typically use accent colors. All state variations are relative to base link color.

#### Light Mode🌞
- Link default: oklch(`__% __ __`), typically `= accent_primary_light`
  - L: 40-60%, `= background_primary_light - 38–58%`
  - C: 0.15-0.40
  - Contrast: 4.5:1+ with `background_primary_light`
- Link hover: oklch(`__% __ __`)
  - L: `= link_default_light - 10–20%`
  - C: `= link_default_light`
  - H: `= link_default_light`
- Link active: oklch(`__% __ __`)
  - L: `= link_default_light - 20–30%`
  - C: `= link_default_light`
  - H: `= link_default_light`
- Link visited: oklch(`__% __ __`)
  - L: `= link_default_light`
  - C: `= link_default_light - 0.05–0.10`
  - H: `= link_default` or shift to tertiary accent color
- Link focus: oklch(`__% __ __`)
  - L: `= link_default_light - 5–10%`
  - C: `= link_default_light`
  - H: `= link_default_light`

#### Dark Mode🌑
- Link default: oklch(`__% __ __`), typically `= accent_primary_dark`
  - L: 70-90%, `= link_default_light + 20–30%` or `= background_primary_dark + 60–80%`
  - C: 0.12-0.35, `= link_default_light - 0.05–0.10`
  - Contrast: 4.5:1+ with `background_primary_dark`
- Link hover: oklch(`__% __ __`)
  - L: `= link_default_dark + 10–20%`
  - C: `= link_default_dark`
  - H: `= link_default_dark`
- Link active: oklch(`__% __ __`)
  - L: `= link_default_dark + 20–30%`
  - C: `= link_default_dark`
  - H: `= link_default_dark`
- Link visited: oklch(`__% __ __`)
  - L: `= link_default_dark`
  - C: `= link_default_dark - 0.03–0.05`
  - H: `= link_default_dark`
- Link focus: oklch(`__% __ __`)
  - L: `= link_default_dark - 10–15%`
  - C: `= link_default_dark - 0.03–0.05`
  - H: `= link_default_dark`

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

---

## 2. Typography

> **Important**: Use **rem** units for font sizes (scalability). `rem` allows users to scale text through browser settings (WCAG 1.4.4 Resize Text). Avoid `px` for typography (except base size in `html { font-size: 16px }`).

### 2.1. Font Sizes

**Group constraints:**
- 📱 **Breakpoints [7.1]**: Sizes should adapt on different screens
- 📐 **Responsiveness [7.2]**: Use clamp() or media queries
- ⚡ **Performance [2.5]**: Limit font families and weights
- ♿ **Accessibility [8.2]**: Minimum 14px (16px recommended)
- 📏 **Line-height dependency [2.3]**: Larger sizes → tighter (1.1-1.2), smaller → looser (1.5-1.6)
- ⚖️ **Weight dependency [2.2]**: Size + weight = hierarchy

---

- **Application:** headings, body text, captions, labels
- **Hierarchy:** H1 > H2 > H3 > H4 > Body > Small > Tiny

- H1: `______`rem, can use `3rem`
  - Range: `2.5rem` - `4rem`
  - Use: page titles, main headings
- H2: `______`rem
  - Range: `2rem` - `3rem`
  - Use: section headings
- H3: `______`rem
  - Range: `1.5rem` - `2.25rem`
  - Use: subsection headings
- H4: `______`rem
  - Range: `1.25rem` - `1.875rem`
  - Use: minor headings
- Body: `______`rem, can use `1rem` (16px)
  - Range: `0.875rem` - `1.125rem`
  - Use: main content, paragraphs
- Small: `______`rem
  - Range: `0.75rem` - `0.875rem`
  - Use: captions, labels, metadata
- Tiny: `______`rem
  - Range: `0.625rem` - `0.75rem`
  - Use: fine print, disclaimers

**Recommendations:**
- **Modular scale**: 1.25 (Major Third) - balance between hierarchy and consistency. Popular ratios: 1.2 (Minor Third), 1.25 (Major Third), 1.333 (Perfect Fourth), 1.5 (Perfect Fifth)

### 2.2. Font Weights

**Group constraints:**
- ⚡ **Performance [2.5]**: Limit to 2-3 weights
- 📏 **Size dependency [2.1]**: Size + weight = hierarchy
- ↔️ **Letter-spacing dependency [2.5]**: Bold may need +0.01em

---

- **Application:** headings, emphasis, body text, interactive elements

- Regular weight: `______`, use 400
  - Use: body text, default text
- Medium weight: `______`, use 600
  - Use: medium emphasis, subheadings
- Bold weight: `______`, use 700
  - Use: headings, strong emphasis

### 2.3. Line-height

**Group constraints:**
- 📐 **Responsiveness [7.2]**: May need adjustment on different screens
- 📏 **Size dependency [2.1]**: Larger sizes → 1.1-1.3, smaller → 1.4-1.75
- 📏 **Line length dependency [2.4]**: Larger line-height allows up to 75ch vs 65ch
- 🎵 **Vertical rhythm [3.3]**: Spacing = multiples of line-height

---

- **Application:** body text, headings, small text, long-form content

- Body line-height: `______`, use 1.5
  - Range: 1.4 - 1.75
  - Use: paragraphs, main content
- Heading line-height: `______`, use 1.25
  - Range: 1.1 - 1.3
  - Use: H1, H2, H3, H4
- Small text line-height: `______`, use 1.4
  - Range: 1.4-1.6
  - Use: captions, labels, fine print

**CSS Best Practices:**
- Unitless values scale proportionally with font size

### 2.4. Line Length

**Group constraints:**
- 📐 **Responsiveness [7.2]**: Mobile 45-60ch, desktop 65-75ch
- 📦 **Containers [4.1]**: Narrow containers (65ch) ensure optimal length
- 📏 **Line-height dependency [2.3]**: Larger line-height → up to 75ch, tighter → 65ch
- 📱 **Breakpoints [7.1]**: Adjust at breakpoints

---

- **Application:** body content, articles, long-form text, readable content

- Optimal line length: `______`ch, use 65ch
  - Range: 50-75 ch
  - Use: body content, articles
- Mobile line length: `______`ch, use 50ch
  - Range: 45-60ch
  - Use: mobile devices
- Desktop line length: `______`ch, use 75ch
  - Range: 65-75ch
  - Use: desktop and large screens

**CSS Best Practices:**
- `max-width: 65ch` automatically adapts to font size
- Apply to text containers, not entire page

### 2.5. Letter-spacing

**Group constraints:**
- 📐 **Responsiveness [7.2]**: May need fine-tuning on different screens
- 📏 **Size dependency [2.1]**: Larger sizes → -0.025em to -0.01em, smaller → 0 to +0.02em
- ⚖️ **Weight dependency [2.2]**: Bold may need +0.01em

---

- **Application:** headings, uppercase text, body text, small text

- Heading letter-spacing: `______`em, use -0.025em
  - Range: -0.025em - -0.01em
  - Use: H1, H2, H3, H4
- Uppercase letter-spacing: `______`em, use +0.05em
  - Range: +0.05em - +0.1em
  - Use: uppercase text, labels, buttons
- Body letter-spacing: `______`em, use 0
  - Range: 0 - +0.01em
  - Use: paragraphs, main content
- Small text letter-spacing: `______`em, use +0.01em
  - Range: +0.01em - +0.02em
  - Use: captions, labels, fine print

**CSS Best Practices:**
- Use `em` unit for letter-spacing (proportional to font size)
- `em` automatically scales with font size

---

## 3. Spacing System

**Group constraints:**
- 🔢 **Base unit dependency [3.1]**: Multiples of 4px or 8px
- 👆 **Touch targets [8.4]**: Minimum 8px between elements
- 📏 **Line-height dependency [2.3]**: Spacing = multiples of line-height
- 📐 **Responsiveness [7.2]**: Decrease 20-30% on mobile

---

- **Hierarchy**: Between sections > within sections
- Maximum spacing should be **proportional** to screen size

### 3.1. Base Unit

- Base unit: `______`px, use 8px
  - Range: 4px or 8px

### 3.2. Spacing Scale

- XS spacing: `______`rem, use 0.25rem (4px)
- S spacing: `______`rem, use 0.5rem (8px)
- M spacing: `______`rem, use 1rem (16px)
- L spacing: `______`rem, use 1.5rem (24px)
- XL spacing: `______`rem, use 2rem (32px)
- 2XL spacing: `______`rem, use 3rem (48px)
- 3XL spacing: `______`rem, use 4rem (64px)

- spacing between sections: `______`rem, use 4rem (64px)
  - Range: 3rem (48px) - 8rem (128px)
- spacing within sections: `______`rem, use 1.5rem (24px)
  - Range: 1rem (16px) - 2rem (32px)

### 3.3. Vertical Rhythm

- spacing between sections: `______`rem, use 4rem (64px)
  - Range: 3rem (48px) - 8rem (128px), `= spacing beetween sections [3.2]`
- spacing within sections: `______`rem, use 1.5rem (24px)
  - Range: 1rem (16px) - 2rem (32px), `= spacing within sections [3.2]`
---

## 4. Containers and Layout

### 4.1. Containers

**Group constraints:**
- 📏 **Line length [2.4]**: Narrow containers (65ch) for text
- 📐 **Spacing scale [3.2]**: Padding from spacing scale
- 📱 **Breakpoints [7.1]**: Adapt width and padding at breakpoints
- 📐 **Responsiveness [7.2]**: Mobile 16-24px, desktop 32-48px

---

- Maximum content width: `______`px, use 1280px
  - Range: 1200px - 1600px
- Narrow container (for text): `______`ch, use 65ch
  - Range: 60ch - 75ch, `= optimal line length [2.4]`
- Wide container (for catalog): `______`px, use 1400px
  - Range: 1200px - 1600px
- Container padding mobile: `______`rem 
  - Range: 1rem (16px) - 1.5rem (24px)
- Container padding tablet: `______`rem 
  - Range: 1.5rem (24px) - 2rem (32px)
- Container padding desktop: `______`rem 
  - Range: 2rem (32px) - 3rem (48px)

**Limitations:**
- Minimum width: not less than 320px

**CSS Best Practices:**
- **Units**: Use `px` for maximum container width
  - Containers usually have fixed maximum width
  - `px` ensures precision for layouts
- **Flexible containers**: Use `max-width` instead of `width` for flexibility

### 4.2. Grid System

**Group constraints:**
- 📱 **Breakpoints [7.1]**: Mobile 1, tablet 2, desktop 3-4 columns
- 📐 **Spacing scale [3.2]**: Gap from spacing scale
- 📐 **Responsiveness [7.2]**: Mobile-first approach

---

**Recommendations:**
- **CSS Grid**: Use for complex layouts
- **Flexbox**: Use for one-dimensional layouts

---

## 5. Animations and Transitions

**Group constraints:**
- 🚫 **Reduced motion [8.3]**: Respect `prefers-reduced-motion` (WCAG 2.3.3)

---

- **Application:** Interactive elements with state changes
- **Transitions vs Animations**: Transitions for simple, animations for complex
- **Performance**: Use transform, opacity (60fps), avoid animating layout properties
- **Purpose**: Each animation/transition should have a purpose (not decorative)
- Avoid animations that may cause motion sickness
- Don't animate more than 3-5 elements simultaneously


### 5.1. Transitions

- Fast duration: `______`ms, use 100ms
  - Range: 100ms - 150ms
- Standard duration: `______`ms, use 200ms
  - Range: 200ms - 300ms
- Slow duration: `______`ms, use 300ms
  - Range: 300ms - 500ms
- Easing function: `______`, use ease
  - Range: ease, ease-in-out, ease-out

### 5.2. Animations

- Animation duration: `______`ms, use 200ms
  - Range: 200ms - 500ms
- Long animation duration: `______`ms, use 400ms
  - Range: 400ms - 500ms

---

## 6. Shadows and Effects

### 6.1. Box-shadow

**Group constraints:**
- 🎨 **Background compatibility [1.2]**: Light 0.05-0.15, dark 0.3-0.4
- 🌙 **Dark mode adaptation [1.5]**: Dark mode 0.3-0.4
- ⚡ **Transitions [5.1]**: Use for hover/focus changes

---

- Small shadow opacity: `______`, use 0.05
  - Range: 0.05 - 0.1
- Medium shadow opacity: `______`, use - 0.1
- Large shadow opacity: `______`, use - 0.15
- Modal shadow opacity: `______`, use 0.3
  - Range: 0.2 - 0.4
- Dark mode shadow opacity: `______`, use 0.4
  - Range: 0.3 - 0.4

**Recommendations:**
- **Shadows for cards**: 0.1 - light, for creating depth
- **Don't use shadows everywhere** - only for creating hierarchy


**CSS Best Practices:**
- Use `rgba()` for shadows (transparency)
- Can use `hsla()` for colored shadows

### 6.2. Text-shadow

**Group constraints:**
- 🔍 **Contrast [8.2]**: Supplementary, not replacement for contrast
- 📝 **Text compatibility [1.3]**: For readability on complex backgrounds/images

---

- **Minimal use**: Only for text readability on images
- **Light shadows**: For headings on complex backgrounds
  - Range: `0 1px 2px rgba(0, 0, 0, 0.1)` - `0 2px 4px rgba(0, 0, 0, 0.2)`



### 6.3. Blur Effects

**Group constraints:**
- ⚡ **Transitions [5.1]**: Can animate with transitions
- ⚡ **Performance**: Use moderately, test on lower-end devices
- 🌐 **Browser support**: Check `backdrop-filter` support, provide fallbacks

---

- Backdrop blur: `______`px, use 8px
  - Range: 4px - 12px
- Overlay blur: `______`px, use 4px
  - Range: 2px - 6px

**CSS Best Practices:**
- Use `px` for blur (fixed value)
- Check `backdrop-filter` support (may require `-webkit-` prefix)

---

## 7. Responsiveness

### 7.1. Breakpoints

**Group constraints:**
- 📐 **Responsive changes [7.2]**: Define adaptation points

---

- Breakpoint sm: `______`px, use 640px
- Breakpoint md: `______`px, use 768px
- Breakpoint lg: `______`px, use 1024px
- Breakpoint xl: `______`px, use 1280px
- Breakpoint 2xl: `______`px, use 1536px


**CSS Best Practices:**
- Use `px` for breakpoints (standard practice)
- Use `min-width` media queries (not `max-width`)

### 7.2. Responsive Changes

**Group constraints:**
- 📱 **Breakpoints [7.1]**: Changes occur at defined breakpoints
- 👆 **Touch targets [8.4]**: Sizes don't decrease on mobile
- 📝 **Typography [2.1]**: Use clamp() or media queries
- 📐 **Spacing [3.2]**: Decrease 20-30% on mobile
- 📦 **Containers [4.1]**: Padding decreases on mobile
- 📊 **Grid/Flexbox[4.2]:** Number of columns adapts


## 8. Accessibility

### 8.1. Focus States

**Group constraints:**
- 🔍 **Contrast [8.2]**: Minimum 3:1+ (WCAG 1.4.11)
- 🔗 **Links [1.4]**: Required for all links (WCAG 2.4.7)

---

- **Application:** All interactive elements must have focus indicators

---

- Outline thickness: `______`px 
  - Range: 2px - 4px
- Outline offset: `______`px 
  - Range: 2px - 4px

**CSS Best Practices:**
- Use `px` for thickness and offset (fixed values)
- Use `:focus-visible` instead of `:focus` (only for keyboard navigation)
- **Don't use:** `outline: none` without alternative

### 8.2. Contrast

**Group constraints:**
- 🎨 **Background [1.2] and Text [1.3]**: Text readable on all surfaces
- 🔗 **Links [1.4]**: Minimum 4.5:1+
- 👁️ **Focus states [8.1]**: Minimum 3:1+ (WCAG 1.4.11)

---

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



**Recommendations:**
- **For contrast calculation** can use online calculator (e.g., https://webaim.org/resources/contrastchecker/)
- **For text color scheme determination** can use online generator (e.g., https://colorscheme.ru/)

**Limitations:**
- Test all color combinations with contrast tools
- Don't rely only on color to convey information

### 8.3. Reduced Motion

**Group constraints:**
- ⚡ **Transitions [5.1]**: Respect `prefers-reduced-motion: reduce`
- 🎬 **Animations [5.2]**: Disable when `prefers-reduced-motion: reduce` (WCAG 2.3.3)

---

- **Application:** Don't use only animation to convey important information
- **Functionality**: All features work without animations


### 8.4. Touch Targets

**Group constraints:**
- 📐 **Spacing scale [3.2]**: Minimum 8px between targets
- 📐 **Responsive changes [7.2]**: Sizes don't decrease on mobile (WCAG 2.5.5)

---

- Minimum touch target size: `______`px, use 44px
  - Range: 44px - 48dp
- Spacing between touch targets: `______`px, use 8px
  - Minimum 8px to prevent accidental taps

**CSS Best Practices:**
- Use `px` for touch target sizes (fixed values)
- Can use `min-height` and `min-width` to ensure minimum sizes
- **Padding:** Small elements may need increased padding

---

## 9. Notes📝

⚠️ IMPORTANT: All values should be documented in CSS custom properties

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
