# Views kind of suck

  * Refactoring can be hard because of related code is scattered between views/partials and helpers module
  * You are responsible for ensuring that tags are closed properly
  * Expressing domain-specific language is done via filenames

  * Nested layouts require 2 different techniques: layouts, partial layouts
  * Auto-escaping is off by default (until Rails 3)

# How do we solve these?

  * As little magic as possible while maintaining Rails compatibility
  * All ruby idioms work as expected (e.g. yield)
  * Very testable

# Erector to the rescue

* Refactoring can be hard because of related code is scattered between views/partials and helpers module
* You are responsible for ensuring that tags are closed properly
* Expressing domain-specific language is done via filenames

* Nested layouts require 2 different techniques: layouts, partial layouts
* Auto-escaping is off by default (until Rails 3)

## What is Erector

Erb

    <div class="content">
      <div class="left column">
        <h2>Welcome to our site!</h2>
        <%= print_information %>
      </div>
      <div class="right column">
        <%= render "shared/sidebar" %>
      </div>
    </div>

HAML

    #content
      .left.column
        %h2 Welcome to our site!
        %p= print_information
      .right.column= render :partial => "sidebar"

Erector

    class MyView < Erector::RailsWidget
      def content
        div :class => "content" do
          div :class => ["left", "column"] do
            h2 "Welcome to our site!"
            print_information
          end
          div :class => ["right", "column"] do
            rawtext helpers.render("shared/sidebar")
          end
        end
      end
    end

### Everything is ruby / class

Your views are real classes, written in a real language, allowing:

  * Functional decomposition
  * Inheritance, Composition, Delegation
  * Well-defined semantics for variables, loops, blocks
  * "Dependency injection" via constructor params (aka "Complete Construction")
  * Entire stack is independant

### Design Goals

  
## Common Problems

  <!-- you've all seen these -->

  * Refactoring can be hard because of 
    * Consistent API - Everything renders to the buffer
    * Related code is scattered between ERB, partial, helpers module
    * Erector allows allows you to put where you want it

  * You are responsible for ensuring that tags are closed properly
    * The issue of forgetting to close tags goes away.
  
  * Nested layouts require 2 different techniques: layouts, partial layouts
    * Inheritable layouts via standard inheritance

  * Expressing domain-specific language is done via filenames
    * You can create widgets that express domain concepts (Chronological View)

  * Auto-escaping is off by default (until Rails 3)
    * Auto-escaping is on by default

## Speaker notes

  * Output is streamed for higher performance over string copy
  * Erector allows you to either render the entire buffer in a single line (great for production), or pretty print it with sensible indenting (great for debugging)
  * Yield works like all other ruby classes

### How to Converting

Erector tool starts you off but doesn't do everything... why?

    erector app/views/foos/*.html.erb

## Roadmap

 * Generator (probably after the summer of code)
 * Better integration with Rails - inconsistent helpers semantics make this very hard

## Examples

Inline Widgets

    html = Erector::Widget.new do
      p "Hello, world!"
    end
    html.to_s          #=> <p>Hello, world!</p>

Inline code has access to enclosing class' methods

