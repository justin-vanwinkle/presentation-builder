# Presentation Builder

A simplistic way to create stunning presentations with speed using Reveal.js and Docker.

## Capabilities

1. Convert markdown to reveal.js presentation slides.
2. Watch input for changes and automatically rebuild presentation (manual page refresh required).
3. Serve your presentation from a distributable container.

## Prerequisites

Docker is the only requirement.

## Usage

In any case, this repo can be cloned and used as a skeleton for creating your presentation.

### Working on your presentation

* Run `prepare.sh`
* Modify `input/slides.md`
* Place resources in `input/res/`

**Notes:**

* `input/slides.md` represents your slides.
* Any resources that you reference in `input/slides.md` should be placed in `input/res/`.
* `prepare.sh` rebuilds the presentation upon changes to the input folder.  The browser requires manual refresh however.

### Presenting Locally

Run `present.sh`.

The only difference between this and `prepare.sh` is that `present.sh` does not monitor for changes.  It will still serve the content from the container, however.

### Distributing

If you wish to serve your talk in a simple way, you can grab the files from the `output` folder and drop them anyhwere you can serve a webpage.
