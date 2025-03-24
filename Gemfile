source 'https://rubygems.org'
# ruby '2.4.10' # 2.3.x was not working on my macOS machine.  2.4.x seems to work fine.
ruby '2.7.8'
gem 'rails', '~> 5.1.7' # https://stackoverflow.com/a/46581314
# gem 'rails', '~> 5.2.8.1' # https://stackoverflow.com/questions/50917362/undefined-method-halt-callback-chains-on-return-false, but this breaks things for some reason
gem 'nokogiri', '~> 1.15.7' # For ruby 2.7.8
gem 'loofah', '~>2.19.1' # https://www.ruby-forum.com/t/i-am-using-ruby-version-2-3-8-and-rails-version-5-2-6-to-develop-my-application-since-yesterday-i-am-getting-the-error-i-tried-to-find-the-occurrence-of-this-nokogiri-html4-in-my-application-but-i-didnt-find-any-of-the-occurrence-like-this/263852/4
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'binding_of_caller'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '= 4.0.0.alpha6' # FIXME: Anything later, and the styling breaks.
gem 'high_voltage'
gem 'mysql2', '~> 0.5.6'
group :development do
  gem 'better_errors'
  gem 'rails_layout'
end

gem 'markerclustererplus-rails'
gem 'gon'
gem 'tether-rails'
gem 'json'
gem 'meta-tags'
gem 'pg'
gem 'twitter'
gem 'picky'
gem 'sitemap_generator'
gem 'ruby-stemmer', '>=0.8.3', :require => 'lingua/stemmer'
gem 'htmlentities'
gem 'will_paginate', '~> 3.1.0'
gem "font-awesome-rails"
gem 'popupoverlay-rails'
gem "chartkick"
gem 'social-share-button'

gem 'rails_12factor', group: :production

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
