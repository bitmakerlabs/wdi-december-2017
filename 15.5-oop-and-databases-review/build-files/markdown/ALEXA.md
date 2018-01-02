# Object Oriented Programming and Databases Review

# Agenda

### OOP (Object Oriented Programming) <small>(55 min)</small>

- Classes and Instances
- State and Behaviour
- Variables Scope

### Databases <small>(55 min)</small>

- SQL
- SELECT, INSERT, UPDATE, DELETE
- ORM

## Starring ...

![](the-simpsons-title-card.jpg)

# OOP

OOP (Object Oriented Programming) is a programming Paradigm

Other common programming paradigms are Procedural and Functional

Even though Ruby is an OOP language, when we program Ruby, we likely use a combination of OOP, procedural and functional styles

OOP gives us model to conceptualize our program as we often experience the world through objects

Programs are made up of objects which hold both behavior and state

What objects make up The Simpsons TV show?

### Seasons

### Episodes

### Actors

### Characters

### Catchphrases

### Quotes

## Seasons as objects

<div>
  <div style='border: 2px solid blue; display: inline-block; margin: 20px; padding: 20px;'>Season 1<br><i>1989-1990</i></div>
  <div style='border: 2px solid blue; display: inline-block; margin: 20px; padding: 20px;'>Season 2<br><i>1990-1991</i></div>
  <div style='border: 2px solid blue; display: inline-block; margin: 20px; padding: 20px;'>Season 3<br><i>1991-1992</i></div>
  <div style='border: 2px solid blue; display: inline-block; margin: 20px; padding: 20px;'>Season 4<br><i>1992-1993</i></div>
</div>
<hr>
<div>
  <div style='border: 2px solid blue; display: inline-block; margin: 20px; padding: 20px;'>Season 26<br><i>2014-2015</i></div>
  <div style='border: 2px solid blue; display: inline-block; margin: 20px; padding: 20px;'>Season 27<br><i>2015-2016</i></div>
  <div style='border: 2px solid blue; display: inline-block; margin: 20px; padding: 20px;'>Season 28<br><i>2016-2017</i></div>
  <div style='border: 2px solid blue; display: inline-block; margin: 20px; padding: 20px;'>Season 29<br><i>2017-2018</i></div>
</div>

## Characters as objects

![](simpsons.jpg)

Programs are made up of objects which hold both ***behavior*** and ***state***

 **State*** is what the object knows -- the value of its attributes

 **Behavior*** is what the object can do (and this will often affect state)

## Imagine Homer ...

![](homer-doh.jpg)

 **State*** could be his **name** (Homer) and his **catchphrase** ("D'oh!")

 **Behavior*** could be him speaking his catchphrase<br>
(i.e. displaying *"D'oh!"* on the screen)

# OOP

Programs are made up of classes and instances

A **class** can be throught of as a template, blueprint, container, and / or set of instructions

Instances are objects built from classes

The process of creating an instance from a class is called instantiation

For each class, there can be many instances

<div style='border: 10px solid chocolate; display: inline-block; margin: 20px; padding: 20px;'>

(class) <b>Character</b>

<br>

    <div style='border: 2px solid blue; margin: 20px; padding: 10px;'>(instance)<br>name: Homer <br>catchphrase: "Do'h!"</div>
    <div style='border: 2px solid blue; margin: 20px; padding: 10px;'>(instance)<br>name: Marge <br>catchphrase: "I don't think that's a very good idea."</div>
    <div style='border: 2px solid blue; margin: 20px; padding: 10px;'>(instance)<br>name: Bart  <br>catchphrase: "I Didn't Do It!"</div>
    <div style='border: 2px solid blue; margin: 20px; padding: 10px;'>(instance)<br>name: Lisa  <br>catchphrase: "If anyone wants me, I'll be in my room."</div>

</div>

# OOP

Ruby exercise:

1. Let's create a Ruby program with a Character class that has a name and catchphrase for each instance.

2. Let's create four instances -- one for Lisa, Bart, Homer, and Marge.

3. Let's create some behaviour, and have each for them say their catchphrase when we call `speak` on them.

4. Finally, let's create a little scene with them randomly saying their catchphrases.

Variables have various scope throughout objects:

  - ***global***
    - scope: available throughout the whole program
    - rarely used in ruby
    - prefixed with a `$`

  - ***class variables***:
    - scope: available throughout a class and all the instances of the class
    - prefixed with a `@@`

  - ***instance variables***:
    - scope: available to all methods through a single instance
    - prefixed with a `@`

  - ***local variable***:
    - scope: only available in a single method (or block)
    - no prefix

# OOP

## Variable Scope

![](ruby-variable-scope.jpg)

## Variable Scope

(another diagram)

![](ruby-variable-scope-x-4.jpg)

- accessors (readers and writers) are used to allow other objects to affect the state of an object

- objects can have additional methods, which can be used to pass messages to each other

- methods have arguments, which are values that can be passed into them

- subclasses are classes that inherit from other classes

  - they have all the methods of their superclasses
  - they will usually their own methods as well

Let's refactor our character program to use subclasses instead of instances.

# Databases

Databases are permanent -- if we quit the program and turn off our computer and boot it back up, the data will be restored

Databases allow us to save data in a structured way

Databases are made up of many tables

Tables are like worksheets in a spreadsheet

Tables are made up of columns and rows

Columns have a at least a name and datatype

Most tables have a primary key that uniquely identifies each row

Columns can have other attributes, for example, attributes to force uniqueness or auto increment as more rows are added

Each row in a database represents a record

Each row is made up fields. a field is what holds the actual data (as is analogous to a spreadsheet cell)

Let's take a look at The Simpsons as a database

<img style='margin-left: -20px;' src='diagram.png'>

There are many database programs, loosely divided into SQL and NoSQL

We'll primarily be working with SQL databases throughout this course

SQL stands for Structured query Language

SQL databases allow us to have complicated relationships and allows us to maintain the integrity of the data

SQL is common for relational databases, that is databases in which there are coded relationships between the tables

Common SQL databases are SQLite, Postgres, MySql

Today we'll work with SQLite, as it's the simplest to get started with.

SQLite stores the entire database in a single file

SQLite is the second most popular software in use (it's used by all major operating systems, including mac os, linux, windows, ios, android) and used by many applications -- for example, some web browsers use it to store the bookmarks.

SQLite is the default database for new rails projects

SQLite isn't ideal for supporting applications that have more than one user at a time (i.e. web applications that live on the Internet)

Soon we'll start using Postgres, which can support multiple users at once and is very common for Rails applications

Databases are separate from your code, and usually aren't checked into a git repository

SELECT - read from the database

INSERT - add to the database

UPDATE - modify an existing row in the database

DELETE - remove from the database

An understanding of SQL will be transferable across many programming languages and frameworks

However, at least in this program, your interaction with the database will usually be done through an ORM (Object Relational Mapper)

The ORM Rails uses is called ActiveRecord

ActiveRecord maps tables to Ruby classes, rows to Ruby instances, fields to methods on the ruby instances

Let's try to wire up our Simpsons app to use a database instead.

# Recap

### OOP

- Classes and Instances

- State and Behaviour

- Variables Scope

### Databases

- SQL

- SELECT, INSERT, UPDATE, DELETE

- ORM
