group :development do
  gem 'maruku', '~> 0.7'
  gem 'rubocop', '0.35.1'

  # for generating i18n files
  gem 'gettext', '>= 3.2.1', '< 4.0.0', :require => false

  # for generating foreign key migrations
  gem 'immigrant', '~> 0.1'

  gem 'pry'

  gem 'bullet'
  gem "parallel_tests"
end
