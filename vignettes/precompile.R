

knitr::knit("vignettes/bso.Rmd.orig", "vignettes/bso.Rmd")
knitr::knit("vignettes/model-comparison.Rmd.orig", "vignettes/model-comparison.Rmd")
knitr::knit("vignettes/model-customization.Rmd.orig", "vignettes/model-customization.Rmd")
knitr::knit("vignettes/stations.Rmd.orig", "vignettes/stations.Rmd")


if(!dir.exists('vignettes/figures')) dir.create('vignettes/figures')
purrr::map(list.files('figures'), \(f) file.copy(file.path('figures', f), file.path('vignettes/figures', f), overwrite = TRUE))
unlink('figures', recursive = TRUE)
