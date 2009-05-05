# Intro

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

## Everything is ruby / class

Your views are real classes, written in a real language, allowing:

  * Functional decomposition
  * Inheritance, Composition, Delegation
  * Well-defined semantics for variables, loops, blocks
  * "Dependency injection" via constructor params (aka "Complete Construction")

## Design Goals

  * As little magic as possible while maintaining Rails compatibility
  * All ruby idioms work as expected (e.g. yield)
  * Very testable
  
## Reasons for Erector

A la Erb

  * Erb forces separate files
  * Related code is scattered between ERB, partial, helpers module
  * Refactoring can be hard
  * Auto-escaping is off by default (until Rails 3)
  * Layouts are special, treated differently than partial layouts
  * Yield takes on special semantics
  * Erb using string copies
  * You are responsible for ensuring that tags are closed properly
  * partial templates require passing in local variables or using global instance variables. 
  * Expressing domain-specific language is done via filenames
  * In erb - output is whitespace sensitive, and you can't control indending/whitespace etc..

A la Erector

 * Consistent API - Everything renders to the buffer
 * Refactoring (example)
 * Erector allows allows you to put where you want it
 * Inheritable layouts.
 * Yield works like all other ruby classes
 * Output is streamed for higher performance over string copy
 * The issue of forgetting to close tags goes away.
 * You can create widgets that express domain concepts (Chronological View)
 * Erector allows you to either render the entire buffer in a single line (great for production), or pretty print it with sensible indenting (great for debugging)

## Converting

Erector tool starts you off but doesn't do everything... why?

    erect app/views/foos/*.html.erb

## Challenges

 * Rails inconsistent helpers semantics
 
## Roadmap

 * Generator (probably after the summer of code)

## Examples

Inline Widgets

    html = Erector::Widget.new do
      p "Hello, world!"
    end
    html.to_s          #=> <p>Hello, world!</p>

Inline code has access to enclosing class' methods

