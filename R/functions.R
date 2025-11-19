#' Get a Wixarika Palette
#'
#' @param name Name of the palette. Use \code{wixarika_pal_names()} to see available palettes.
#' @param n Number of colors to return. If NULL, returns all colors in the palette.
#' @param type Type of palette: "discrete" or "continuous"
#' @param reverse Logical. Should the palette be reversed?
#'
#' @return A character vector of hex color codes
#' @export
#'
#' @examples
#' # Get a complete palette
#' wixarika_pal("tatewari_warm")
#'
#' # Get 3 colors from a palette
#' wixarika_pal("kauyumari_forestsky", n = 3)
#'
#' # Reverse a palette
#' wixarika_pal("tayau_dawn", reverse = TRUE)
wixarika_pal <- function(name, n = NULL, type = "discrete", reverse = FALSE) {
  if (!name %in% names(wixarika_palettes)) {
    stop("Palette '", name, "' not found. Use wixarika_pal_names() to see available palettes.")
  }

  pal <- wixarika_palettes[[name]]

  if (reverse) {
    pal <- rev(pal)
  }

  if (is.null(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors (", n, ") exceeds palette length (",
         length(pal), "). Set type = 'continuous' to interpolate colors.")
  }

  if (type == "continuous") {
    pal <- grDevices::colorRampPalette(pal)(n)
  } else {
    pal <- pal[1:n]
  }

  return(pal)
}

#' List Available Wixarika Palettes
#'
#' @return A character vector of palette names
#' @export
#'
#' @examples
#' wixarika_pal_names()
wixarika_pal_names <- function() {
  names(wixarika_palettes)
}

#' Print Wixarika Palette Information
#'
#' @param name Name of the palette. If NULL, shows all palettes.
#'
#' @return Invisibly returns the palette information
#' @export
#'
#' @examples
#' # Show all palette information
#' wixarika_pal_info()
#'
#' # Show specific palette information
#' wixarika_pal_info("tatewari_warm")
wixarika_pal_info <- function(name = NULL) {
  if (is.null(name)) {
    for (pal_name in names(wixarika_palette_info)) {
      info <- wixarika_palette_info[[pal_name]]
      cat("\n", pal_name, "\n", sep = "")
      cat("  Name: ", info$name, "\n", sep = "")
      cat("  Type: ", info$type, "\n", sep = "")
      cat("  Description: ", info$description, "\n", sep = "")
      if (!is.null(info$colorblind_safe)) {
        cat("  Colorblind Safe: ", info$colorblind_safe, "\n", sep = "")
      }
    }
  } else {
    if (!name %in% names(wixarika_palette_info)) {
      stop("Palette '", name, "' not found.")
    }
    info <- wixarika_palette_info[[name]]
    cat("\n", name, "\n", sep = "")
    cat("  Name: ", info$name, "\n", sep = "")
    cat("  Type: ", info$type, "\n", sep = "")
    cat("  Description: ", info$description, "\n", sep = "")
    if (!is.null(info$colorblind_safe)) {
      cat("  Colorblind Safe: ", info$colorblind_safe, "\n", sep = "")
    }
  }
  invisible(wixarika_palette_info)
}

#' Display a Wixarika Palette
#'
#' @param name Name of the palette
#' @param n Number of colors to display. If NULL, shows all colors.
#' @param reverse Logical. Should the palette be reversed?
#' @param ... Additional arguments passed to image()
#'
#' @return NULL (displays a plot)
#' @export
#'
#' @examples
#' # Display a palette
#' wixarika_show_pal("tatewari_warm")
#'
#' # Display with more colors (interpolated)
#' wixarika_show_pal("kauyumari_forestsky", n = 20)
wixarika_show_pal <- function(name, n = NULL, reverse = FALSE, ...) {
  pal <- wixarika_pal(name, n = n, type = if (is.null(n) || n <= length(wixarika_palettes[[name]])) "discrete" else "continuous", reverse = reverse)

  graphics::image(
    1:length(pal), 1,
    as.matrix(1:length(pal)),
    col = pal,
    xlab = "", ylab = "",
    xaxt = "n", yaxt = "n",
    bty = "n",
    main = paste0(name, " (n=", length(pal), ")")
  )

  # Add hex codes
  graphics::text(1:length(pal), 0.5, pal, srt = 90, adj = 0.5, cex = 0.7)
}

#' Display All Wixarika Palettes
#'
#' @return NULL (displays a plot)
#' @export
#'
#' @examples
#' wixarika_show_all()
wixarika_show_all <- function() {
  n_pals <- length(wixarika_palettes)
  old_par <- graphics::par(mfrow = c(ceiling(n_pals/2), 2), mar = c(1, 10, 1, 1))
  on.exit(graphics::par(old_par))

  for (name in names(wixarika_palettes)) {
    pal <- wixarika_palettes[[name]]
    graphics::image(
      1:length(pal), 1,
      as.matrix(1:length(pal)),
      col = pal,
      ylab = "",
      xaxt = "n", yaxt = "n",
      bty = "n"
    )
    graphics::mtext(name, side = 2, las = 1, adj = 1, padj = 0.5, cex = 0.7)
  }
}
