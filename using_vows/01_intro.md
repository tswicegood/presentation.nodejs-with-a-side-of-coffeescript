!SLIDE
# Bonus Material

!SLIDE

# Vows
## Async BDD Testing

!SLIDE  image
# Vows - Beautiful Site

<img style="width:640px; margin: 0 auto;" src="/image/using_vows/vows.screenshot.png" />

!SLIDE
# Install
## `npm install vows`

!SLIDE
# Example Suite

    @@@ javascript
    vows = require "vows"
    assert = require "assert"

    exports.test = vows.describe "Division by Zero",
        'when dividing a number by zero':
            topic: -> 42 / 0
            'we get Infinity': (topic) ->
                assert.equal topic, Infinity

        'but when dividing zero by zero':
            topic: -> 0 / 0
            'we get a value which':
                'is not a number': (topic) ->
                    assert.isNaN topic
                'is not equal to itself': (topic) ->
                    assert.notEqual topic, topic


!SLIDE
# Grokking Vows

!SLIDE
# Suite

!SLIDE
# Batches

!SLIDE
# Contexts

!SLIDE
# Sub-Contexts
## Contexts in your Contexts

!SLIDE
# Topics

!SLIDE
# Vows

!SLIDE
# Annotated Suite

    @@@ javascript
    exports.test = vows.describe "Division by Zero", // Suite
        // Batch hidden here because the syntax of
        // CoffeeScript allows us to specify it with
        // indention instead of explicit constructs.

        'when dividing a number by zero':            // Context
            topic: -> 42 / 0                         // Topic
            'we get Infinity': (topic) ->            // Vow
                assert.equal topic, Infinity

        'but when dividing zero by zero':            // Context
            topic: -> 0 / 0                          // Topic
            'we get a value which':                  // Sub
                'is not a number': (topic) ->        // Vow
                    assert.isNaN topic
                'is not equal to itself': (topic) -> // Vow
                    assert.notEqual topic, topic



