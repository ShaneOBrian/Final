#' This function creates an error alert if depth and velocity are negative and if width is not equal to 2
#' @param depth to bottom of the stream bed (feet)
#' @param width distance between two points across the stream (feet), default = 2
#' @param velocity rate of stream flow (feet per second)
#' @return error message if conditions are not met

library(here)

discharge_vol <- function(depth, velocity) {
  if(depth < 0) {
    stop("Depth cannot be negative")
  }
  if(velocity < 0) {
    stop("Velocity cannot be negative")
  }}
