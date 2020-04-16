# add style to use here
figure_caption_numbering = 'body {counter-reset: figures; } .figure .caption {counter-increment: figures;} .figure .caption:before {font-weight: bold; content: "Fig. " counter(figures) " : "; } '
figure_caption_numbering_centering = 'body {counter-reset: figures; } .figure .caption {counter-increment: figures; text-align: center;} .figure .caption:before {font-weight: bold; content: "Fig. " counter(figures) " : "; } img {display: block; margin: auto;}'

list_css <- function() {
    c(
        'figure_caption_numbering',
        'figure_caption_numbering_centering'
    )
}