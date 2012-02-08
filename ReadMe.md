Title:	ImportDatedPhoto-A2E  
Author:	Sean Korzdorfer  
Date:	10:17:23 Fri Jan 27 2012  
Version:	1.0  

# Overview
This script is inspired by Brett Kelly's [evernote-dated-photo package] which works great if you don't process the images with Aperture.[^1] Unfortunately, exported versions of Aperture 3 master photos do not retain the date-created EXIF data. Using Aperture's Image Date/Time Name Format, this script will create a note for each individual photo, and set created date of the note to the date the photo was taken.

It also includes a few customizable options:

* Set a default Evenote notebook
* Trash the image files after imported to Evernote
* Generate a file naming Dialogue Box to name photos as they are being imported
 
## Requirements

* The photo filenames must use Aperture's Image Date/Time Name Format
* The photo filename must follow the naming convention : \[Image Date\] \[Delimiter\] \[Image Time\]

## Installation 

Place the script in one of the following directories:  

	~/Library/Scripts/
  
	~/Library/Scripts/Applications/Evernote/
	
## Use Case

I use my iPhone to take a ton of pictures of my newborn son. I use Evernote to privately share photos of him with 
my family.

### Problems

* Uploading photos taken with an iPhone 4s can quickly eat up 1GB of storage.
* Photos taken with an iPhone 4s are quite large on the screen, and the Evernote client sometimes distorts the full sized photos.
* It only takes a little over 100 photos taken with the  iPhone 4s to really slow down the Evernote Desktop client.

### Work Flow

1. I use Aperture to import all my photos from my Photo Stream. 
2. I edit any photos which require adjustments.
3. I use a custom Aperture Export Preset to resize the *versions* of the photo's I want to add to Evernote.[^2]
4. I use a custom Aperture Name Format which defines the naming convention for this script to work.[^3]
5. I export versions of the Aperture masters to a tmp directory.
6. I use this script to import the photos to Evernote.
----
<!-- FootNotes -->

[^1]:I actually reuse some of his code in this script  

[^2]:An example of my export preset setting: [http://www.e0l.co/E23Q](http://www.e0l.co/E23Q)

[^3]:An example of my file naming setting: [http://www.e0l.co/E23Q](http://www.e0l.co/E246)

<!-- Reference Links -->
[evernote-dated-photo package]:https://github.com/inkedmn/evernote-dated-photo 

<!-- References to images -->
[file-naming]: http://f.cl.ly/items/0N331a0R3A233v1I3Q0v/File%20Naming.jpg
[export-preset]: http://cl.ly/E23Q/Image%20Export.jpg