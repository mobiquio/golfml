This page introduce conventions used in the Golf Markup Language and its definition.

## GolfML Schema ##

### XML Schema Namespace ###

The GolfML namespace is

`xmlns="http://code.google.com/p/golfml"`

### XML Schema Constructs ###

The name of XML Schema types, attributeGroups, groups, etc. are `CamelCase `.

Example:

  * [GolfCourse](CGolfCourse.md) is a type for `golf-course` elements
  * [Media](CMedia.md) is a type for `media` elements

### Special Types ###

**Enumeration** and **list** types ends with Enum.

Example:

  * [MediaTypeEnum](SMediaTypeEnum.md)

**Relational keys** are prefixed with `PK_` and `FK_`, **identifier** are prefixed with `ID_` and **references to identifiers** are prefixed with `REF_`.

Example:

  * Player\_PK, Player\_FK
  * [IDPlayer](GID_Player.md), [REF\_Player](CREF_Player.md)

### Root Element ###

There is a single, unique top-level element called [golfml](Egolfml.md).

(The GolfML XML Schema is designed according to the ["Garden of Eden" design pattern](http://developers.sun.com/jsenterprise/archive/nb_enterprise_pack/reference/techart/design_patterns.html).)

## GolfML Document ##

Elements and attributes are named using English language common golf terms and vocabulary.
In general, use elements for data that will be produced or consumed by an application and attributes for metadata.
A good rule of thumb is to use elements for nouns and attributes for adjectives.

```
  <length units="meters">269</length>
```

### Naming Conventions ###

#### Elements and Types ####

Elements and XML schema types should be defined using dash ('-') separated lower case words.
Element and type names can be any length. They should be meaningful.

Example:

  * `golf-courses`
  * `tee-time`


#### Attributes ####

Attributes should be defined using dash ('-') separated words.
Example:

  * length-units
  * media-type


#### Plurals ####

Collections of elements of the same type can be organized into a parent element. The name of the parent element should be a plural form of the children elements.
Example:

  * `holes` is a collection of 1 or more `hole`


## See Also ##

[Identifiers and References](IdentifiersAndReferences.md)