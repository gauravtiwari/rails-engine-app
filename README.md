# Rails Engine APP

An example rails app with a mountable CMS engine

### Running locally
``` bash
git clone git@github.com:gauravtiwari/rails-engine-app.git
cd rails-engine-app
bundle install
bundle exec rake db:create db:migrate db:seed
rails s
```

Visit localhost:3000/cms

login: admin@example.com, password: password
