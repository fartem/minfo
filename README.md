<img src="media/logo/ic_lib.png" height="100px" />

Minfo
=============

[![Travis CI](https://img.shields.io/travis/fartem/minfo)](https://travis-ci.org/github/fartem/minfo)
[![Codecov](https://img.shields.io/codecov/c/github/fartem/minfo)](https://codecov.io/gh/fartem/minfo)

Tiny library for displaying memory usage on Linux (inspired by https://github.com/yegor256/total).

Usage example
-------------

```ruby
memory_shot = Minfo::MemoryInfo.new.memory_shot
puts memory_shot.free.to_mb
```
