css_path <- function(use_css) {
    name <- paste0(tempdir(), 'k.css')
    file.create(name)
    cat(get(use_css), file=name)
    name
}

render_with_style <- function(..., use_css='figure_caption_numbering_centering') {
    name <- css_path(use_css)
    rmarkdown::render(..., 
        rmarkdown::html_document(css=name))
    on.exit(file.remove(name))
    invisible()
}