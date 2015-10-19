# Room for Alternatives #

GolfML users may require additional contructs for particular use. GolfML allows for extension of its structure at a limited number of places.

The following hooks are provided to plug in alternative methods of storing information.

### Lists of values ###

Before using the extension mechanism discussed below, it is legitimate to ask whether the proposed value can or cannot be part of the standard. It is very likely that it will be added to the list of valid values for an element or an attribute and there will be no need for this extension mechanism.

When a fixed enumeration is requested, there is always a special value "other" and either a "other" attribute or element to specify alternate values.

For example, if a federation is not enlisted inside GolfML list of handicaping system, it is possible to add it:
```
<handicap handicap-system="other" other="GGA">
  72
</handicap>
```

Please note allowed value `other` assigned to the `handicap-system ` attribute and the _free text_ value `GGA` assigned to the `other` attribute. The `other` attribute is designed to accept the alternate value of the attribute.

### < Any> Element Type ###

As for the values of a list of accepted values, the first discussion to have is to propose an extension of the GolfML document format to handle application specific data.

  1. If the data and its structure is generic, used in other applications and/or web sites, it will be added to the standard.
  1. We will investigate how data can be managed using the _existing_ standard.

Inside GolfML, a limited number of elements have the type `<any>` which allows for literally any content inside the element.

The elements inside GolfML which allow for `<any>` content are described hereafter.

#### Positions ####

A position is a point on a golf course. GolfML offers the GPS localisation of the point but alternative scheme can be used.
For instance, some systems use a local grid map and store (x,y) coordinates to locate point of interest.

```
<position>
  <other>
    <x>24</x>
    <>49</y>
  <other>
</position>
```


#### Course qualification ####

A course qualification is a measure of the complexity of a course. The most common system use a course index value and a slope value. We provided room for alternate systems.

```
<qualification>
  <qualification-other>
    <slopy>1.24</slopy>
    <perfect>72</perfect>
  </qualification-other>
</qualification>
```

#### Hole placement ####

A hole placement is the position of the hole on the green. Official tour use "[pin sheet](http://golfml.googlecode.com/files/pnsheet.jpg)" to locate hole using "paces" from the edge of the green.
We allow for [alternate](http://golfml.googlecode.com/files/pnsheet-model2.jpg) [system](http://golfml.googlecode.com/files/pnsheet-model3.PDF) here as well. Some golf courses use simpler horizontal, vertical or grid division of the green and references to where the hole is located using those grids.

```
<hole-placement>
  <coordinate>
    <green-part>C</green-part>
  </coordinate >
</hole-placement>
```

#### Applications ####

Any application that uses golfml as a data foirmat can use the application element to store application specific information and data.

```
<application dotname="com.scorecard.app" name="scorecard application" xmlns:a="http://app.scorecard.com/golfml">
  <a:preference>
    <a:unit-system>metric</unit-system>
    <a:handicap-method>EGA</handicap-method>
  </a:preference>
</application>
```

## Alternate Storage of Information ##

If a existing GolfML element needs further division, it is possible to use the following schemes: Let us imagine that we need to further divide the player's name into first, middle and last name:
```
<player>
  <name>
first-name: Lion;
middle-name: Eldrick;
last-name: Wedge;
  </name>
</player>
```


# Grouping of elements #

Since XML Schema leaves us with `choice`, `all` and `sequence` to compose elements, we sometimes added an intermediate element to better control cardinality and still offer full flexibily for order of appearance of elements.

For example, instead of
```
<hole>
 ...
  <stroke (...) />
  <stroke (...) />
  <stroke (...) />
 ...
</hole>
```
we added a container element such as:
```
<hole>
 ...
  <stroke-detail>
    <stroke (...) />
    <stroke (...) />
    <stroke (...) />
  </stroke-detail>
 ...
</hole>
```

The parent `stroke-detail` element is not _required_ but its added construnct allows for better cardinality control of the parent element (a `all` construct). On the `hole` element, we can request a `all` construct, with optional `stroke-detail`, and inside the `stroke-detail` element, we require one or more stroke.

# References to Remote GolfML Documents #

By nature, GolfML document are distributed.  While XML technologies address this issue in specific standards  (See XLink, XPoint, XPath 2.0, XQuery), the use of these standard in GolfML would make it a lot more complex.

To address references to remote documents, GolfML offers a simple remote document location attribute where needed.

![http://golfml.googlecode.com/files/remote-doc-example.png](http://golfml.googlecode.com/files/remote-doc-example.png)

Example: File scorecard.xml references a set of tee played from.
```
<round>
  <scorecard>
  <tees remote-golfml-url="http://www.golf-dieppe.com/golfml/course.xml">
   <country-club.name>Golf De Dieppe-Pourville</country-club.name>
   <country-club.address.country.iso3166>FR</country-club.address.country.iso3166>
   <country-club.address.postal-code>76200 Dieppe</country-club.address.postal-code>
   <country-club.golf-course.name>Golf De Dieppe-Pourville</country-club.golf-course.name>
   <country-club.golf-course.tee-set.name>Yellow (Men)</country-club.golf-course.tee-set.name>
  </tees>
  <score>
  ...
```

Example: File located at http://www.golf-dieppe.com/golfml/course.xml, maintained by the golf course
```
<country-club>
  <name>Golf De Dieppe-Pourville</name>
  <address>
    <street>Route de Pourville</street>
    <postal-code>76200 Dieppe</postal-code>
    <country code="FR">France</country>
  </address>
  <contact type="club-house">
    <phone>33-2-35842505</phone>
    </contact>
    <golf-course>
      <name>Golf De Dieppe-Pourville</name>
         <tee-set name="Yellow (Men)" colour="yellow" gender="gentlemen">
         ...
```

### Discussion ###

Please be aware that the remote document can change, move, or disappear.

It is sometimes advised to copy the content of the remote document in a local GolfML document.