# Git 201

This repository contains materials used for Git 101 talk

## Slides

Slides are generated using [Pandoc](https://pandoc.org/), fixed by a small
Ruby script and powered by [reveal.js](https://revealjs.com/).

## Usage instruction

1. `git clone --recursive https://github.com/asi-pwr/git101.git`
2. Open `slides/index.html` in your web browser
3. ????
4. PROFIT

## Development

1. Install latest Pandoc and Ruby
2. Go to `slides` directory
3. Run `bundle install`
4. Edit `slides.md` to suit your needs
5. Issue `make`
6. Your brand new presentation is available at `index.html`
7. OPTIONAL: If you want a zip archive with the talk then issue `make release`
