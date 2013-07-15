# Rack::AvvoIgnite
This Rack middleware will easily integrate your Rack-based app with Avvo Ignite's website tracking feature.

## Usage

### Rails
In your `application.rb`:

```
config.middleware.use Rack::AvvoIgnite, {code: [YOUR_TRACKING_CODE]}
```

### Generic Rack app
In your `config.ru`:

```
require 'rack-avvo_ignite'
use Rack::AvvoIgnite, {code: [YOUR_TRACKING_CODE]}
```

## What's my tracking code?

If you were given a javascript url to include you can find it embedded in the javascript url. For example, `//ia.avvo.com/tracker/FOO.js` would mean `FOO` is your tracking code.

