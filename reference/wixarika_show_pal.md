# Display a Wixarika Palette

Display a Wixarika Palette

## Usage

``` r
wixarika_show_pal(name, n = NULL, reverse = FALSE, ...)
```

## Arguments

- name:

  Name of the palette

- n:

  Number of colors to display. If NULL, shows all colors.

- reverse:

  Logical. Should the palette be reversed?

- ...:

  Additional arguments passed to image()

## Value

NULL (displays a plot)

## Examples

``` r
# Display a palette
wixarika_show_pal("tatewari_warm")


# Display with more colors (interpolated)
wixarika_show_pal("kauyumari_forestsky", n = 20)
```
