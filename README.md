# Anagram Solver in Ruby - remake
A second attempt at creating an Anagram solver in Ruby.

### Instructions
```
Imagine you are in a work environment, and a colleague has asked you to create a simple interactive application which can solve anagrams.

For a word entered by the user, generate a list of all possible anagrams contained in this wordlist.

For instance, if the user enters paste, your program should produce the results pates, peats, septa, spate, tapes, and tepas.

Consider especially how we will know if your code is correct, without having to run it exhaustively against the entire word list.

You may also wish to consider how your code handles edge cases such as hyphenated words.
```

### User Stories

```
As a User, 
So I learn more about words,
I want to know anagrams of a given word

```

### Domain model

Solver 
-> find_anagrams

Printer
-> show_anagrams

### How to use

##### Download the app
```
$ git clone git@github.com:LazySamir/anagram-solver-ruby.git
$ cd anagram-solver-ruby
$ bundle
```

##### Run the app
```
$ cd anagram-solver-ruby
$ irb
$ require './lib/solver.rb'
$ solver = Solver.new
$ solver.find_anagrams('ate')
```

##### Run tests

`$ rspec`
