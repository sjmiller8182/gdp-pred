# This file contains plotting functions

library(ggplot2)
library(gridExtra)

#' Plot a response vs lags of an explanatory variable
#'
#' @param data A data.frame containing the response and explanatory variables.
#' @param response The response variable.
#' @param explanatory The explanatory variable, which will be lagged.
#' @param max.lags Number of lag plots to create.
#'
plot.cross.lags <- function(data, response, explanatory, max.lags){
  
  size = nrow(data)
  plots = list()
  
  for (i in 0:max.lags){
    plots[[paste('p', as.character(i))]] <- 
      ggplot(data = data.frame(data[1:(size - i), response],
                               data[(i + 1):size, explanatory]),
             aes_string(x = explanatory, y = response)) +
      geom_point() +
      geom_smooth(method = 'lm') +
      ggtitle(paste(response, 'vs lag of', explanatory)) +
      xlab(paste(as.character(i),' lags of ', explanatory, sep = '')) 
  }
  do.call("grid.arrange", c(plots, top = paste(response, "vs lags of", explanatory)))
}