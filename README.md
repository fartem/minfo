<img src="media/logo/ic_lib.png" height="100px" />

Minfo
=============

[![Travis CI](https://img.shields.io/travis/fartem/minfo)](https://travis-ci.org/github/fartem/minfo)
[![Codebeat](https://codebeat.co/badges/86d92f9c-5d21-4af3-adc4-eb56e2974e25)](https://codebeat.co/projects/github-com-fartem-minfo-master)
[![Codecov](https://img.shields.io/codecov/c/github/fartem/minfo)](https://codecov.io/gh/fartem/minfo)
[![Hits-of-Code](https://hitsofcode.com/github/fartem/minfo)](https://hitsofcode.com/view/github/fartem/minfo)

Tiny library for displaying memory usage on Linux (inspired by https://github.com/yegor256/total).

Usage example
-------------

```ruby
memory_shot = Minfo::MemoryInfo.new.memory_shot
puts memory_shot.total.minfo_gbs.value
```
