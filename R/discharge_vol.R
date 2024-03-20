#' This function determines the discharge volume along different parts of the stream
#' @param depth to bottom of the stream bed (feet)
#' @param width distance between two points across the stream (feet), default = 2
#' @param velocity rate of stream flow (feet per second)
#' @return discharge (cubic feet per second)

discharge_vol <- function(depth, velocity) {
  width=2
  result = depth*width*velocity
  return(result)
}

