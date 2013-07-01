This gem contains the Carepass (www.carepass.com) strategy for OmniAuth.

## How To Use It

So let's say you're using Rails, you need to add the strategy to your `Gemfile`:

```ruby
gem 'omniauth-carepass'
```

You can pull them in directly from github e.g.:

```ruby
gem 'omniauth-carepass', :git => 'https://github.com/matthewbjones/omniauth-carepass.git'
```

Once these are in, you need to add the following to your `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :carepass, "client_id", "client_secret"
end
```

You will obviously have to put in your client_id and client_secret, which you get when you register your app with Carepass.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright (c) 2013 by Matthew B. Jones
