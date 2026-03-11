# Landing Page Design — jamardo.xyz

**Date:** 2026-03-11
**Status:** Approved

## Overview

Personal landing page for Agustin Jamardo at `jamardo.xyz`. Bento grid layout, black/white/grey only, minimalist with hover effects. Single static `index.html` + `agus-2.jpg`, no build step, no framework, no JS.

## `<head>` / Meta

```html
<title>Agustin Jamardo</title>
<meta name="description" content="Software Engineer & Rural Developer based in Galicia, Spain.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="og:title" content="Agustin Jamardo">
<meta property="og:description" content="Software Engineer & Rural Developer based in Galicia, Spain.">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700;800;900&display=swap" rel="stylesheet">
```

## Visual Design

- **Palette:** `#0a0a0a`, `#1c1c1c`, `#2a2a2a`, `#e0e0e0`, `#e8e8e8`, `#f4f4f4`, `#fff` — no other colors
- **Typography:** `'Inter', -apple-system, BlinkMacSystemFont, 'Helvetica Neue', sans-serif`
- **Border-radius:** none on any tile — sharp edges
- **Hover transitions:**
  - Photo: `transform: scale(1.07)`, `transition: 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94)`
  - Project tiles: explicit hover background (per-tile below), arrow `color → #111` + `transform: translate(2px, -2px)`, `transition: 0.2s ease`
  - Contact: arrow `transform: translateX(6px)` + `color: #fff`, `transition: 0.2s ease`
  - Nav links: `color → #111`, `transition: 0.2s`

## Navigation

- Container: `background: #fff`, `border-bottom: 1px solid #f0f0f0`, `padding: 18px 28px`, `display: flex`, `justify-content: space-between`, `align-items: center`
- Logo: `font-weight: 800`, `font-size: 15px`, `letter-spacing: -0.5px`, `color: #111`
- Links: `font-size: 11px`, `letter-spacing: 1.5px`, uppercase, `color: #bbb` → `#111` on hover, `gap: 20px`
- All nav links: `target="_blank"`, `text-decoration: none`
  - GitHub → `https://github.com/agustinjch`
  - LinkedIn → `https://linkedin.com/in/ajamardo`
  - Anceu → `https://anceu.com`

## Grid Structure (desktop, ≥ 768px)

```
grid-template-columns: 1.6fr 1fr 1fr
grid-template-rows:    200px 160px 100px
gap:                   2px
background:            #e0e0e0  (gap color)
padding:               2px
```

| Tile | grid-column | grid-row | Background | Hover bg |
|------|-------------|----------|------------|----------|
| Hero | 1 | 1 | #1c1c1c | — (no hover) |
| Photo | 2 | 1 | #2a2a2a | — (scale only) |
| Anceu Coliving | 3 | 1 | #fff | #f7f7f7 |
| About | 1 | 2 | #f4f4f4 | — (no hover) |
| Rural Hackers | 2 | 2 | #e8e8e8 | #e0e0e0 |
| 11 Yellow | 3 | 2 | #fff | #f5f5f5 |
| Contact | 1 / span 2 | 3 | #0a0a0a | #151515 |
| Location | 3 | 3 | #1c1c1c | — (no hover) |

## Mobile (< 768px)

Single column, tiles stacked in order: Hero → Photo → About → Anceu → Rural Hackers → 11 Yellow → Contact → Location.

Heights on mobile: `auto` for all tiles except Photo (`height: 260px`). Tiles use `min-height` where needed to ensure content fits.

## Tile Specs

### Hero — padding: 28px 32px
- Label: `GALICIA, SPAIN` — `9px`, `letter-spacing: 3px`, uppercase, `color: #555`
- Name: `Agustin / Jamardo` (two lines) — `font-size: 44px`, `font-weight: 900`, `letter-spacing: -3px`, `line-height: 0.9`, `color: #fff`
- Sub: `Software Engineer · Rural Developer` — `10px`, `letter-spacing: 1px`, `color: #555`, `margin-top: 14px`
- Layout: `display: flex; flex-direction: column; justify-content: space-between`

### Photo — padding: 0, overflow: hidden
- `<img src="agus-2.jpg" alt="Agustin Jamardo">`
- `width: 100%; height: 100%; object-fit: cover; display: block`
- `filter: grayscale(100%)`
- Scale on hover (see transitions above)
- Tile must have `overflow: hidden` to contain the scaled image

### About — padding: 24px 28px
- Label: `ABOUT` — `9px`, `letter-spacing: 2px`, uppercase, `color: #bbb`
- Text: *"I build software and communities. Tech is my tool, rural Galicia is my playground. From code to coliving — I start projects in the village and make them happen."*
- Text style: `font-size: 13px`, `line-height: 1.65`, `color: #333`, `font-weight: 400`
- Layout: `display: flex; flex-direction: column; justify-content: space-between`

### Project tiles (Anceu, Rural Hackers, 11 Yellow) — padding: 22px

Each tile is a fully clickable `<a>` block link, `target="_blank"`, `text-decoration: none`.
Layout: `display: flex; flex-direction: column; justify-content: space-between; position: relative`

- Top label: `9px`, `letter-spacing: 2px`, uppercase, `color: #bbb`
- Name: `font-size: 16px`, `font-weight: 800`, `letter-spacing: -0.5px`, `line-height: 1.1`, `color: #111`
- Description: `font-size: 10px`, `color: #aaa`, `margin-top: 4px`
- Arrow `↗`: `position: absolute; bottom: 16px; right: 20px`, `font-size: 14px`, default `color: #ddd`, hover `color: #111` + translate

| Tile | Label | Name | Description | URL |
|------|-------|------|-------------|-----|
| Anceu | `COLIVING · 2020` | `Anceu Coliving` | Think globally, act locally, revive rural | https://anceu.com |
| Rural Hackers | `NGO · TECH + ART` | `Rural Hackers` | Technology for rural revival | https://ruralhackers.com |
| 11 Yellow | `WORK · SINCE 2013` | `11 Yellow` | Software lab. High risk, high reward. | https://elevenyellow.com |

### Contact — padding: 0 32px
Full tile is an `<a href="mailto:agustin@anceu.com">` block.
Layout: `display: flex; align-items: center; justify-content: space-between`

- Left: `GET IN TOUCH` — `11px`, `letter-spacing: 3px`, uppercase, `color: #fff`
- Center: `agustin@anceu.com` — `12px`, `letter-spacing: 0.5px`, `color: #444`
- Right: `→` — `font-size: 20px`, default `color: #333`, hover: slides + turns `#fff`

### Location — padding: 22px
- Label: `BASED IN` — `9px`, `letter-spacing: 2px`, uppercase, `color: #444`
- Text: `Anceu village / Galicia, Spain` (two lines) — `13px`, `font-weight: 700`, `color: #666`
- Layout: `display: flex; flex-direction: column; justify-content: center; gap: 4px`

## Deployment

- Repo: `github.com/agustinjch/jamardo-xyz-landing` (new public repo)
- Files in repo root: `index.html`, `agus-2.jpg`
- VPS: `/opt/apps/jamardo-xyz-landing/`
- Docker: Nginx alpine serving static files, port `127.0.0.1:8102:80`
- `docker-compose.yml` with single `web` service
- Host Nginx virtual host: `jamardo.xyz` → `localhost:8102`
- SSL: Certbot (`jamardo.xyz`)
