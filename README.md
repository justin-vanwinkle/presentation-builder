# Presentation Builder
A simplistic way to build stunning presentations with speed using Reveal.js and Docker.

To get started, clone this repo, modify the `input/slides.md` file to define your slides and place your referenced resources in `input/res/`.

To view your slides or present, run `present.sh`.  This will ultimately build your presentation and open your default browser to serve your presentation.

To publish your presentation in a docker image, run `docker build -t <presentation-name>:final ./finalizer/` && docker push `<presentation-name>:final`.  When you want to run your presentation, run `docker run <your-docker-handle>/<presentation-name>:final`.