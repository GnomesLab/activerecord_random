## Introduction

ActiveRecord Random is a Ruby Gem that empowers your ActiveRecord Models with the ability to return a random record without using SQL RAND().

## Compatibility

Developed to be compatible with

* **Rails:** v3.0.x
* **Ruby:** v1.8.7, v1.9.1 or v1.9.2

## Installation

You can install ActiveRecord Random straight from Rubygems. Thanks to Bundler you just need to add this to your Gemfile

<pre>
  gem 'activerecord_random'
</pre>

## Examples

Scenario: You have a collection of Questions (model name = Question) and you wish to randomly select one of them.

<pre>
  Question.random
</pre>

That simple

## Documentation

This gem's documentation documentation is available at **TODO**

## License

Copyright (c) 2010 Gnomeslab, Lda., released under the MIT license. For more information regarding MIT license, please check our [MIT license file](http://github.com/GnomesLab/activerecord_random/blob/master/MIT-LICENSE)

## Feedback, issues and contributions

If you have an issue with this Gem please create a ticket in our [issue tracker](http://gnomeslab.lighthouseapp.com/projects/63976-activerecord_random/overview).

Feel free to fork this project at any time and submit your changes (along with their respective tests).

Should you just wish to provide feedback or say hi, you can always contact us directly through diogo (dot) almeida (at) gnomeslab (dot) com
