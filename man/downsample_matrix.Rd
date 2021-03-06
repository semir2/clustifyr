% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{downsample_matrix}
\alias{downsample_matrix}
\title{downsample matrix by cluster or completely random}
\usage{
downsample_matrix(
  mat,
  n = 1,
  keep_cluster_proportions = TRUE,
  metadata = NULL,
  cluster_col = "cluster"
)
}
\arguments{
\item{mat}{expression matrix}

\item{n}{number per cluster or fraction to keep}

\item{keep_cluster_proportions}{whether to subsample}

\item{metadata}{data.frame or
vector containing cluster assignments per cell.
Order must match column order in supplied matrix. If a data.frame
provide the cluster_col parameters.}

\item{cluster_col}{column in metadata with cluster number}
}
\value{
new smaller mat with less cell_id columns
}
\description{
downsample matrix by cluster or completely random
}
\examples{
set.seed(42)
mat <- downsample_matrix(
    mat = pbmc_matrix_small,
    metadata = pbmc_meta$classified,
    n = 10,
    keep_cluster_proportions = TRUE
)
mat[1:3, 1:3]
}
