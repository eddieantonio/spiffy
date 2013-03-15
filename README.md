# Spiffy
_A terrible jQuery plugin by Eddie Antonio Santos._

Spiffy turns a boring list of categories into a boring list of
_sliding_ categories! You know what an accordion is? Spiffy is like
that, but with less mutual exclusivity. Because sometimes you want all
of the categories to show, you know?

## Markup

Spiffy assumes that that markup its called on is an HTML list, such as
an `<ol>` or an `<ul>`. Each `<li>` within must have as it first
element: the header (can be any element -- doesn't need to be
a `<header>` element) and immediately preceeding it, a body (also any
element). The following is an example of this:

```html
<ul id="spiffy-example">
  <li>
    <h3> This is the header. It will be clicked on. </h3>

    <p> This is the body. This will be hidden or shown by clicking on
        the header.  </p>
  </li>
</ul>
```

## jQuery

Then, to sic Spiffy on this sucker simply do the following:

```js
$('#spiffy-example').spiffy();
```

And you're done!


## Options

Disclaimer: this "library" is ridiculosly ad hoc, so the options are few, and
kinda written when I need them. This is an example of invoking Spiffy
with _all_ options (at their defaults):

```js
$('#spiffy-example').spiffy({
  hideAll: false,
  effect: {
    ease: 'smooth',
    duration: 'fast'
  }
});
```

 * `hideAll` tells spiffy to collapse all categoies upon start.
   If you want to show some `<li>`, add the attribute
   `data-spiffy-show` to it, to prevent it from being hidden on the
   initial request.
 * `effects` is a jQuery effects object. [Read more at jQuery's
   docs][jQuery effects].

[jQuery effects]: http://api.jquery.com/slideDown/#slideDown-options

