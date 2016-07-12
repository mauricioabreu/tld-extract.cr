# TLD Extract

TLD parser written in Crystal lang.

With this project you can separate the domain and subdomain of any URL
using the [Public Suffix List](https://publicsuffix.org/).

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  tldextract:
    github: mauricioabreu/tld-extract.cr
```


## Usage

### API

To parse an URL you need to require the `tldextract` shard and
call the main function `extract` passing the URL as parameter.

It will return a `Struct` containing `subdomain`, `domain` and `suffix`.

See the example below.

```crystal
require "tldextract"
extracted = TLDExtract.extract("https://www.github.com")
puts extracted.subdomain # www
puts extracted.domain # github
puts extracted.suffix # com
```


TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/mauricioabreu/tld-extract.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [mauricioabreu](https://github.com/mauricioabreu) Mauricio de Abreu Antunes - creator, maintainer
