# middleman-vendor_bower

Adds the bower directory to the sprockets path so that you can require bower components. Relies on the `.bowerrc` on the root of the project to locate the right directory.

See [Bower config] for more information.

## Dependencies

* middleman-core (3.3+)

## Installation
Add to your `Gemfile` and then run `bundle install`:

```ruby
gem 'middleman-vendor_bower'
```

Then activate the extension in your `config.rb` file:

```ruby
activate :vendor_bower
```

Make sure to specify the **directory** option in your `.bowerrc` file:

```json
{
  "directory": "vendor/assets/bower/"
}
```

## Usage

Reference your components by using a relative path from your bower directory.

### CSS

```css
/*
 *= require normalize-css/normalize
 */
```

### SASS

```scss
@import 'normalize-css/normalize';
```

### Javascript

```js
//= require angular/angular
```

## License

Copyright (c) 2015 Mariano Cavallo. MIT Licensed, see [LICENSE] for details.

[middleman]: http://middlemanapp.com
[Bower config]: http://bower.io/docs/config/
[LICENSE]: https://github.com/mcavallo/middleman-vendor_bower/blob/master/LICENSE
