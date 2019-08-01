# launch

A quick upgrade to a shell function -- launch a bunch of processes in the
background, ignoring their output. I use this in a VM on a local system
via `ssh -X` for launching Chromium and other GUI apps.

## Installation

Download the binary.

## Usage

At a command line, type "launch" followed by a series of comma-separated
commands. For example,
```sh
launch chromium-browser https://crystal-lang.org/api/latest, gvim src/launch.cr
```
would launch Chromium and open it to the Crystal docs, and open gvim on the
source file. Note the position of the comma.

## Compiling From Source

 - Have crystal installed
 - Clone the repo, or a fork
 - From the repository directory, run `shards build`

## Contributing

1. Fork it (<https://github.com/dscottboggs/launch/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Scott Boggs](https://github.com/dscottboggs) - creator and maintainer
