AsciiDoc
========

Home Page: https://asciidoc.org/
Source Code: https://github.com/asciidoc/asciidoc-py3

The `asciidoc` command translates files to HTML and DocBook markups. DocBook can then be converted to other formats such as PDF or EPUB.

Example:
--------------------------------------------------------------------------------

Main Header
===========
Optional Author Name <optional@author.email>
Optional version, optional date
:Author:    AlternativeWayToSetOptional Author Name
:Email:     <AlternativeWayToSetOptional@author.email>
:Date:      AlternativeWayToSetOptional date
:Revision:  AlternativeWayToSetOptional version

There are two different ones to create headers: underlines and equal symbols.

Level 1
-------
Text.

Level 2
~~~~~~~
Text.

Level 3
^^^^^^^
Text.

Level 4
+++++++
Text.

== Level 1
Text.

=== Level 2
Text.

==== Level 3
Text.

===== Level 4
Text.

Paragraphs are just regular lines. You can add a dot to make a title.

.Optional Title

Usual
paragraph.

.Optional Title

 Literal paragraph.
  Must be indented.

.Optional Title

[source,perl]
die 'connect: '.$dbh->errstr;

Not a code in next paragraph.

== Blocks

.Optional Title
----
*Listing* Block

Use: code or file listings
----

.Optional Title
[source,perl]
----
# *Source* block
# Use: highlight code listings
# (require `source-highlight` or `pygmentize`)
use DBI;
my $dbh = DBI->connect('...',$u,$p)
    or die "connect: $dbh->errstr";
----

.Optional Title
****
*Sidebar* Block

Use: sidebar notes :)
****
