Faye-rails example app.
=======================

This is a small demo app for faye-rails.

You can see it running [on Heroku](http://faye-rails-demo.herokuapp.com/)

To run locally, use `bundle exec thin start -R config.ru`. Beware that this will not work in rackup development mode, see [this issue](https://github.com/faye/faye/issues/25) for details.

 ================================================================= 

Additional Notes from Gorg:

Do:
1 docker build -t faye_temp .
2 docker run --rm -p 3000:3000 faye_temp
3 Voila! The app is available on localhost:3000

TODO: add docker-compose
