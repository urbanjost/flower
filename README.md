### [fpm-tools](https://github.com/search?q="fpm-tools"%20in:topic%20language:fortran):[flower](https://urbanjost.github.io/flower/flower.1.html)

Build flower(1) using fpm(1):
```bash
git clone https://github.com/urbanjost/flower
cd flower
fpm install
flower --help
```
flower(1) is a program built with fpm that very simplistically converts a
free-format Fortran source file to lowercase leaving comments and quoted
strings as-is.

NAME
====

**flower**(1f) - \[DEVELOPER\] change case of free-format Fortran file
or remove code or remove comments (LICENSE:PD)

SYNOPSIS
========

**flower** \[ **--stat**\|\[ \[-**-nocomment**\|**--nocode**\]
\[-**-toupper**\]\|\[-**-verbose**\] \] **FILENAMES**(s)
\]\|\[-**-help**\|**--version**\|**--usage**\]

DESCRIPTION
===========

1.  **flower**(1) is primarily intended to allow for a preference of
    lowercase characters when working with older uppercase-only FORTRAN
    this program will convert the code to lowercase once the code has
    been converted to free-format Fortran source file format.

    It can also convert the code to uppercase. In each case comments and
    quoted text are left as-is.

    This is a basic program that writes its results to stdout and does
    not recognize Hollerith strings and preprocessor directives as
    special cases.

    Tabs should be expanded before processing the file.

    **flower**(1) depends on the input being plain standard free-format
    Fortran so the output should be carefully checked.

2.  It may also be used to generate simple statistics about what
    percentage of the code is comments.

3.  **flower**(1) can also be used to strip the comments from the code.

4.  Lastly, the code can be removed so the comments can be used for
    documentation or run through utilities like spell checkers.

OPTIONS
=======

**FILENAME**

:   Fortran source file which is to be converted to lowercase

****--nocomment****

:   remove comment characters

****--nocode****

:   remove code characters

****--toupper****

:   convert code characters to uppercase instead of lowercase

****--verbose****

:   turn on verbose mode including file statistics. Note that if
    **--nocomment** and **--nocode** are selected **--verbose** is
    implied.

****--stat****

:   is the same as **--nocomment** **--nocode** **--verbose**, meaning
    no other output than file statistics will be produced. If present,
    **--nocomment**, **--nocode**, and **--verbose** are ignored.

****--help****

:   display help text and exit

****--version****

:   display version text and exit

EXAMPLES
========

Typical usage

         # convert all code to lowercase
         flower sample.f90 > sample_new.f90

         # show stats for files measuring percent of comments
         flower --stat *.f90 *.F90

         # check spelling on comments
         flower --nocode *.f90 *.F90|spell

         # grep code ignoring comments
         flower --nocomment *.f90 *.F90|grep -iw contains

EXIT STATUS
===========

The following exit values are returned:

> **0**
>
> :   no differences were found
>
> **1**
>
> :   differences were found
