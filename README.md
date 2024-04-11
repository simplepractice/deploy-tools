# deploy-tools

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

## Usage

To see installation and usage of the `deploy-tools` gem, see examples in `Makefile`s in deployable repos.

Example: [simplepractice/simplepractice Makefile L6L16-L20 (ff81396)](https://github.com/simplepractice/simplepractice/blob/ff8139631c546804aae9a9577ee04bc18b21c987/Makefile#L6-L20)

```shell
DEPLOY_TOOLS_VERSION = 0.1.4
# ...
echo "Downloading deploy-tools gem"
wget -O deploy-tools.gem https://github.com/simplepractice/deploy-tools/releases/download/$(DEPLOY_TOOLS_VERSION)/deploy-tools-$(DEPLOY_TOOLS_VERSION).gem
echo "Installing gem"
gem install deploy-tools.gem
rm deploy-tools.gem
```
