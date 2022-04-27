#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

# used to extract posterior distribution from the jagsUI object and coerce multiple chains into a single vector
getpost <- function(param, nchains){
  sapply(1:nchains, function(x){as.numeric(post$samples[[x]][,param])}) %>%
    c()
}

#Used to calculat detection probabilities under various population sizes, net densities and hours of effort
detprob <- function(k, netdensity, hours, population){
  pcap <- sapply(1:length(netdensity), function(x){1 - exp(-k * netdensity[x] * hours)})
  mat <- sapply(1:length(netdensity), function(x){dbinom(0, population, pcap[, x])}, USE.NAMES = TRUE)
  rownames(mat) <- paste0(hours, " hours")
  colnames(mat) <- paste0(netdensity, "nets/sa")
  mat
}
