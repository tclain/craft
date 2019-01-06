# craft

TODO: An early (and pre-alpha) implementation of the raft consensus protocol in crystal, no deps.

Why ? Because I want to learn crystal and love distributed systems

## Installation

1. Add the dependency to your `shard.yml`:
```yaml
dependencies:
  craft:
    github: rclain/craft
```
2. Run `shards install`

## Usage

```ruby
require "craft"

cluster = Craft::Cluster.new(current: Node.new 'addr1', peers: [Node.new 'addr2', Node.new 'addr3'])

if cluster.current.leader?
  cluster.propagate_state "hello"
end
```


## Development

```sh
git clone github.com/tclain/
```

## Contributing

1. Fork it (<https://github.com/tclain/craft/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Timothee Clain](https://github.com/tclain) - creator and maintainer
