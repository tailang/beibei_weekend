# BeibeiWeekend

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/beibei_weekend`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation
1. install ruby 2.0.0+
2. `$ gem install specific_install`
3. `$ gem specific_install https://github.com/tailang/beibei_weekend.git`

## Usage

* create workspace  
`$bbweekend -c workspace #workspace的名字可自己指定`  
`cd workspace`  
```
.
└── resource
    ├── base.css
    ├── config.yml
    └── template.md
```
* config config.yml and write yourself week mail template
* generate mail  
`bbweekend -g 2017-2-14-曹平-周报` 
* write mail
* send mail  
`bbweekend -s 2017-2-14-曹平-周报.md`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/😈caoping/beibei_weekend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

