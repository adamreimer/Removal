#' remove_df
#'
#' Creates a data frame from the dat_remove list. Can subset dat_remove with i.
#'
#' @param data dat_remove or a similarly formatted list.
#' @param i elements of dat_remove to include, i.e. dat_remove[[i]]
#' @param n experiment names, defaults to names(dat_remove[i])
#'
#' @return data frame with the following columns
#'   \item{y}{CPUE}
#'   \item{x}{cumulative catch}
#'   \item{experiment}{removal experiment following the convention lsy where l is lake (Derks, Sevena, Hope, Tiny), s is season (spring or fall) and y in year.}
#'   \item{catch}{fish caught in each sample}
#'   \item{effort}{effort in net hours per surface acre}
#'   }
#'
#' @examples
#' remove_df(i = 1, dat_remove)
#' plyr::ldply(1:12, remove_df, data = dat_remove)
#' plyr::ldply(c(3, 7), remove_df, data = dat_remove)

#'
#' @export
remove_df <- function(data, i, n = names(data)){
  dat <- data[[i]]
  effort <- dat$nets*dat$hours/dat$sa
  cpue <- dat$c/effort
  cum_catch <- c(0, cumsum(dat$c)[-length(dat$c)])
  name <- rep(n[i], length(dat$c))
  data.frame(y = cpue, x = cum_catch, experiment = name, catch = dat$c, effort = effort)
}
