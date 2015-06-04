# zd-test

[![Build Status](https://travis-ci.org/killercentury/zd-test.svg?branch=master)](https://travis-ci.org/killercentury/zd-test)

This test suite is based on Ruby Cucumber.

### Run
```
bundle install
bundle exec cucumber
```

By default, it will use Firefox driver. If you want to run it with other drivers, please change the setting in the env.rb. But due to recent Firefox update, you may experience "Firefox quit unexpectedly".

### Update

The current version just add a clean up hook for each test case in order to do a full cucumber run correctly right after time's up. But you can still look back at the history for an old version if you want.

### Notice

There is a bit issue of the PhantomJS on my Mac. Not fully support for all the test cases. Travis CI will not pass since it use PhantomJS be default.

