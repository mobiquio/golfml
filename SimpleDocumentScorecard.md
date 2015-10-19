Here is an example of a very simple GolfML document.

While designed to be processed by computer programs, it is readable by golfers.

```
<?xml version="1.0" encoding="utf-8"?>
<golfml xmlns="http://code.google.com/p/golfml"  version="0.9">

  <country-club>
  ...
  </country-club>

  <player gender="male">
    <name>Lion Wedge</name>
    <date-of-birth>1980-12-30</date-of-birth>
    <current-handicap handicap-system="EGA">8.6</current-handicap>
    <contact type="mobile">
      <phone>+00-000-0000000</phone>
    </contact>
    <contact type="home">
      <email>golf.markup.language@gmail.com</email>
    </contact>
    <home-country-club>
      <name>The Club at Oak Hill</name>
    </home-country-club>
        
    <round>
      <date>2009-09-29T08:30:00</date>
      <scorecard>
        <tees>
          <country-club.name>The Club at Oak Hill</country-club.name>
          <country-club.address.country.iso3166>US</country-club.address.country.iso3166>
          <country-club.address.postal-code>00000</country-club.address.postal-code>
          <country-club.golf-course.name>The Lakes</country-club.golf-course.name>
          <country-club.golf-course.tee-set.name>Back</country-club.golf-course.tee-set.name>
        </tees>

        <handicap-strokes>10</handicap-strokes>

        <score>
          <hole number="1">
            <strokes>6</strokes>
            <putts>2</putts>
            <points>1</points>
            <statistics>
              <fairway>1</fairway>
              <green-in-regulation>0</green-in-regulation>
            </statistics>
            <stroke-detail>
              <stroke number="1">
                <golf-club>
                  <uid application.dotname="mgs">Driver</uid>
                </golf-club>
                <landing>fairway</landing>
                <precision>
                  <front-back>0</front-back>
                  <left-right>1</left-right>
                </precision>
              </stroke>
              <stroke number="2">
                <golf-club>
                  <uid application.dotname="mgs">3-wood</uid>
                </golf-club>
                <landing>fairway</landing>
                <precision>
                  <front-back>1</front-back>
                  <left-right>-1</left-right>
                </precision>
              </stroke>
              <stroke number="3">
                <golf-club>
                  <uid application.dotname="mgs">6-iron</uid>
                </golf-club>
                <landing>bunker</landing>
                <precision>
                  <front-back>0</front-back>
                  <left-right>-1</left-right>
                </precision>
              </stroke>
              <stroke number="4">
                <golf-club>
                  <uid application.dotname="mgs">sand-wedge</uid>
                </golf-club>
                <landing>green</landing>
                <precision>
                  <front-back>-1</front-back>
                  <left-right>0</left-right>
                </precision>
              </stroke>
              <stroke number="5">
                <golf-club>
                  <uid application.dotname="mgs">putter</uid>
                </golf-club>
                <landing>green</landing>
                <precision>
                  <front-back>-1</front-back>
                  <left-right>1</left-right>
                </precision>
              </stroke>
              <stroke number="6">
                <golf-club>
                  <uid application.dotname="mgs">putter</uid>
                </golf-club>
                <landing>hole</landing>
                <precision>
                  <front-back>0</front-back>
                  <left-right>0</left-right>
                </precision>
              </stroke>
              ...
            </stroke-detail>
          </hole>
          <hole number="2"> <!-- hole in one -->
            <strokes>1</strokes>
            <putts>0</putts>
            <points>5</points>
            <statistics>
              <fairway>1</fairway>
              <green-in-regulation>1</green-in-regulation>
            </statistics>
            <stroke-detail>
              <stroke number="1">
                <golf-club>
                  <uid application.dotname="mgs">Sand Wedge</uid>
                </golf-club>
                <landing>hole</landing>
                <precision>
                  <front-back>0</front-back>
                  <left-right>0</left-right>
                </precision>
              </stroke>
              ...
            </stroke-detail>
          </hole>
          ...

        </score>
      </scorecard>
    </round>
  </player>
</golfml>
```