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

if you 
```yaml
security_txt:
  custom_message: |
      # If you would like to report a security issue you may report it to us via bugbounty platform
      Contact: https://
```

## Supported

```yaml
security_txt:
  comment:
  contact:
  expires:
  encryption:
  preferred_languages:
  acknowledgments:
  policy:
  hiring:
  csaf:
  canonical:
  custom_message:
```

> [!TIP]
> See here for information on the column. https://securitytxt.org*