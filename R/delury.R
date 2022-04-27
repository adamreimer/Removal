#' Delury removal model
#'
#' Runs the Delury estimate removal estimate
#'
#' @param dat dat_remove or a similarly formatted list.
#'
#' @return An object of class lm
#'
#' @examples
#' delury(dat_remove[[1]])
#' lapply(dat_remove, delury)
#'
#' @export
delury <- function(dat){
  length <- if(max(length(dat$nets), length(dat$hr)) > 1)  1 else(length(dat$c))
  e <- rep(dat$nets*dat$hours/dat$sa, each = length)
  u <- ifelse(dat$c/e > 0, dat$c/e, 0.01)
  e_tilde <- c(0, cumsum(e)[-length(e)]) + e/2
  mod <- lm(log(u) ~ e_tilde)
  mod
}

