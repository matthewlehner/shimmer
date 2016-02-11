# Shimmer

Asset pipeline gem for generating shimmer font for icons in Sparkle CMS.

Add new svgs to `icons/` and run `rake font:prepare` to build the font.

## Installation

Add this line to your application's Gemfile:

    gem 'shimmer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shimmer

## Usage

Dependencies are fontforge, eot-utils, ttfautohint, xquartz, and svgo.

To install:

* `brew install fontforge --with-python
* `brew install eot-utils`
* `npm install -g svgo`
* `bundle install`

Configuration is in `icons/fontcustom.yml`

## Adding new Icons
1. Add the SVG to the `icons` directory.
2. Run `rake font:prepare`
3. Bump gem version by one point in `lib/sparklets/version.rb`
4. Commit and push to Github
5. Update the `sparklets` gem in your target repo `bundle update sparklets`

*Tip*: Preview the generated font by opening
`app/views/styleguide/sparklets-preview.html`

## Sketch Templates

Use `src/icon-template.sketch` for layout out icons. Guides equate to
cap-height, x-height, and baseline. Centring icons within these guides will help
them to appear centred beside any text with the same line height and font size.
