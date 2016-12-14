# ActivitiMirror

activiti_mirror is a tool, which use to upload activit file to qiniu and download it

想法来源于： http://bbs.yundianjia.net/d/225-activiti


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activiti_mirror'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activiti_mirror

## Usage

命令行使用： 

```
Usage: activiti_mirror [options]

activiti_mirror is a tool, which use to upload activit file to qiniu and download it!

v0.1.0

Options:
    -h, --help                       Show command line help
        --version                    Show help/version info
        --verbose                    Be verbose
    -H REMOTE_SERVER_ADDRESS,        Host server Address
        --host-address
        --log-level LEVEL            Set the logging level
                                     (debug|info|warn|error|fatal)
                                     (Default: info)
```

编程使用： 

```
options = {
  version: '5.22.0',
  hosts: %w(username@192.156.23.56)
}

ActivitiMirror.command options
```

使用例子： 


```
上传成功!
链接为: http://ognvcf5x6.bkt.clouddn.com/bbs_image/activiti-5.22.0.zip
```

一些CDN 链接： 

```
http://ognvcf5x6.bkt.clouddn.com/bbs_image/activiti-5.22.0.zip
http://ognvcf5x6.bkt.clouddn.com/bbs_image/activiti-5.21.0.zip
http://ognvcf5x6.bkt.clouddn.com/bbs_image/activiti-5.19.0.zip
http://ognvcf5x6.bkt.clouddn.com/bbs_image/activiti-5.18.0.zip
http://ognvcf5x6.bkt.clouddn.com/bbs_image/activiti-5.17.0.zip
http://ognvcf5x6.bkt.clouddn.com/bbs_image/activiti-5.16.4.zip
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/activiti_mirror. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

