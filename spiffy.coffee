###
 * @preserve
 * Spiffy. A jQuery plugin.
 * Copyright 2013 Eddie Antonio Santos.
 * Licensed under the MIT license.
###

(($) ->

  # Spiffy makes cool slidy things for the ol/ul list element.
  # For best effect, make sure the styles give the affordance of "this thing
  # will slide open".
  #
  # The markup should be:
  # <ul|ol
  #   <li>
  #     <any> This is the header. It can be element -- but it will be made
  #     display: block! </any>
  #
  #     <any> This is the content body. Similarly, this will be made display:
  #     block. These will initially be inline block. </any>
  #   </li>
  #
  #   <li> ... </li>
  # </ul|ol>
  #

  DEFAULT_EFFECT_OPTIONS =
      duration: 'fast'
      easing: 'swing'



  $.fn.spiffy = (options) ->
    # This is the root element
    root = this

    # Manage the options passed in. Effect options is just
    # a jQuery options object.
    effectOptions = options?.effect ? DEFAULT_EFFECT_OPTIONS
    #effectOptions.duration = options?.duration
    #effectOptions.complete = options?.complete
    
    # Basically, all this has to do is add a bunch of on click events, and make
    # the body show/hide on these events.
    
    categories = root.children('li')

    categoryBodies = bindEvents categories, effectOptions

    # Hide all bodies (yes, all of them, if
    if options?.hideAll? is true
      cat.hide() for cat in categoryBodies unless cat.alwaysShow


  # Bind events for each category.
  # "categories" is expected to be a jQuery selector.
  bindEvents = (categories, effectOptions) ->
    console.log effectOptions
    categories.map () ->
      children = $(this).children()
      header = children.first()
      body = children.next()
      # Maybe I should DESTROY elements after this but... nah.
      
      e.css 'display', 'block' for e in [header, body]

      header.click () ->
        body.slideToggle effectOptions

      # Return the bodies of each for further processing
      body



)(jQuery)
