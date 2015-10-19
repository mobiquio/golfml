The purpose of this project is to design a professional looking yardage book and scorecard for a golf course.

## Collect Information ##

The first step is to collect information about the golf course: Name, address, and contact information such as telephone number.

## Design in Google Earth ##

Spot the golf course in Google Earth. Start drawing polygons around elements of the golf course: Fairways, greens, buildings, bunkers, lake, woods...

The secret of easy yardage book creation resides in conventions used to speed up and automate conversions between data format. We recommend using the following folder structure for Google Earth:

```
  |
  +- Country Club Name
  |   |
      +- Golf Course Name
      |     |
      |     +- Facilities
      |     |    |
      |     |    +O Club house
      |     |    +O Practice area
      |     |    ...
      |     |    |
      |     +- Hole 1
      |     |    |
      |     |    +O Green
      |     |    +O Tee Black
      |     |    +O Fairway
      |     |    +O Green-side bunker
      |     |    +O Tree
      |     |       ...
      |     +- Hole 2
      |     |     |
      |           +- (...) Placemarks and polygons for second hole
      |        ...
      +- Golf Course No 2 Name
            |
      |     +- Facilities
      |     |    
            +- Hole 1
               ...
  |
  +- Another Country Club Name
      |
      ...
```

This design accomodates for several country clubs, hosting one or more golf courses. It also permits to group objects per hole for easy identification.

Please note that Google Earth also allows you to color-code polygons (fill and stroke colors, opacity...), and choose different icons for placemarks. This information is not used or stored for GolfML.

![http://golfml.googlecode.com/files/hole15-GE.png](http://golfml.googlecode.com/files/hole15-GE.png)

### Placemark Naming ###

The name of polygons and placemark is also important. To be automagically recognized, the polygon or placemark name should contain the following string:

| **Name contains** | **Recognized as** |
|:------------------|:------------------|
| tee               | tee               |
| fairway           | fairway           |
| green             | green             |
| fringe            | fringe            |
| trees             | trees             |
| tree              | tree              |
| bush              | bush              |
| semi              | semi-rough        |
| rough             | rough             |
| heavy             | heavy-rough       |
| trap              | trap              |
| bunker            | trap              |
| greenside         | greenside-trap    |
| fairway-trap      | fairway-trap      |
| front             | front-water       |
| water             | water             |
| lateral           | lateral-water     |
| path              | path              |
| building          | building          |
| construction      | building          |
| obstruction       | obstruction       |
| out-of-bound      | out-of-bound      |
| oob               | out-of-bound      |
| contour           | hole-contour      |
| aim               | aim               |
| dogleg            | aim               |

In Google Earth, save the country club folder to a KML file.

## Transformation to GolfML ##

Using the sample kml2golfml.xsl style sheet, simply transform the KML file.

The result of the transformation will be a simple GolfML document with some missing information.

Using a text or an XML editor, you can add the missing information: Address, contact information, and more important, information from a scorecard: Tee sets, pars, yardages, and handicaping information.

## Transformation to SVG ##

Finally, using the golfml2svg.xsl stylesheet, you can transform the GolfML document to one or more XML SVG files with the resulting images.

![http://golfml.googlecode.com/files/hole15-golfml.png](http://golfml.googlecode.com/files/hole15-golfml.png)

In the above interactive SVG graphics, the golf ball and the red target can be moved to get distance estimates in yards or meters.

A few parameters at the begining of the XSL stylesheet allow you to choose to generate a map of the entire golf course, or a drawing of a single hole, or generate a separate SVG graphic file for each hole.

We even added a SVG filter to add (fake) hill shading to the picture.

![http://golfml.googlecode.com/files/hole15-hillshading.png](http://golfml.googlecode.com/files/hole15-hillshading.png)

The [Download area](http://code.google.com/p/golfml/downloads/list) of the GolfML project contains some sample graphics.

The [source code area](http://code.google.com/p/golfml/source/browse/) contains XSL transformation sheets.