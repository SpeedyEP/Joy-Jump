# Joy-Jump

Plans ------
5 levels

	- Lvl 1: Starting on the earth
		○ Bounce off tree brances, buildings, ect
    
	- Lvl 2: sky
		○ Clouds, airplanes, birds
    
	- Lvl 3: space
		○ Spaceships, asterooids, stars
    
	- Lvl 4: moon
		○ Apollo themed things
    
	- Lvl 5: planets
------------
Remember!!
All pde files in the same folder can access each other. But we will need to point to parent and sibling folders to get data from those folders.
Below is an example:

PImage img;
String[] lines;

void setup() {
  size(640, 360);

  // Move up one folder from the sketch directory
  String parentPath = sketchPath("..");

  // Access a file directly in the parent folder
  img = loadImage(parentPath + "/example.png");

  // Or access a file inside a sibling/sub-folder of the parent
  lines = loadStrings(sketchPath("../shared_assets/notes.txt"));
}
