# jekyll-drill

> 💎 Filter for drilling into an object with a dot-notated string

## Installation

1. Use `bundle add jekyll-drill` to add this to your site's Gemfile.
2. Add this plugin to the `plugins` listed in your `_config.yml` file. For example:
    ```
    plugins:
      - jekyll-drill
    ```

## Usage

Use `drill` as a filter for any dot-notated string, passing in a hash (object) in which the string corresponds to a value.

For example, if you have some Jekyll data in this basic structure:
```
foo: {
  bar: Success!
}
```
And you put this on your page:
```
{{ "foo.bar" | drill: site.data }}
```
Then you should see:
```
Success!
```

## Why?

In the above example, obviously it would be easier to just put this on your page:
```
{{ site.data.foo.bar }}
```

So what is this plugin for??

Mainly the narrow use-case where your data or site configuration needs to contain references to variables, but in a string form, so that they can be dynamically looked-up according to some dynamic switch, like the language of the current page, for example.
