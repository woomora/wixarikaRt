library(ggplot2)
library(wixarikaRt)
library(magick)

# Function to create a beadwork grid pattern with diamond motifs
create_beadwork_diamond <- function(grid_size = 40) {
  # Create grid
  grid <- expand.grid(x = 0:grid_size, y = 0:grid_size)

  # Center coordinates
  center_x <- grid_size / 2
  center_y <- grid_size / 2

  # Create diamond pattern
  grid$pattern <- sapply(1:nrow(grid), function(i) {
    x <- grid$x[i]
    y <- grid$y[i]

    # Distance from center (Manhattan distance for diamond shape)
    dist_from_center <- abs(x - center_x) + abs(y - center_y)

    # Create concentric diamonds
    layer <- floor(dist_from_center / 4) %% 5

    # Add detail within each diamond layer
    inner_detail <- (abs(x - center_x) %% 3 + abs(y - center_y) %% 3) %% 3

    # Combine for final pattern
    pattern_value <- (layer * 3 + inner_detail) %% 6 + 1

    return(pattern_value)
  })

  return(grid)
}

# Create and plot the diamond pattern
beadwork1 <- create_beadwork_diamond(24)

p1 <-
  ggplot(beadwork1, aes(x = x, y = y, fill = factor(pattern))) +
  geom_tile(color = "#1A1A1A", size = 0.1) +
  scale_fill_manual(values = wixarika_pal("hikuri_teal")) +
  coord_equal() +
  theme_void() +
  theme(legend.position = "none",
        plot.background = element_rect(fill = "transparent", color = NA),
        panel.background = element_rect(fill = "transparent", color = NA))

p1

ggsave("man/figures/beadwork_diamond.png", p1, width = 6, height = 6, dpi = 300, bg = "transparent")

library(hexSticker)

beadwork_diamond.png <- magick::image_read("man/figures/beadwork_diamond.png")


# Create the hex sticker
set.seed(123)
sticker(
  beadwork_diamond.png,
  package = "wixarikaRt",
  p_size = 14,
  p_y = 1.625,
  p_color = "#E36321",
  p_family = "Aller_Rg",
  p_fontface = "bold",
  s_x = 1,
  s_y = .95,
  s_width = 1.25,
  s_height = 1.25,
  h_fill = "#F7F7F2",
  h_color = "#1E8E90",
  h_size = 0,
  filename = "man/figures/logo.png",
  dpi = 300,
  white_around_sticker = F
)

# Use the logo
usethis::use_logo("man/figures/logo.png")
