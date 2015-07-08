#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
d4 <- function(data, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    data = data
  )
  attr(x, 'TOJSON_ARGS') <- list(dataframe = "rows")

  # create widget
  htmlwidgets::createWidget(
    name = 'd4',
    x,
    width = width,
    height = height,
    package = 'd4'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
d4Output <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'd4', width, height, package = 'd4')
}

#' Widget render function for use in Shiny
#'
#' @export
renderD4 <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, d4Output, env, quoted = TRUE)
}
