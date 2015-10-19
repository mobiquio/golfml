## Golfml PlayerScorecard Updater ##
This Page: 

---

### Purpose ###
This application is a utility that works in collaboration with CourseWriter's "Make Player Scorecard" mode.

Once a player scorecard golfml file has been made by CourseWriter, it is for a particular player at a particular handicap on a named course and tee position.

Any of these parameters can change often (especially the handicap) so PlayerScorecard Updater is a quick utility that enables you to change any of these parameters quickly and easily.

---

#### Why a separate application? ####
It is true that you could use CourseWriter to do this, but Updater is designed for bulk operation (see below: Scenario 1).

---

### Operation Scenarios ###
#### Scenario 1 ####

You wish to produce printable online scorecards for 50 golfers for a competition.
  1. Use CourseWriter to make or import the golfml course file.
  1. In CourseWriter "player scorecard" mode, save the golfml course  for the first player using a meaningful filename e.g. _playerscorecard\_coursename\_playername.xml_
  1. Using Updater, import the file.
  1. Update the player name and player handicap and tick 'update' for only those 2 items
  1. In Updater export the golfml file using the player name in the filename
  1. **Without closing Updater**, repeat steps (4) and (5) until you have the 50 golfml files
  1. Deploy them on your website with the playerscorecard.xsl and golfml.css files.  They will appear as customised scorecards ( [click here to see an example](http://www.charcodelvalle.com/golfmlweb/files/playerscorecard_tenerife_abamagolf.xml))

#### Scenario 2 ####
You have a personal player scorecard golfml file for your home course and wish to update the handicap.

  1. Using Updater, import the file, and change the handicap.  Tick 'update' only for the handicap.
  1. Export (save) the updated file

That's it!

---

### Platforms ###
Lazarus/fpc source code and binaries are available on this project site via the repository or in the downloads section.

The application compiles to:
  * Windows XP and up (both 64 and 32-bit)
    * (Installers available in Downloads section)
  * Linux 64 and 32-bit

It is untested on other platforms.

---

### Screen Shot ###
![http://golfml.googlecode.com/files/playerscorecardupdater.jpg](http://golfml.googlecode.com/files/playerscorecardupdater.jpg)