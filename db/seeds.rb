# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
wilde = Author.create! name: 'Oscar Wilde'
bronte = Author.create! name: 'Charlotte Brontë'
shelley = Author.create! name: 'Mary Wollstonecraft Shelley'
austen = Author.create! name: 'Jane Austen'
stoker = Author.create! name: 'Bram Stoker'
twain = Author.create! name: 'Mark Twain'
dumas = Author.create! name: 'Alexandre Dumas'
dickens = Author.create! name: 'Charles Dickens'
baum = Author.create! name: 'L. Frank Baum'
bronte2 = Author.create! name: 'Emily Brontë'

Book.create! name: 'The Picture of Dorian Gray', author: wilde, year: 1890
Book.create! name: 'Jane Eyre', author: bronte, year: 1847
Book.create! name: 'Frankenstein', author: shelley, year: 1818
Book.create! name: 'Pride and Prejudice', author: austen, year: 1813
Book.create! name: 'Dracula', author: stoker, year: 1897
Book.create! name: 'The Adventures of Huckleberry Finn', author: twain, year: 1884
Book.create! name: 'The Count of Monte Cristo', author: dumas, year: 1845
Book.create! name: 'A Christmas Carol', author: dickens, year: 1843
Book.create! name: 'The Wonderful Wizard of Oz', author: baum, year: 1900
Book.create! name: 'Wuthering Heights', author: bronte2, year: 1847
