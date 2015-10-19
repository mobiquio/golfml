## Current Work and Investigations ##


### Long element names used often ###

Construct
```
  <position>
    <position-gps>
       <lat>...
```
appears often in GPS-mapped golf course. Must be shortened.

Descreased size from 2.5 to 1.3MB for single golf course survey.

#### Suggestion ####

Proposed alternatives:
```
  <position>
    <gps>
      <lat>...
```

Or
```
   <position>
     <gps lat=".." lon=".." ../>
```

The latter case would violate our element/attribute data/metadata principle but is very compact.

Non "markup" oriented structure should be avoided at all cost. For example, structures like those encountered in SVG or KML [should be avoided](http://www.cafeconleche.org/books/effectivexml/chapters/11.html):
```
<polygon points="350,75 379,161 469,161 397,215 423,301 
                 350,250 277,301 303,215 231,161 321,161" />
```

#### Impact ####

Minimal at this stage. XML/XSL code refectoring quite easy.

#### See Also ####

We will track other long element names that appear frequently in documents.

### «Summary» Elements ###

Numerous applications not only keep detailed score but also synthetic summary.

Examples:
  * In golf course tee set description, next to individual par, a _total par_ is also kept.
  * In round scores, next to stoke counts per hole, a total score is kept.

#### Suggestion ####

Move _summary elements_ into leading element as attibute.
This would violate our element/attribute data/metadata principle but is very compact.

## History ##

**26-OCT-2009** GolfML 0.9: Wiki cleaned. All documents updated. GolfML 0.9RC1 released.

**18-FEB-2010** GolfML 0.9: Minor Changes to element or attribute names or types. No change to structure. This is 0.9RC2.

One more RC expected before version 1.0.