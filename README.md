[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Object Inheritence in Ruby (versus JavaScript)

## Prerequisites

-

## Objectives

By the end of this, students should be able to:

-   Create a ruby class
-   Have a class inherit from another class
-   Have multiple class inheriterance chains

## Preparation

1.  [Fork and clone](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
    this repository.
1.  Install dependencies with `bundle install`.

## Outline

You already know how Javascript object inheritence works just in case you don't
remeber here are some examples.  Remember that whole prototype thing?

```javascript
User.prototype.totalDistance = function() {
  let result = 0;

  for (let i = 0; i < this.runs.length; i++) {
    result += this.runs[i].distance;
  }

  return result;
}
```

In the case above we created an internal object on the User object from which other
instances of the User object can inherit.  Now all instances of User can share in
the common property of `totalDistance`

But now in Ruby we have classes which we've already gone over.  Ruby classes have
different ways of inheriting.


## Additional Resources

- **[Links to a variety of offical language and api documentation](https://www.ruby-lang.org/en/documentation/)**

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.