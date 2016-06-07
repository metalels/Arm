# Arm #

Easy to run the ActiveRecord::Migrater on Windows.

## Usage ##

``
migrate.exe path_to_database.yml<:dbkey(option)> path_to_migrate_dir<:VERSION(option)>
``

## Compile ##

It can be compiled using the ocra in ruby under the windows environment.

tested: ruby 2.1.5, ocra 1.3.5

``
ocra --no-autoload --add-all-core --gemfile Gemfile --gem-full arm.rb
``

## Log ##

active_record.log

## License ##

this software includes the work that is distributed in the MIT License  
this software includes the work that is distributed in the Apache License 2.0

## Author ##

[metalels](https://github.com/metalels)
