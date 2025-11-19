# Getting Started with wixarikaRt

``` r
library(wixarikaRt)
library(ggplot2)
```

## Introduction

**wixarikaRt** provides color palettes inspired by the Wixarika
(Huichol) people and other Indigenous peoples of Mexico. These palettes
bring the vibrant colors and deep symbolism of Indigenous art to your
data visualizations.

## Quick Start

### View All Palettes

``` r
wixarika_show_all()
```

![](introduction-to-wixarikaRt_files/figure-html/all-palettes-1.png)

### Using a Palette

``` r
# Get a palette
colors <- wixarika_pal("tatewari_warm")
colors
#> [1] "#FBF8F0" "#E68B9B" "#C73E42" "#D84F35" "#E7A45D" "#F0C542"

# Use in base R
barplot(1:6, col = colors, main = "Tatewari Warm")
```

![](introduction-to-wixarikaRt_files/figure-html/basic-usage-1.png)

### With ggplot2

``` r
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3, alpha = 0.8) +
  scale_color_wixarika("muvieri_vivid") +
  theme_minimal() +
  labs(title = "Iris Dataset with Muvieri Vivid Palette")
```

![](introduction-to-wixarikaRt_files/figure-html/ggplot-discrete-1.png)

``` r
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster() +
  scale_fill_wixarika("hikuri_seq", discrete = FALSE) +
  theme_minimal() +
  labs(title = "Old Faithful with Hikuri Sequential Palette")
```

![](introduction-to-wixarikaRt_files/figure-html/ggplot-continuous-1.png)

## Cultural Context

Each palette is inspired by sacred elements of Wixarika culture:

- **Tatewari** (Grandfather Fire): Warm reds and golds
- **Kauyumari** (Deer Spirit): Forest greens and sky blues  
- **Hikuri** (Sacred Peyote): Deep teals to bright yellows
- **Nierika** (Spiritual Portal): Balanced earth and sky tones

``` r
wixarika_pal_info("tatewari_warm")
#> 
#> tatewari_warm
#>   Name: Tatewari Warm
#>   Type: sequential
#>   Description: Inspired by Grandfather Fire, with warm reds, oranges, and golds
```
