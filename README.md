# Steria Chess

Production: http://steria.no/sjakk

## Initial setup

You should have ruby >= 2.1.2 and bundler installed.

Then run the following commands:

    # fetch the project from github
    git clone git@github.com:Trude/chess.git

    cd chess

    # install dependencies
    bundle install

    # migrate the database
    [bundle exec] rake db:migrate

    # start the application for development (starts on port 3000)
    [bundle exec] rails s

