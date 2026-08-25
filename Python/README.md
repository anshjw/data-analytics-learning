# Python

## 1. Introduction

**In this course I have learned:**

- How to adopt general coding techniques and best practices in your projects;
- How to process strings;
- How to use object-oriented programming in Python;
- How to import and use Python modules, including the math, random, platform, os, time, datetime, and calendar modules;
- How to create and use your own Python modules and packages;
- How to use the exception mechanism in Python;
- How to use generators, iterators, and closures in Python;
- How to process files.

*The course is divided into four modules:*

- Module 1
    Modules, Packages and PIP;
- Module 2
    Strings, string and list methods, and exceptions;
- Module 3
    Object-Oriented Programming;
- Module 4
    Miscellaneous (generators, iterators, closures, file streams, processing text and binary files, the os, time, datetime, and calendar module).

## Modules in python  

- Computer code has a tendency to grow. We can say that code that doesn't grow is probably completely unusable or abandoned. A real, wanted, and widely used code develops continuously, as both users' demands and users' expectations develop in their own rhythms.

- A code which is not able to respond to users' needs will be forgotten quickly, and instantly replaced with a new, better, and more flexible code. Be prepared for this, and never think that any of your programs is eventually completed. The completion is a transition state and usually passes quickly, after the first bug report. Python itself is a good example how the rule acts.

- Growing code is in fact a growing problem. A larger code always means tougher maintenance. Searching for bugs is always easier where the code is smaller (just as finding a mechanical breakage is simpler when the machinery is simpler and smaller).

- Moreover, when the code being created is expected to be really big (you can use a total number of source lines as a useful, but not very accurate, measure of a code's size) you may want (or rather, you will be forced) to divide it into many parts, implemented in parallel by a few, a dozen, several dozen, or even several hundred individual developers.

- Of course, this cannot be done using one large source file, which is edited by all programmers at the same time. This will surely lead to a spectacular disaster.

### Importing a module

- To make a module usable, you must import it (think of it like of taking a book off the shelf). Importing a module is done by an instruction named import. Note: import is also a keyword (with all the consequences of this fact).

- Let's assume that you want to use two entities provided by the math module:

    - a symbol (constant) representing a precise (as precise as possible using double floating-point arithmetic) value of π (although using a Greek letter to name a variable is fully possible in Python, the symbol is named pi - it's a more convenient solution, especially for that part of the world which neither has nor is going to use a Greek keyboard)
    - a function named sin() (the computer equivalent of the mathematical sine function)
    ```
    import module
    ```
    ```
    import math
    import sys
    import math, sys
    ```

### Namespace

- To continue, you need to become familiar with an important term: namespace. Don't worry, we won't go into great detail - this explanation is going to be as short as possible.

- A namespace is a space (understood in a non-physical context) in which some names exist and the names don't conflict with each other (i.e., there are not two different objects of the same name). 
- We can say that each social group is a namespace - the group tends to name each of its members in a unique way (e.g., parents won't give their children the same first names).

![Namespace](Images/0e5edc4152eb4f718be38933251b2d01.png)

### Importing Modules Continued
```
import math


def sin(x):
    if 2 * x == pi:
        return 0.99999999
    else:
        return None


pi = 3.14

print(sin(pi/2))
print(math.sin(math.pi/2))
```

### Aliasing

If you need to change the word **math**, you can introduce your own name, just like in the example:

```
import math as m
    
print(m.sin(m.pi/2))
```

### Selected python modeule

1. A function named dir() can show you a list of the entities contained inside an imported module. For example:

    ```
    import os
    dir(os)
    ```
    prints out the list of all the os module's facilities you can use in your code.

2. The math module couples more than 50 symbols (functions and constants) that perform mathematical operations (like sine(), pow(), factorial()) or providing important values (like π and the Euler symbol e).

3. The random module groups more than 60 entities designed to help you use pseudo-random numbers. Don't forget the prefix "random", as there is no such thing as a real random number when it comes to generating them using the computer's algorithms.

4. The platform module contains about 70 functions which let you dive into the underlaying layers of the OS and hardware. Using them allows you to get to know more about the environment in which your code is executed.

5. Python Module Index https://docs.python.org/3/py-modindex.html is a community-driven directory of modules available in the Python universe. If you want to find a module fitting your needs, start your search there.

## Modules and Packages

- a module is a kind of container filled with functions - you can pack as many functions as you want into one module and distribute it across the world
- of course, it's generally a good idea not to mix functions with different application areas within one module (just like in a library - nobody expects scientific works to be put among comic books), so group your functions carefully and name the module containing them in a clear and intuitive way 
- e.g., don't give the name arcade_games to a module containing functions intended to partition and format hard disks
![Diagram](Images\ada86cb502a94eccb75497b1c0c31208.png)

## Creating own modules
**Folder structure**
![Folder](Images\4fd776a35a09444594fcdf201c99df89.png)
- [Download the modules ](packages)for the practice.

1. While a module is designed to couple together some related entities such as functions, variables, or constants, a package is a container which enables the coupling of several related modules under one common name. Such a container can be distributed as-is (as a batch of files deployed in a directory sub-tree) or it can be packed inside a zip file.


2. During the very first import of the actual module, Python translates its source code into a semi-compiled format stored inside the pyc files, and deploys these files into the __pycache__ directory located in the module's home directory.


3. If you want to tell your module's user that a particular entity should be treated as private (i.e. not to be explicitly used outside the module) you can mark its name with either the _ or __ prefix. Don't forget that this is only a recommendation, not an order.


4. The names shabang, shebang, hasbang, poundbang, and hashpling describe the digraph written as #!, used to instruct Unix-like OSs how the Python source file should be launched. This convention has no effect under MS Windows.


5. If you want convince Python that it should take into account a non-standard package's directory, its name needs to be inserted/appended into/to the import directory list stored in the path variable contained in the sys module.


6. A Python file named __init__.py is implicitly run when a package containing it is subject to import, and is used to initialize a package and/or its sub-packages (if any). The file may be empty, but must not be absent.

