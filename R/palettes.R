#' WixarikaRt Color Palettes
#'
#' A collection of color palettes inspired by the art and culture of the
#' Wixarika (Huichol) people and other Indigenous peoples of Mexico.
#'
#' @format A list of color palettes
#' @details
#' The palettes are inspired by:
#' \itemize{
#'   \item Tatewari: Grandfather fire, sacred to the Wixarika people
#'   \item Kauyumari: The sacred deer spirit
#'   \item Tayau: Father Sun
#'   \item Nakawe: Grandmother Earth and ocean
#'   \item Tsikuri: Traditional ceremonial gourd bowls
#'   \item Nierika: Portal to the spirit world
#'   \item Muvieri: Arrows and ceremonial objects
#'   \item Hikuri: Sacred peyote
#'   \item Haramara: The Pacific Ocean
#'   \item Kiekari: Sky and celestial elements
#'   \item Mapa Lenguas: Pre-Hispanic indigenous languages distribution map
#' }
#'
#' @examples
#' # View available palettes
#' names(wixarika_palettes)
#'
#' # Access a specific palette
#' wixarika_palettes$tatewari_warm
#'
#' @export
wixarika_palettes <- list(
  tatewari_warm = c(
    "#FBF8F0", "#E68B9B", "#C73E42", "#D84F35", "#E7A45D", "#F0C542"
  ),

  kauyumari_forestsky = c(
    "#5A8A6B", "#6B9C85", "#3D7C96", "#6B96C4", "#4A6B8A", "#2E3E58"
  ),

  tayau_dawn = c(
    "#FDF4E1", "#F2B43C", "#D84F35", "#8C3B6C", "#4B5E91", "#2E3E58"
  ),

  nakawe_earthnight = c(
    "#F6E8D7", "#E7A45D", "#A35E2E", "#4E805D", "#3D7C96", "#24323D"
  ),

  tsikuri_balance = c(
    "#F0C542", "#6B96C4", "#B8391A", "#D47B1E", "#2A221F", "#3E4A58", "#4A6B8A"
  ),

  tatewari_spectrum = c(
    "#FF0000", "#FF4500", "#FF8C00", "#FFD700", "#4169E1", "#008B8B"
  ),

  nierika_diverging = c(
    "#2E3E58", "#4A6B8A", "#F6E8D7", "#D84F35", "#E7A45D"
  ),

  muvieri_vivid = c(
    "#D84F35", "#F0C542", "#4E805D", "#4169E1", "#8C3B6C"
  ),

  tsikuri_q_cb = c(
    "#4169E1", "#E7A45D", "#8C3B6C", "#009E73", "#2E3E58"
  ),

  nakawe_seq_cb = c(
    "#FBF8F0", "#E7A45D", "#A35E2E", "#2A221F"
  ),

  tsikuri_div_cb = c(
    "#2E3E58", "#6B96C4", "#F6E8D7", "#D47B1E", "#B8391A"
  ),

  hikuri_teal = c(
    "#0F3B3D", "#1A6E73", "#26A7A5", "#7EDAD3", "#FFE66D", "#F6F6F3"
  ),

  hikuri_teal_extended = c(
    "#1D2225", "#182F21", "#173734", "#2E927E", "#32BA94",
    "#24CFBC", "#91EEC0", "#92BA80", "#E2CB1E", "#FFF3A1"
  ),

  hikuri_seq = c(
    "#0F3B3D", "#165B5F", "#1E8E90", "#2FBEB8", "#7EDAD3", "#CFF5EC", "#FFF3A1"
  ),

  haramara_tatewari = c(
    "#0F3B3D", "#1E8E90", "#CFEDEA", "#F7F7F2", "#FFD24D", "#F59E0B"
  ),

  kiekari_sky_seq = c(
    "#102A4C", "#1C3F73", "#305C91", "#4687A8", "#69ADC8", "#97CBE3"
  ),

  tatewari_embers_seq = c(
    "#5A1A00", "#842C05", "#C93A12", "#E36321", "#F1A232", "#FAD25F"
  ),

  mapa_lenguas = c(
    "#C4968A", "#E8A96A", "#D4B86A", "#7B9BA8", "#8B6B7A",
    "#D4696A", "#9BAF8A", "#B8946A", "#6A8A9A", "#C48A6A"
  ),

  mapa_lenguas_named = c(
    Otomian = "#C4968A",
    Tarascan = "#E8A96A",
    Uto_Aztecan = "#7B9BA8",
    Maya_Quiche = "#8B6B7A",
    Mixtec_Zapotec = "#D4696A",
    Totonac = "#9BAF8A",
    Huastec = "#6A8A9A",
    Northern = "#D4B86A"
  )
)

#' @rdname wixarika_palettes
#' @export
wixarika_palette_info <- list(
  tatewari_warm = list(
    name = "Tatewari Warm",
    description = "Inspired by Grandfather Fire, with warm reds, oranges, and golds",
    type = "sequential"
  ),
  kauyumari_forestsky = list(
    name = "Kauyumari Forest & Sky",
    description = "Sacred deer spirit, forest greens and sky blues",
    type = "sequential"
  ),
  tayau_dawn = list(
    name = "Tayau Dawn",
    description = "Father Sun at dawn, warm to cool progression",
    type = "sequential"
  ),
  nakawe_earthnight = list(
    name = "Nakawe Earth & Night",
    description = "Grandmother Earth and ocean, earthy tones to deep sea",
    type = "sequential"
  ),
  tsikuri_balance = list(
    name = "Tsikuri Balance",
    description = "Ceremonial gourd bowls, balanced warm and cool tones",
    type = "qualitative"
  ),
  tatewari_spectrum = list(
    name = "Tatewari Spectrum",
    description = "Full fire spectrum from red to blue flames",
    type = "diverging"
  ),
  nierika_diverging = list(
    name = "Nierika Diverging",
    description = "Portal between worlds, cool to neutral to warm",
    type = "diverging"
  ),
  muvieri_vivid = list(
    name = "Muvieri Vivid",
    description = "Ceremonial arrows, vivid contrasting colors",
    type = "qualitative"
  ),
  tsikuri_q_cb = list(
    name = "Tsikuri Qualitative (CB)",
    description = "Colorblind-friendly qualitative palette",
    type = "qualitative",
    colorblind_safe = TRUE
  ),
  nakawe_seq_cb = list(
    name = "Nakawe Sequential (CB)",
    description = "Colorblind-friendly earth tones",
    type = "sequential",
    colorblind_safe = TRUE
  ),
  tsikuri_div_cb = list(
    name = "Tsikuri Diverging (CB)",
    description = "Colorblind-friendly diverging palette",
    type = "diverging",
    colorblind_safe = TRUE
  ),
  hikuri_teal = list(
    name = "Hikuri Teal",
    description = "Sacred peyote, deep teal to bright yellow",
    type = "sequential"
  ),
  hikuri_teal_extended = list(
    name = "Hikuri Teal Extended",
    description = "Extended version with more color steps",
    type = "sequential"
  ),
  hikuri_seq = list(
    name = "Hikuri Sequential",
    description = "Smooth sequential from deep teal through turquoise to yellow",
    type = "sequential"
  ),
  haramara_tatewari = list(
    name = "Haramara Tatewari",
    description = "Ocean to fire, teal through cream to gold",
    type = "diverging"
  ),
  kiekari_sky_seq = list(
    name = "Kiekari Sky",
    description = "Night sky to day sky progression",
    type = "sequential"
  ),
  tatewari_embers_seq = list(
    name = "Tatewari Embers",
    description = "Fire embers, deep reds through bright yellows",
    type = "sequential"
  ),
  mapa_lenguas = list(
    name = "Mapa de Lenguas",
    description = "Pre-Hispanic indigenous languages distribution map colors",
    type = "qualitative"
  ),
  mapa_lenguas_named = list(
    name = "Mapa de Lenguas (Named)",
    description = "Named language family colors from historical map",
    type = "qualitative"
  )
)
