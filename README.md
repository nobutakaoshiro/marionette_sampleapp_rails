# About

* Marionette.js sample application
* Ruby on Rails 4.2
* RequireJS(requirejs-rails) + Marionette.js

## How to run?

### Setup

```bash
git clone https://github.com/nobutakaoshiro/marionette_sampleapp_rails.git
cd marionette_sampleapp_rails
bundle install
bin/rake db:migrate
bin/rake db:seed
bin/rake bower:install
bin/rails s
```

Then, open a web browser and access to http://localhost:3000/