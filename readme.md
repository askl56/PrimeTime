PrimeTime 
=========

Description
----------

A command line applicaton which accepts an integer as a paramater which displays a multiplication table of prime numbers, up to and including the given integer. 

Usage
-----

Clone the repo.

Run ```bundle install```

To run the program, run ```main.rb```

By default the app will return a 10 column and row times table of prime numbers. However, by appending ```--count <integer>``` and replacing ```<integer>``` with an integer of your choosing, you can make the table as large or as small as you like. 

In order to check tests and functionality, run ```rspec spec```

Examples
---

Standard output(```main.rb```) with no parameters given should look like this:

```
   |  2|  3|  5|  7| 11| 13| 17| 19| 23| 29|
---|---|---|---|---|---|---|---|---|---|---|
  2|  4|  6| 10| 14| 22| 26| 34| 38| 46| 58|
  3|  6|  9| 15| 21| 33| 39| 51| 57| 69| 87|
  5| 10| 15| 25| 35| 55| 65| 85| 95|115|145|
  7| 14| 21| 35| 49| 77| 91|119|133|161|203|
 11| 22| 33| 55| 77|121|143|187|209|253|319|
 13| 26| 39| 65| 91|143|169|221|247|299|377|
 17| 34| 51| 85|119|187|221|289|323|391|493|
 19| 38| 57| 95|133|209|247|323|361|437|551|
 23| 46| 69|115|161|253|299|391|437|529|667|
 29| 58| 87|145|203|319|377|493|551|667|841|

```

``` main.rb --count 15``` would show:

```
    |   2|   3|   5|   7|  11|  13|  17|  19|  23|  29|  31|  37|
----|----|----|----|----|----|----|----|----|----|----|----|----|
   2|   4|   6|  10|  14|  22|  26|  34|  38|  46|  58|  62|  74|
   3|   6|   9|  15|  21|  33|  39|  51|  57|  69|  87|  93| 111|
   5|  10|  15|  25|  35|  55|  65|  85|  95| 115| 145| 155| 185|
   7|  14|  21|  35|  49|  77|  91| 119| 133| 161| 203| 217| 259|
  11|  22|  33|  55|  77| 121| 143| 187| 209| 253| 319| 341| 407|
  13|  26|  39|  65|  91| 143| 169| 221| 247| 299| 377| 403| 481|
  17|  34|  51|  85| 119| 187| 221| 289| 323| 391| 493| 527| 629|
  19|  38|  57|  95| 133| 209| 247| 323| 361| 437| 551| 589| 703|
  23|  46|  69| 115| 161| 253| 299| 391| 437| 529| 667| 713| 851|
  29|  58|  87| 145| 203| 319| 377| 493| 551| 667| 841| 899|1073|
  31|  62|  93| 155| 217| 341| 403| 527| 589| 713| 899| 961|1147|
  37|  74| 111| 185| 259| 407| 481| 629| 703| 851|1073|1147|1369|
```




