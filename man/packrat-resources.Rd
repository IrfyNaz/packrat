% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paths.R
\name{packrat-resources}
\alias{bundles_dir}
\alias{lib_dir}
\alias{packrat-resources}
\alias{project_dir}
\alias{src_dir}
\title{Paths to Packrat Resources}
\usage{
project_dir(project = NULL)

src_dir(project = NULL)

lib_dir(project = NULL)

bundles_dir(project = NULL)
}
\arguments{
\item{project}{The project directory.}
}
\description{
These functions provide a mechanism for retrieving the paths to
Packrat resource directories. Each of these directories can be
overridden by setting either an environment variable, or an \R
option.
}
\section{Project Directory}{


\code{project_dir()} is special -- the \code{R_PACKRAT_PROJECT_DIR}
environment variable is set and unset by \code{\link{on}} and
\code{\link{off}}, respectively, and generally should not be
overridden by the user.
}

\section{Directory Resolution}{


The following table shows the order in which resource directories
are discovered (from left to right). The first non-empty result is
used.

\tabular{llll}{
\strong{API}         \tab \strong{Environment Variable} \tab \strong{R Option}          \tab \strong{Default Value} \cr
\code{project_dir()} \tab \code{R_PACKRAT_PROJECT_DIR}  \tab \code{packrat.project.dir} \tab \code{getwd()} \cr
\code{src_dir()}     \tab \code{R_PACKRAT_SRC_DIR}      \tab \code{packrat.src.dir}     \tab \code{"packrat/src"} \cr
\code{lib_dir()}     \tab \code{R_PACKRAT_LIB_DIR}      \tab \code{packrat.lib.dir}     \tab \code{"packrat/lib"} \cr
\code{bundles_dir()} \tab \code{R_PACKRAT_BUNDLES_DIR}  \tab \code{packrat.bundles.dir} \tab \code{"packrat/bundles"} \cr
}
}

