#' dat_remove
#'
#' Kenai Peninsula northern pike removal experiments. List where each element is another list with data associated with one removal experiment for northern pike.
#'  List names follow the convention lsy where l is lake (Derks, Sevena, Hope, Tiny), s is season (spring or fall) and y in year.
#'  Effort information may be specified per sampling event or once if constant throughout the experiment.
#'
#' @docType data
#'
#' @usage data(removals)
#'
#' @format A list of lists.
#'   \describe{
#'   \item{c}{Catches during each sampling event}
#'   \item{sa}{surface area of the lake sampled}
#'   \item{nets}{number of nets fished.  All nets were 120ft by 6 ft with 6 20 ft panels of 1/2, 5/8, 3/4, 1, 1.5, and 2 inch mesh}
#'   \item{hours}{hours fished for each sample}
#'   }
#'
"dat_remove"

