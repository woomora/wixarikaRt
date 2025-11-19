# Wixarika Color Scales for ggplot2

Wixarika Color Scales for ggplot2

## Usage

``` r
scale_color_wixarika(name, discrete = TRUE, reverse = FALSE, ...)

scale_colour_wixarika(name, discrete = TRUE, reverse = FALSE, ...)

scale_fill_wixarika(name, discrete = TRUE, reverse = FALSE, ...)
```

## Arguments

- name:

  Name of the palette

- discrete:

  Logical. Use discrete (TRUE) or continuous (FALSE) scale

- reverse:

  Logical. Reverse the palette?

- ...:

  Additional arguments passed to ggplot2 scale functions

## Examples

``` r
if (FALSE) { # \dontrun{
library(ggplot2)

# Discrete color scale
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_wixarika("muvieri_vivid")

# Continuous fill scale
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_wixarika("hikuri_seq", discrete = FALSE)
} # }
```
