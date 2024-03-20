#' This function runs samples to create a data set output for use in discharge_vol function
#' @param depth to bottom of the stream bed (feet)
#' @param width distance between two points across the stream (feet), default = 2
#' @param velocity rate of stream flow (feet per second)
#' @param velociity_type shows the classification of stream flow as high, medium, or low
#' @return discharge (cubic feet per second)

library(dplyr)
library(here)
library(tidyverse)

nsample=100
depth_samp <- runif(nsample, min=1, max=20)
velocity_samp <- runif(nsample, min=.1, max=10)
stream_features = data.frame(depth=depth_samp, velocity = velocity_samp, width=2)
stream_features <- stream_features |>
  mutate(velocity_type = cut(velocity, breaks = c(.1,3,5,10),
                             labels = c("low","medium","high"),
                             include.lowest=TRUE)) |>
  mutate(measure = row_number())

write_csv(stream_features, here("stream_features.csv"))
