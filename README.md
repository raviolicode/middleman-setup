middleman-setup
===============

Application setup for a Middleman app to deploy to gh-pages or BitBucket.

Just create a Middleman app:

```
middleman init my_site
```

And setup a new git repository for your code and generated pages to be ready to deploy.


# Installation

Add to the Gemfile of your Middleman site:

```ruby
gem "middleman-setup"
```

and run `bundle install`.

## Configuration

Make sure `git` is installed, and that you have already created a new repository on GitHub Pages or BitBucket under your name.
Add the following to your `config.rb`:

```ruby
activate :setup do |setup|
  setup.repo = "git@github.com:your_username/your_username.github.io.git" # read/write URL of your repo

  # Optional Settings
  # setup.source = "source"
end
```

# Usage

```
$ middleman setup
```

After setting up the repo, you will work in the `source` branch.

# Deploy

You can use [middleman-deploy](https://github.com/tvaughan/middleman-deploy) to deploy with a single command:

```
$ middleman deploy
```

## Basic configuration

To use with `middleman-deploy`, in your `Gemfile` add:

```ruby
gem "middleman-deploy"
```

In `config.rb` add:

```ruby
activate :deploy do |deploy|
  deploy.method       = :git
  deploy.build_before = true
  deploy.branch       = "master"    # Use "gh-pages" if your repo is a project site
end
```

See usage and configuration for middleman-deploy at [middleman-deploy project site](https://github.com/tvaughan/middleman-deploy).

# TODO



