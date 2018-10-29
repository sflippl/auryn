#' Read .ras files
#'
#' auryn saves its files with a "ras" extension. This function reads in the file
#' as a data frame.
#'
#' @param file a path to a ras-file
#' @param names the names of the x and y dimension of the data frame as a
#' character vector. Default values are `c("x", "y")`.
#'
#' @export

read_ras <- function(file, names = c("x", "y")) {
  # Valid arguments?
  assertthat::assert_that(
    length(names) == 2
  )
  # Read in file
  out <-
    suppressWarnings(
      file %>%
        readr::read_delim(
          delim = " ",
          col_names = names,
          col_types = list(
            readr::col_double(),
            readr::col_integer()
          )
        )
    )
  # Valid file?
  assertthat::assert_that(
    !any(is.na(out))
  )
  assertthat::assert_that(
    suppressMessages(
      suppressWarnings(
        file %>%
          readr::read_delim(
            delim = " ",
            n_max = 1
          ) %>%
          length() %>%
          magrittr::equals(2)
      )
    ),
    msg = "Corrupted .ras file."
  )
  out
}
