all_md <- list.files(pattern = ".md$", full.names = TRUE, recursive = TRUE)
to_remove <- c("./index.md", "./README.md")
to_compile <- all_md[!all_md %in% to_remove]
purrr::walk(to_compile, rmarkdown::render)
