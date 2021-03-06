% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ols-summary.R
\name{fetch_mms_comp_var_attr}
\alias{fetch_mms_comp_var_attr}
\title{Get the individual variance summary for a specific attribute in the
\code{var} element}
\usage{
fetch_mms_comp_var_attr(comp_var_ind, req_type)
}
\arguments{
\item{comp_var_ind}{(\code{list}) : The variance \code{var} component of
a fitted OLS \code{maars_lm, lm} class object.}

\item{req_type}{(\code{character}) : The type of variance attribute to
extract from the variance component of the \code{maars_lm, lm} object.}
}
\value{
(\code{list}) : of the required variance attribute for all of
the difference
}
\description{
Get the individual variance summary for a specific attribute in the
\code{var} element
}
\examples{
\dontrun{
# TODO: Add here
}
}
\keyword{internal}
