# Jekyll::Securitytxt

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
  contact: "mailto:hahwul@gmail.com"
  canonical: "https://www.hahwul.com/.well-known/security.txt"
  preferred_languages: "ko, en"
```
