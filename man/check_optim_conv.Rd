% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_param.R
\name{check_optim_conv}
\alias{check_optim_conv}
\title{Checks whether the optimisation of distribution parameters has converged to
stable value for the parameters and function output for multiple iterations}
\usage{
check_optim_conv(optim_params_list, optim_params, optim_conv)
}
\arguments{
\item{optim_params_list}{A list, where each element is the output of
stats::optim. See ?optim for more details}

\item{optim_params}{A list given by the output of stats::optim}

\item{optim_conv}{A boolean value indicating whether the optimisation has
converged over multiple iterations}
}
\value{
Boolean
}
\description{
This function is a try and prevent optimisation to a local
optim and thus checks whether multiple optimisation routines are consistently
finding parameter values to within a set tolerance of 1e-5.
}
