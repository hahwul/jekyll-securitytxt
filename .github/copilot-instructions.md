# Copilot Instructions for jekyll-securitytxt

This repository contains a Jekyll plugin for generating [security.txt](https://www.rfc-editor.org/rfc/rfc9116) files (RFC9116).

## Project Overview

- **Language**: Ruby
- **Framework**: Jekyll plugin
- **Ruby Version**: >= 2.6.0
- **Jekyll Version**: ~> 4.0

## Project Structure

```
lib/
  jekyll/
    securitytxt.rb       # Main generator class
    securitytxt/
      version.rb         # Version information
    template.html        # Liquid template for security.txt
spec/                    # RSpec tests
```

## Code Conventions

### Ruby Style
- Follow [RuboCop](https://rubocop.org/) style guidelines (see `.rubocop.yml`)
- Use `# frozen_string_literal: true` at the top of all Ruby files
- Use double quotes for strings
- Prefer `unless` over `if !condition`

### Testing
- Use RSpec for testing
- Tests are located in `spec/` directory
- Run tests with `bundle exec rake` or `bundle exec rspec`

### Jekyll Plugin Pattern
- The plugin uses `Jekyll::Generator` to generate pages
- Generated file is placed at `.well-known/security.txt`
- Uses `PageWithoutAFile` to create virtual pages
- Template uses Liquid templating syntax

## Development Commands

```bash
# Install dependencies
bundle install

# Run tests
bundle exec rake

# Run RuboCop for linting
bundle exec rubocop
```

## Configuration Options

The plugin supports the following `_config.yml` options under `security_txt`:

| Option | Description |
|--------|-------------|
| `comment` | Comment at the top of security.txt |
| `contact` | Contact information (array) |
| `expires` | Expiration date |
| `encryption` | Encryption key URLs (array) |
| `preferred_languages` | Preferred languages (e.g., "ko, en") |
| `acknowledgments` | Acknowledgments URLs (array) |
| `policy` | Security policy URL |
| `hiring` | Security hiring URLs (array) |
| `csaf` | CSAF URL |
| `canonical` | Canonical URL |
| `custom_messages` | Custom message lines (array) |

## References

- [RFC 9116 - security.txt](https://www.rfc-editor.org/rfc/rfc9116)
- [securitytxt.org](https://securitytxt.org)
- [Jekyll Plugin Documentation](https://jekyllrb.com/docs/plugins/)
