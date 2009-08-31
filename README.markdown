# Bumpspark

Generate "bumpspark"-style sparklines from Ruby & Rails.

Note: This library is based on _why's `bumpspark' code, originally discussed and
collaborated on at [RedHanded] [1].  It has been refactored and built out as
a gem suitable for inclusion in Rails projects (and standalone Ruby code).

Bumpsparks are sparklines which show discrete data points and highlight 
extremes.  If you like Tufte and _why, you'll probably like these.

## Credits

Thanks to the various collaborators on _why's original post:

* _why (concept, BMP implementation)
* jzp (png)
* MenTaLguY (transparency)

## Installation

    sudo gem install bruce-bumpspark --source http://gems.github.com

## Usage

### From Rails

1. Include the gem as a dependency in `config/environment.rb`
       
        config.gem 'bruce-bumpspark', :lib => 'bumpspark', :source => 'http://gems.github.com'
       
2. Use `bumpspark_tag` from your views or helpers, passing it the data points
   you'd like graphed.

        <%= bumpspark_tag [12, 34, 12, 42, 12, 23] %>
    
## From Ruby

Simply create a `Bumpspark::Graph` instance and call `to_png` on it.

    require 'bumpspark'
    
    graph = Bumpspark::Graph.new [12, 34, 12, 42, 12, 23]
    
    File.open('bumpspark.png', 'wb') do |file|
      file.write graph.to_png
    end

## Note on Patches/Pull Requests
 
Please check the TODO file for information on things that need doing. 
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but
   bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2009 Bruce Williams, et al. See LICENSE for details.

[1]: http://redhanded.hobix.com/inspect/sparklinesForMinimalists.html
