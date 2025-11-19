# Print Wixarika Palette Information

Print Wixarika Palette Information

## Usage

``` r
wixarika_pal_info(name = NULL)
```

## Arguments

- name:

  Name of the palette. If NULL, shows all palettes.

## Value

Invisibly returns the palette information

## Examples

``` r
# Show all palette information
wixarika_pal_info()
#> 
#> tatewari_warm
#>   Name: Tatewari Warm
#>   Type: sequential
#>   Description: Inspired by Grandfather Fire, with warm reds, oranges, and golds
#> 
#> kauyumari_forestsky
#>   Name: Kauyumari Forest & Sky
#>   Type: sequential
#>   Description: Sacred deer spirit, forest greens and sky blues
#> 
#> tayau_dawn
#>   Name: Tayau Dawn
#>   Type: sequential
#>   Description: Father Sun at dawn, warm to cool progression
#> 
#> nakawe_earthnight
#>   Name: Nakawe Earth & Night
#>   Type: sequential
#>   Description: Grandmother Earth and ocean, earthy tones to deep sea
#> 
#> tsikuri_balance
#>   Name: Tsikuri Balance
#>   Type: qualitative
#>   Description: Ceremonial gourd bowls, balanced warm and cool tones
#> 
#> tatewari_spectrum
#>   Name: Tatewari Spectrum
#>   Type: diverging
#>   Description: Full fire spectrum from red to blue flames
#> 
#> nierika_diverging
#>   Name: Nierika Diverging
#>   Type: diverging
#>   Description: Portal between worlds, cool to neutral to warm
#> 
#> muvieri_vivid
#>   Name: Muvieri Vivid
#>   Type: qualitative
#>   Description: Ceremonial arrows, vivid contrasting colors
#> 
#> tsikuri_q_cb
#>   Name: Tsikuri Qualitative (CB)
#>   Type: qualitative
#>   Description: Colorblind-friendly qualitative palette
#>   Colorblind Safe: TRUE
#> 
#> nakawe_seq_cb
#>   Name: Nakawe Sequential (CB)
#>   Type: sequential
#>   Description: Colorblind-friendly earth tones
#>   Colorblind Safe: TRUE
#> 
#> tsikuri_div_cb
#>   Name: Tsikuri Diverging (CB)
#>   Type: diverging
#>   Description: Colorblind-friendly diverging palette
#>   Colorblind Safe: TRUE
#> 
#> hikuri_teal
#>   Name: Hikuri Teal
#>   Type: sequential
#>   Description: Sacred peyote, deep teal to bright yellow
#> 
#> hikuri_teal_extended
#>   Name: Hikuri Teal Extended
#>   Type: sequential
#>   Description: Extended version with more color steps
#> 
#> hikuri_seq
#>   Name: Hikuri Sequential
#>   Type: sequential
#>   Description: Smooth sequential from deep teal through turquoise to yellow
#> 
#> haramara_tatewari
#>   Name: Haramara Tatewari
#>   Type: diverging
#>   Description: Ocean to fire, teal through cream to gold
#> 
#> kiekari_sky_seq
#>   Name: Kiekari Sky
#>   Type: sequential
#>   Description: Night sky to day sky progression
#> 
#> tatewari_embers_seq
#>   Name: Tatewari Embers
#>   Type: sequential
#>   Description: Fire embers, deep reds through bright yellows
#> 
#> mapa_lenguas
#>   Name: Mapa de Lenguas
#>   Type: qualitative
#>   Description: Pre-Hispanic indigenous languages distribution map colors
#> 
#> mapa_lenguas_named
#>   Name: Mapa de Lenguas (Named)
#>   Type: qualitative
#>   Description: Named language family colors from historical map

# Show specific palette information
wixarika_pal_info("tatewari_warm")
#> 
#> tatewari_warm
#>   Name: Tatewari Warm
#>   Type: sequential
#>   Description: Inspired by Grandfather Fire, with warm reds, oranges, and golds
```
