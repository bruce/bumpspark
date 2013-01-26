Bumpspark
=========

[![Build Status](https://travis-ci.org/bruce/bumpspark.png)](https://travis-ci.org/bruce/bumpspark)

Generate "bumpspark"-style sparklines from Ruby & Rails. Bumpsparks
are sparklines which show discrete data points and highlight extremes.

Note: This library is based on _why's `bumpspark' code,
originally discussed and collaborated on at
[RedHanded](http://redhanded.hobix.com/inspect/sparklinesForMinimalists.html).

It has been refactored and built out as a gem suitable for inclusion
in Rails projects (and standalone Ruby code).

Credits
-------

Thanks to the original collaborators:

 * _why (concept, BMP implementation)
 * jzp (png)
 * MenTaLguY (transparency)

Installation
------------

```
gem install bumpspark
```

Usage
-----

### From Rails

Add `bumpspark` as a dependency:

```ruby
gem 'bumpspark'
```

Use `bumpspark_tag` from your views or helpers, passing it the data
points you'd like graphed.

```erb
<%= bumpspark_tag [12, 34, 12, 42, 12, 23] %>
```
    
### From Ruby

Simply create a `Bumpspark::Graph` instance and call `to_png` on it.

```ruby
require 'bumpspark'

graph = Bumpspark::Graph.new [12, 34, 12, 42, 12, 23]

File.open('bumpspark.png', 'wb') do |file|
  file.write graph.to_png
end
```

### Note on Patches/Pull Requests
 
Please check the TODO file for information on things that need doing. 
 
 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Commit, do not mess with rakefile, version, or history.
   (if you want to have your own version, that is fine but
   bump version in a commit by itself I can ignore when I pull)
 * Send me a pull request. Bonus points for topic branches.

### Copyright

Copyright (c) 2009-2012 Bruce Williams, et al. See LICENSE for
details.
