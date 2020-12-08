# C (programming language)

## Definitions

GNU:
  stands for GNU's Not Unix! (pronounced guh-new).

GCC:
  is the GNU Compiler Collection

LLVM:
  a compiler infrastructure project, originally created by Vikram Adve and {Chris Lattner}.


## Compilers

tcc:
  is the [Tiny C Compiler](https://bellard.org/tcc/) created by Fabrice Bellard

cc:
  alias of gcc

gcc:
  is the GNU C Compiler from the GCC 

c++:
  alias of g++

g++:
  is the GNU C++ Compiler from the GCC

Clang:
  is a compiler for C, C++, Objective-C and Objective-C++. Built by the {LLVM}.

## Languages

C99:
  the version of the C standard published in 1999.
  added support for single line comments with `//`
  https://en.wikipedia.org/wiki/C99

C11:
  the version of the C standard published in 2011.
  https://en.wikipedia.org/wiki/C11_(C_standard_revision)

C17:
  the version of the C standard published in 2017.
  fixes some issues with C11 without adding any new features.
  https://en.wikipedia.org/wiki/C17_(C_standard_revision)


## Hello World

    $ cat hello.c
    #include <stdio.h>

    int main() {
      printf("hello, world\n");
    }

compile with:

    $ cc hello.c
    $ ./a.out
