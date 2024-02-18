# jekyll-securitytxt

Jekyll plugin for [security.txt](https://www.rfc-editor.org/rfc/rfc9116)[^1]

[^1]: RFC9116

## Installation
```ruby
group :jekyll_plugins do
  # ...
  gem "jekyll-securitytxt"
end
```

## Usage

```yaml
# in _config.yml
security_txt:
  comment: If you find any security issues on this site, please contact me!
  contact: "mailto:<YOUR-EMAIL>"
  preferred_languages: "ko, en"
```

> [!TIP]
> See here for information on the column. https://securitytxt.org*