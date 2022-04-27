#' Leslie removal model
#'
#' Runs the Leslie estimate removal estimate
#'
#' @param dat dat_remove or a similarly formatted list.
#'
#' @return An object of class lm
#'
#' @examples
#' leslie(dat_remove[[1]])
#' lapply(dat_remove, leslie)
#'
#' @export
leslie <- function(dat){
  u <- dat$c*dat$sa/dat$nets/dat$hours
  c_star <- c(0, cumsum(dat$c)[-length(dat$c)])
  mod <- lm(u ~ c_star)
  mod
}

