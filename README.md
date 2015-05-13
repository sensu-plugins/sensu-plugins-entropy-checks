## Sensu-Plugins-entropy-checks

[![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-entropy-checks.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-entropy-checks)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-entropy-checks.svg)](http://badge.fury.io/rb/sensu-plugins-entropy-checks)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-entropy-checks/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-entropy-checks)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-entropy-checks/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-entropy-checks)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-entropy-checks.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-entropy-checks)
[ ![Codeship Status for sensu-plugins/sensu-plugins-entropy-checks](https://codeship.com/projects/e9fd6db0-db39-0132-92e8-0eed4ec53b27/status?branch=master)](https://codeship.com/projects/79570)

## Functionality

## Files
 * bin/check-entropy
 * bin/metric-entropy

## Usage

## Installation

Add the public key (if you haven’t already) as a trusted certificate

```
gem cert --add <(curl -Ls https://raw.githubusercontent.com/sensu-plugins/sensu-plugins.github.io/master/certs/sensu-plugins.pem)
gem install sensu-plugins-entropy-checks -P MediumSecurity
```

You can also download the key from /certs/ within each repository.

#### Rubygems

`gem install sensu-plugins-entropy-checks`

#### Bundler

Add *sensu-plugins-entropy* to your Gemfile and run `bundle install` or `bundle update`

#### Chef

Using the Sensu **sensu_gem** LWRP
```
sensu_gem 'sensu-plugins-entropy-checks' do
  options('--prerelease')
  version '0.0.1'
end
```

Using the Chef **gem_package** resource
```
gem_package 'sensu-plugins-entropy-checks' do
  options('--prerelease')
  version '0.0.1'
end
```

## Notes
