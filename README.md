# zd-test

[![Build Status](https://travis-ci.org/killercentury/zd-test.svg?branch=master)](https://travis-ci.org/killercentury/zd-test)

Run
```
bundle exec cucumber
```

By default, it will use chrome driver. If you want to run it with other drivers, please change the setting in the env.rb. 

Notice:

1. Each test case should be pass on Firefox and Chrome. But not all in one go due to the Capybara is not fully well set.
2. There is a bit issue of the PhantomJS on my Mac. Not fully support for all the test cases. Travis CI will not pass since it use PhantomJS be default.

