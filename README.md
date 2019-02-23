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

Suppose that "foo.bar" was an unknown string, contained within a site configuration variable in `_config.yml`, like:
```
my_var: "foo.bar"
```
If your goal is to get the contents of `site.data.foo.bar`, then you'll need something like this plugin, because `{{ site.data[site.myvar] }}` will not work.

Using this plugin, you would get at the contents of `site.data.foo.bar` by using:
```
{{ site.my_var | drill: site.data }}
```
