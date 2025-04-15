# install.R

# Install remotes if not already installed
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

# Install CRAN packages
cran_packages <- c("ggplot2", "dplyr")
for (pkg in cran_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

# Install GitHub packages
github_packages <- c(
  "gesiscss/tubecleanR",
  "gojiplus/tuber",
  "vosonlab/vosonSML"
)

for (repo in github_packages) {
  remotes::install_github(repo, upgrade = "never")
}
