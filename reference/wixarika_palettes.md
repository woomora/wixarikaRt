# WixarikaRt Color Palettes

A collection of color palettes inspired by the art and culture of the
Wixarika (Huichol) people and other Indigenous peoples of Mexico.

## Usage

``` r
wixarika_palettes

wixarika_palette_info
```

## Format

A list of color palettes

An object of class `list` of length 19.

## Details

The palettes are inspired by:

- Tatewari: Grandfather fire, sacred to the Wixarika people

- Kauyumari: The sacred deer spirit

- Tayau: Father Sun

- Nakawe: Grandmother Earth and ocean

- Tsikuri: Traditional ceremonial gourd bowls

- Nierika: Portal to the spirit world

- Muvieri: Arrows and ceremonial objects

- Hikuri: Sacred peyote

- Haramara: The Pacific Ocean

- Kiekari: Sky and celestial elements

- Mapa Lenguas: Pre-Hispanic indigenous languages distribution map

## Examples

``` r
# View available palettes
names(wixarika_palettes)
#>  [1] "tatewari_warm"        "kauyumari_forestsky"  "tayau_dawn"          
#>  [4] "nakawe_earthnight"    "tsikuri_balance"      "tatewari_spectrum"   
#>  [7] "nierika_diverging"    "muvieri_vivid"        "tsikuri_q_cb"        
#> [10] "nakawe_seq_cb"        "tsikuri_div_cb"       "hikuri_teal"         
#> [13] "hikuri_teal_extended" "hikuri_seq"           "haramara_tatewari"   
#> [16] "kiekari_sky_seq"      "tatewari_embers_seq"  "mapa_lenguas"        
#> [19] "mapa_lenguas_named"  

# Access a specific palette
wixarika_palettes$tatewari_warm
#> [1] "#FBF8F0" "#E68B9B" "#C73E42" "#D84F35" "#E7A45D" "#F0C542"
```
