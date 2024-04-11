# deploy-tools

A ruby library/gem with deploy tools.

## Development

Install development dependencies.

```shell
bundle install
```

Run rubocop (including on the `.gemspec` file).

```shell
bundle exec rubocop
```

Build the gem. (Example for `v0.2.0`)

```shell
$ gem build deploy-tools.gemspec
WARNING:  licenses is empty, but is recommended. Use an license identifier from
https://spdx.org/licenses or 'Nonstandard' for a nonstandard license,
or set it to nil if you don't want to specify a license.
WARNING:  See https://guides.rubygems.org/specification-reference/ for help
  Successfully built RubyGem
  Name: deploy-tools
  Version: 0.2.0
  File: deploy-tools-0.2.0.gem
```

Create a [release on the Github repo](https://github.com/simplepractice/deploy-tools/releases). Attach the built gem file as a release asset.
