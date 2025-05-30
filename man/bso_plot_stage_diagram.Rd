% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bso-plot.R
\name{bso_plot_stage_diagram}
\alias{bso_plot_stage_diagram}
\title{Plot a stage diagram (BSO only)}
\usage{
bso_plot_stage_diagram(
  .pheno,
  .station = prop_stations(.pheno)[1],
  .stages = list("white", "brown"),
  .lty = c("dashed", "solid"),
  .lwd = 2,
  .colors = barrks_colors("bso_stages"),
  .labels = barrks_labels("bso_stages"),
  .legend_col = TRUE,
  .legend_lty = TRUE,
  ...
)
}
\arguments{
\item{.pheno}{A BSO phenology (see \code{\link[=bso_phenology]{bso_phenology()}})}

\item{.station}{Pass a character vector to choose a station assigned to \code{.pheno} by its name, or pass a different station. See \code{\link[=stations_create]{stations_create()}} for details.}

\item{.stages}{List of stages to plot. Elements will be passed to
\code{\link[=bso_get_individuals_df]{bso_get_individuals_df()}}. Look there for more information.}

\item{.lty, .lwd}{Vectors of line types or line widths that are used to plot
the different stages. Should have the same length as \code{.stages} or 1.}

\item{.colors, .labels}{Vectors of colors/labels starting from the hibernating
generation followed consecutively by elements for the filial generations
(not including sisterbroods).}

\item{.legend_col, .legend_lty}{Manipulate the appearance of the legends for
colors and line types. Pass \code{TRUE}/\code{FALSE} to enable/disable the respective legend.
For the customization of the respective legend, a list of parameters for
\link[graphics:legend]{graphics::legend} can be passed.}

\item{...}{arguments passed to \code{\link[base:plot]{base::plot()}}.}
}
\value{
None
}
\description{
A stage diagram illustrates the share of individuals that are in a specific
developmental stage of a particular generation over time.
}
\examples{
\donttest{
# This may take a few minutes...

# calculate phenology
p <- bso_phenology('bso', barrks_data('stations'), .quiet = TRUE)

bso_plot_stage_diagram(p)
}
}
