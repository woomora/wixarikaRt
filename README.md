
# wixarikaRt

**wixarikaRt** provides a collection of color palettes inspired by the
art, culture, and symbolism of the Wixarika (Huichol) people and other
Indigenous peoples of Mexico.

## Installation

You can install the development version of wixarikaRt from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("yourusername/wixarikaRt")
```

## Quick Start

``` r
library(wixarikaRt)

# List all available palettes
wixarika_pal_names()

# Show all palettes
wixarika_show_all()

# Get a specific palette
colors <- wixarika_pal("tatewari_warm")

# Use with ggplot2
library(ggplot2)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_wixarika("muvieri_vivid")
```

## Available Palettes

The package includes 18 carefully crafted palettes:

### Sequential Palettes

- `tatewari_warm` - Warm tones inspired by Grandfather Fire
- `kauyumari_forestsky` - Forest greens and sky blues
- `tayau_dawn` - Dawn colors from Father Sun
- `nakawe_earthnight` - Earth and ocean tones
- `hikuri_teal` - Sacred peyote colors
- `hikuri_seq` - Smooth teal to yellow gradient
- `kiekari_sky_seq` - Sky progression
- `tatewari_embers_seq` - Fire embers

### Diverging Palettes

- `nierika_diverging` - Portal between worlds
- `haramara_tatewari` - Ocean to fire
- `tatewari_spectrum` - Full fire spectrum
- `tsikuri_div_cb` - Colorblind-friendly diverging

### Qualitative Palettes

- `tsikuri_balance` - Balanced ceremonial colors
- `muvieri_vivid` - Vivid ceremonial arrows
- `mapa_lenguas` - Historical language map colors
- `tsikuri_q_cb` - Colorblind-friendly qualitative

### Extended Palettes

- `hikuri_teal_extended` - Extended peyote colors
- `mapa_lenguas_named` - Named language families

## Cultural Context

The Wixarika (Huichol) people are an indigenous group from the Sierra
Madre Occidental in Mexico, known for their vibrant yarn paintings,
beadwork, and deep spiritual traditions.

## License

MIT License

## Acknowledgments

This package is created with deep respect for the Wixarika people and
other Indigenous peoples of Mexico.
