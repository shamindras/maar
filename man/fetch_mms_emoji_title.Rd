% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ols-summary.R
\name{fetch_mms_emoji_title}
\alias{fetch_mms_emoji_title}
\title{An emoji and title builder helper function for a specific variance type}
\usage{
fetch_mms_emoji_title(var_type_abb, title_type)
}
\arguments{
\item{var_type_abb}{(\code{character}) : The abbreviated variance type.
Must be one of the following values
\code{"lm", "sand" , "emp" , "sub", "res" , "mul"}}

\item{title_type}{(\code{character}) : The type of title required.
Must be one of the following values
\code{"title", "emoji", "emoji_title"}}
}
\value{
(\code{"glue", "character"}) : The title and/or emoji of
the requested variance type
}
\description{
An emoji and title builder helper function for a specific variance type
}
\examples{
\dontrun{
# TODO: Add here
}
}
\keyword{internal}
