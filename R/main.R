#' Uniform Crime Report Column Name Fixer
#'
#' @param UCR_dataset
#' This is the data.frame containing data from the
#' UCR "Offenses Known and Clearance by Arrest" dataset
#' You may use any years from 1998-2014
#'
#' @return
#' Returns the same data.frame as inputted but with column names corrected
#' as per the UCR "Offenses Known and Clearance by Arrest" codebook for years
#' 1998-2014
#'
#' @export
#'
#' @examples
#' # This is an example data.frame with the same column names
#' # as the real UCR dataset.
#' example <- data.frame(V1 = 1:10, V2 = 2:11, V8 = "example")
#' names(example)
#' example <- UCR.OffenseNames(example)
#' names(example)
UCR.OffenseNames <- function(UCR_dataset) {

  for (i in 1:ncol(UCR_dataset)) {
    for (n in 1:nrow(UCR_Offenses_ColNames)) {
      if (names(UCR_dataset)[i] == UCR_Offenses_ColNames$column_code[n]) {
        names(UCR_dataset)[i] <- UCR_Offenses_ColNames$column_name[n]
      }
    }
  }

  return(UCR_dataset)

}

#' Column name and code for the UCR Offenses dataset
#'
#' A dataset containing the name and code corresponding to columns
#' in the Uniform Crime Report "Offenses Known and Clearance by Arrest"
#' dataset for years 1998-2014
#'
#' @format A data frame with 1448 rows and 2 variables:
#' \describe{
#'   \item{column_name}{The column name for the given column, according
#'   to the codebook.}
#'   \item{column_code}{The code for the given column, according to the codebook.
#'   This will be the column name of the inputted dataset.}
#'   ...
#' }
#' @source \url{http://www.icpsr.umich.edu/icpsrweb/NACJD/studies/36391}
"UCR_Offenses_ColNames"
