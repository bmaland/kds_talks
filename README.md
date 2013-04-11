# KDS Talks

This simple Rails app is the starting point for our workshop on
[Maintainable Ruby on Rails](https://github.com/bmaland/kds_rails_ws).

It imports the list of talks from the [KDS](http://kds.knowit.no) web site and
displays them on the screen.

## Installation

```shell
bundle install
rake db:migrate
bundle exec rake kds:import_talks
bundle exec rails server
```
