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
  
Not rails dependent

Inline Widgets
  html = Erector::Widget.new do
    p "Hello, world!"
  end
  html.to_s          #=> <p>Hello, world!</p>
  * inline code has access to enclosing class' methods

