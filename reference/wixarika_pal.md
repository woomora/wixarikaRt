# Get a Wixarika Palette

Get a Wixarika Palette

## Usage

``` r
wixarika_pal(name, n = NULL, type = "discrete", reverse = FALSE)
```

## Arguments

- name:

  Name of the palette. Use
  [`wixarika_pal_names()`](https://woomora.github.io/wixarikaRt/reference/wixarika_pal_names.md)
  to see available palettes.

- n:

  Number of colors to return. If NULL, returns all colors in the
  palette.

- type:

  Type of palette: "discrete" or "continuous"

- reverse:

  Logical. Should the palette be reversed?

## Value

A character vector of hex color codes

## Examples

``` r
# Get a complete palette
wixarika_pal("tatewari_warm")
#> [1] "#FBF8F0" "#E68B9B" "#C73E42" "#D84F35" "#E7A45D" "#F0C542"

# Get 3 colors from a palette
wixarika_pal("kauyumari_forestsky", n = 3)
#> [1] "#5A8A6B" "#6B9C85" "#3D7C96"

# Reverse a palette
wixarika_pal("tayau_dawn", reverse = TRUE)
#> [1] "#2E3E58" "#4B5E91" "#8C3B6C" "#D84F35" "#F2B43C" "#FDF4E1"
```
