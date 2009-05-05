# Intro

## Everything is ruby / class
  
Your views are real classes, written in a real language, allowing

  * Functional decomposition
  * Inheritance, Composition, Delegation
  * Well-defined semantics for variables, loops, blocks
  * "Dependency injection" via constructor params (aka "Complete Construction")

Compare w/ HAML
Compare w/ Markaby
Completing the vision of Markaby

## Design Goals

  * As little magic as possible while maintaining Rails compatibility
  * All ruby idioms work as expected (e.g. yield)
  * Very testable
  * Output is streamed for higher performance over string copy
  
## Consistent API

 * Everything renders to the buffer
 * Refactoring (example)
 * Erb forces separate files
 * Erector allows allows you to put where you want it

Rails

 * Inconsistent helpers semantics
 * Related code is scattered between ERB, partial, helpers module

## Erector tool

Starts you off but doesn't do everything... why?

Inline Widgets
  html = Erector::Widget.new do
    p "Hello, world!"
  end
  html.to_s          #=> <p>Hello, world!</p>
  * inline code has access to enclosing class' methods

## Reasons to use erector

 * Not rails dependent
 * The library is 100% pure ruby
 * Encapsulation. e.g. Instance variables stay within an instance.
 * It is easy to refactor code with simple method extraction than it is to create rails helper methods.
 * I can create declarative widgets with classes or a more terse api (see the Table example).
 * My widgets can better express a domain language.
 * Extracted methods follow the same rules as normal ruby objects.  In Erb, partial templates require passing in local variables or using global instance variables.  
 * Inheritable layouts.
 * The issue of forgetting to close tags goes away.
 * Text is html escaped by default.
 * I prefer class and module based hierarchies than template-based hierarchies.

