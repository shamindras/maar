% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-common.R
\name{check_fn_args_posint}
\alias{check_fn_args_posint}
\title{Check whether the input argument is a positive integer}
\usage{
check_fn_args_posint(inp_arg)
}
\arguments{
\item{inp_arg}{Input function argument. Should be of type numeric, and a
positive integer}
}
\value{
(logical) returns \code{TRUE} if input is a positive integer
}
\description{
Check whether the input argument is a positive integer
}
\examples{
\dontrun{
B <- 100
assertthat::assert_that(check_fn_args_posint(inp_arg = B)) # Pass assertion
}
}
\keyword{internal}
