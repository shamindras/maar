% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boot-empirical.R
\name{comp_boot_emp}
\alias{comp_boot_emp}
\title{A wrapper for the empirical bootstrap of a fitted OLS or GLM regression model}
\usage{
comp_boot_emp(mod_fit, B = 100, m = NULL, replace = TRUE)
}
\arguments{
\item{mod_fit}{An object of class \code{\link[stats]{lm}} or
\code{\link[stats]{glm}} to fit on the data. This object should contain
the formula, the data, and, in case of \code{\link[stats]{glm}},
the family.}

\item{B}{Bootstrap repetitions or number of bootstrap samples to be drawn.}

\item{m}{Number of observations to be sampled with replacement from the
dataset for each bootstrap repetition.}

\item{replace}{TODO: ADD}
}
\value{
A list containing the following elements.
\code{var_type}: The type of estimator for the variance of the coefficients
estimates. An abbreviated string representing the
type of the estimator of the variance  (\code{var_type_abb}).
\code{var_summary}: A tibble containing the summary statistics for the model:
terms (\code{term}), standard errors (\code{std.error}),
statistics (\code{statistic}), p-values (\code{p.values}). The format
of the tibble is exactly identical to the one generated by
\code{\link[broom]{tidy}}, but the standard errors and p-values are computed
via the bootstrap.
\code{var_assumptions}: The assumptions under which the estimator of the
variance is consistent.
\code{cov_mat}: The covariance matrix of the coefficients estimates.
\code{boot_out}: A tibble of the model's coefficients estimated (\code{term} and
\code{estimate}) on the bootstrapped datasets,
the size of the original dataset (\code{n}), and the number of the
bootstrap repetition (\code{b}). In case of empirical bootstrap, it will
also contain the size of each bootstrapped dataset (\code{m}).
}
\description{
\code{comp_boot_emp} is a wrapper for the empirical bootstrap of
a fitted \code{\link[stats]{lm}} or \code{\link[stats]{glm}} model.
}
\details{
The empirical bootstrap consists of fitting the chosen statistical
model (\code{mod_fit}) onto \code{B} bootstrap versions of size \code{m}
of the dataset.
}
\examples{
\dontrun{
# Obtain estimates of the coefficients on bootstrapped versions of the dataset
set.seed(35542)
n <- 1e3
X <- stats::rnorm(n, 0, 1)
y <- 2 + X * 1 + stats::rnorm(n, 0, 1)
lm_fit <- stats::lm(y ~ X)
out <- comp_boot_emp(lm_fit, B = 100, m = 1000)

print(out)
}
}
\keyword{internal}
