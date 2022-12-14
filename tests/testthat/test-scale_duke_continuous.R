test_that("points outside the limits are plotted as NA", {
  df <- tibble::tibble(x = c(-1, 1, 2))
  p <- ggplot2::ggplot(df, ggplot2::aes(x, 1, colour = x)) +
    ggplot2::geom_point() +
    scale_duke_continuous(limits = c(-1, 1))

  correct_fill <- c("#E2E6ED", "#00539B", "#B5B5B5")
  expect_equal(ggplot2::layer_data(p)$colour, correct_fill)
})
