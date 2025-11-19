#' Wixarika Color Scales for ggplot2
#'
#' @param name Name of the palette
#' @param discrete Logical. Use discrete (TRUE) or continuous (FALSE) scale
#' @param reverse Logical. Reverse the palette?
#' @param ... Additional arguments passed to ggplot2 scale functions
#'
#' @rdname scale_wixarika
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' # Discrete color scale
#' ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'   geom_point(size = 3) +
#'   scale_color_wixarika("muvieri_vivid")
#'
#' # Continuous fill scale
#' ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
#'   geom_tile() +
#'   scale_fill_wixarika("hikuri_seq", discrete = FALSE)
#' }
scale_color_wixarika <- function(name, discrete = TRUE, reverse = FALSE, ...) {
  if (discrete) {
    ggplot2::discrete_scale(
      "colour", "wixarika",
      wixarika_pal_generator(name, reverse = reverse),
      ...
    )
  } else {
    ggplot2::scale_color_gradientn(
      colours = wixarika_pal(name, type = "continuous", n = 256, reverse = reverse),
      ...
    )
  }
}

#' @rdname scale_wixarika
#' @export
scale_colour_wixarika <- scale_color_wixarika

#' @rdname scale_wixarika
#' @export
scale_fill_wixarika <- function(name, discrete = TRUE, reverse = FALSE, ...) {
  if (discrete) {
    ggplot2::discrete_scale(
      "fill", "wixarika",
      wixarika_pal_generator(name, reverse = reverse),
      ...
    )
  } else {
    ggplot2::scale_fill_gradientn(
      colours = wixarika_pal(name, type = "continuous", n = 256, reverse = reverse),
      ...
    )
  }
}

# Internal function to generate palette function for ggplot2
wixarika_pal_generator <- function(name, reverse = FALSE) {
  function(n) {
    wixarika_pal(name, n = n, type = "discrete", reverse = reverse)
  }
}
