% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_param.R
\name{nbinom_probdisp2meandisp}
\alias{nbinom_probdisp2meandisp}
\title{Convert the probability and dispersion (k) parameters of the negative
binomial distribution to the mean (expectation) and dispersion
parameterisation}
\usage{
nbinom_probdisp2meandisp(prob, dispersion)
}
\arguments{
\item{prob}{The probability parameter (p) of the negative binomial}

\item{dispersion}{The dispersion parameter (k) of the negative binomial. This
parameter is also commonly represented as \emph{r}.}
}
\value{
A named list with mean and dispersion
}
\description{
The negative binomial distribution can have several
formulations, the one used here assumes the random variable (X) is the number
of failures before a specified number of successes. This is the same form as
used by \code{distributional::dist_negative_binomial()}.
}
\examples{
nbinom_probdisp2meandisp(prob = 0.3, dispersion = 0.9)
}
