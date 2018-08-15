[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Object Inheritance, Composition, and Mixins in Ruby

## Prerequisites

- [ga-wdi-boston/ruby-object](https://git.generalassemb.ly/ga-wdi-boston/ruby-object)
- [ga-wdi-boston/ruby-object-inheritance](https://git.generalassemb.ly/ga-wdi-boston/ruby-object-inheritance)

## Objectives

By the end of this, developers should be able to:

- Give two reasons why inheritance and Mixins are desirable.
- Write a mixin.
- Describe the difference between inheritance, composition, and mixins.

## Preparation

1. Fork and clone this repository.
 [FAQ](https://git.generalassemb.ly/ga-wdi-boston/meta/wiki/ForkAndClone)
1. Create a new branch, `training`, for your work.
1. Checkout to the `training` branch.
1. Install dependencies with `bundle install`.

## Overview

In a large application, it's common for different areas of the app to require similiar
functionality. To save time and mental bandwidth, we try to reuse the same code in
multiple places whenever possible. How should we achieve that?

We don't want to copy and paste, because it's error prone and goes against the
idea of keeping our code DRY. In object-oriented languages like Ruby, we have a
few choices -- we can use inheritance, composition, or mixins. Let's look at how
these concepts differ and we when we might prefer one over another.

| Inheritance   | Composition   | Mixin |
|:-------------:|:-------------:|:-----:|
| Car `is-a` Vehicle | Car `has-a` Driver | Car `behaves-as` Motorized |

## Ruby Inheritance

Let's discuss the code below:

```rb
# define Class Car
class Car
  attr_reader :engine
  def initialize
    @engine = 1200
  end
end

# define Class Ford
class Ford < Car
end

focus = Ford.new
puts focus.engine
```

Whenever I create a new instance of a `Ford`, Ruby looks for a method called
`initialize`. In this case, it doesn't find that method on the `Ford` class, so
it finds the method on it's parent `Car`. `focus` is an instance of the `Car`
class,  so *it inherits all of methods defined in the `Car` class.*

## Ruby Composition

```rb
# A class of albums
class Album
  attr_accessor :tracks

  def initialize
    @tracks = []
  end
end

# A class of songs
class Song
  def initialize(title)
    @title = title
  end
end

lemonade = Album.new
lemonade.tracks << Song.new('Formation')
```

Sometimes, we want to build a more complex object by using specific instances of
other objects. We can use composition to achieve this. In this case, we will add
 instances of the `Song` class to the tracks of our album.

## Ruby Mixins

We want to make chunks of code that are reusable across multiple classes.
These "chunks" are called `modules`. Take a look at the code below:

```rb
# define module Sleeper
module Sleepable
  def go_to_sleep
    # code here
  end
end

# define Class Person
class Person
  include Sleepable
end

# define Class Computer
class Computer
  include Sleepable
end
```

In the code above, we defined a `module` called Sleepable. We also define a
`Person` class and a `Computer` class. By using the keyword `include` followed
by the name of the module (in this case `Sleepable`) we have access to the methods
we defined in our module.  This is great because it allows us to keep our code
*D-R-Y*, not to mention it allows us to be lazy developers (the good kind of
lazy).

## What should I use

- `is-a`: A Ford *is a* car.
  - Inheritance creates a *subclass* - a class that has
access to all of the methods of it's parent class. You should use it if your
class is a *type* of it's parent class, like Ford is a type of car. A Ford is a
more specialized, less abstract version of the Car class.

- `has-a`: An Album *has a* song on it.
  - We use composition when class instances
contain instances of other classes.

- `behaves-as`: Mixins are used when a *behavior* is shared between various
classes.
  - People and computers both share the sleep behavior in the example
above. People and computers are very different - it wouldn't make sense for them
to inherit from the `Sleepable` class.

### Class or mixin

When deciding whether to write a class or mixin, ask yourself if what you're
writing will need an `initialize` function. If you do, you should be writing a
class. Classes have state and behavior. Mixins are only for behavior - they
don't hold state.

## Lab: Write a Mixin

Open the file `lib/equine.rb`

- Create a class `Equine` with a method `eat_grass`.
- Create three classes `Horse`, `Zebra`, and `Mule` that inherit from `Equine`.
- Create a module `Rideable` with a method `ride`.
- Include that method in the `Horse` and `Mule` classes by "mixing in" the
  `Rideable` module.

Use `bin/rake test` to test your code.

## Additional Resources

- [Re-use in OO: inheritance, composition, and Mixins](http://naildrivin5.com/blog/2012/12/19/re-use-in-oo-inheritance.html)
- [Useful links to documentation](https://www.ruby-lang.org/en/documentation/)
- [Stack Overflow: Inheritance](http://stackoverflow.com/questions/15754768/when-do-we-use-ruby-module-vs-using-class-composition)

## [License](LICENSE)

1. All content is licensed under a CC­BY­NC­SA 4.0 license.
1. All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
