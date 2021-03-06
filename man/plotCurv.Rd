% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plotCurv}
\alias{plotCurv}
\title{Plot a curvigram}
\usage{
plotCurv(curv, obj, obj.label = T, signif, xlim = NULL, ...)
}
\arguments{
\item{curv}{Object of \emph{skyscapeR.curv} format, created using \code{\link{curvigram}}.}

\item{obj}{(Optional) A \emph{skyscapeR.object} object created with \code{\link{sky.objects}}
for displaying the declination of celestial objects.}

\item{obj.label}{(Optional) Boolean to control whether to label the celestial objects in
the curvigram. Defaults to \emph{TRUE}.}

\item{signif}{(Optional) A \emph{skyscapeR.sig} object created with \code{\link{sigTest}}
for displaying confidence envelope around the chosen null hypothesis and overall p-value.}

\item{xlim}{Array of two values restricting the horizontal range of the plot.}

\item{...}{Any other parameters to be passed unto \code{\link{plot.default}}.}
}
\description{
This function creates a plot of a curvigram.
}
\examples{
# Plot the curvigram of Recumbent Stone Circles:
data(RugglesRSC)
curv <- curvigram(RugglesRSC$Dec, unc=2)
plotCurv(curv, xlim=c(-40,0))

# Redo the plot to include lunar extreme declinations:
LEx <- sky.objects('moon', -2000, col='red', lty=2)
plotCurv(curv, objects=LEx, xlim=c(-40,0))

# Add significance testing information:
\dontrun{
sig <- sigTest(curv, nh.Uniform(c(57,2)))
plotCurv(curv, objects=LEx, signif=sig, xlim=c(-40,0))
}
}
\seealso{
\code{\link{curvigram}}, \code{\link{sky.objects}}, \code{\link{sigTest}}
}
