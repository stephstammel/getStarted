#' getWitchData
#'
#' Get the Russ and Leeson 2017 Witch Trials data.
#'
#' @return db, data frame of witch trial data
#' @export
#'
#' @examples
#' getWitchData()
#'
#'
getWitchData <- function(){
  url <- "https://raw.githubusercontent.com/JakeRuss/witch-trials/master/data/trials.csv"

  db <- read.csv(url)

  db$decade <- as.numeric(db$decade)
  db$country <- db$gadm.adm0
  db <- db[,-9]
  return(db)
}
