FasdUAS 1.101.10   ��   ��    k             l      ��  ��   # ############################################################################
Title:	ImportDatedPhoto-A2E
Author:	Sean Korzdorfer
Date:	10:17:23 Fri Jan 27 2012
Version:	1.0

# Overview
This script is inspired by  Brett Kelly's evernote-dated-photo package
(https://github.com/inkedmn/evernote-dated-photo) which works great if you don't process the images with 
Aperture. Unfortunatly, exported versions of Aperture 3 master photos do not retain date-created EXIF data.
Using Aperture's Image Date/Time Name Format, this script will create a note for each individual photo, and set 
created date of the note to the date the photo was taken.

It also includes a few customizable options:

* Set a default Evenote notebook
* Trash the image files after imported to Evernote
* Generate a File naming Dialogue Box to name photos as they are being imported
 
## Requirements

* The photo filenames must use Aperture's Image Date/Time Name Format
* The phot filename must follow the naming convention : [Image Date][Delimiter][Image Time]

## Installation

Place the script in your Scripts directory: 

	~/Library/Scripts/
Or
	~/Library/Scripts/Applications/Evernote/
	
## Use Case

I use my iPhone to take a ton of pictures of my newborn son. I use Evernote to privatly share photos of him with 
my family.

### Problems

* Uploading photos taken with an iPhone 4s can quickly eat up a 1GB.
* photos taken with an iPhone 4s appear quite large on the screen.
* It only takes a little over 100 photos taken with the  iPhone 4s to really slow down the Evernote Desktop client.

### Work Flow

* I use Aperture to import all my photos from my photostream. 
* I edit any photos which need Adjustments
* I use a custom Aperture Export Preset to resize the *versions* of the photo's I want to add to Evernote. (http://e0l.co/E23Q)
* I use a custom Aperture Name Format which defines the nameing convention for this script to work. (http://www.e0l.co/E246)
* I use this script to import the photos to Evernote.

############################################################################      � 	 	:   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 T i t l e : 	 I m p o r t D a t e d P h o t o - A 2 E 
 A u t h o r : 	 S e a n   K o r z d o r f e r 
 D a t e : 	 1 0 : 1 7 : 2 3   F r i   J a n   2 7   2 0 1 2 
 V e r s i o n : 	 1 . 0 
 
 #   O v e r v i e w 
 T h i s   s c r i p t   i s   i n s p i r e d   b y     B r e t t   K e l l y ' s   e v e r n o t e - d a t e d - p h o t o   p a c k a g e 
 ( h t t p s : / / g i t h u b . c o m / i n k e d m n / e v e r n o t e - d a t e d - p h o t o )   w h i c h   w o r k s   g r e a t   i f   y o u   d o n ' t   p r o c e s s   t h e   i m a g e s   w i t h   
 A p e r t u r e .   U n f o r t u n a t l y ,   e x p o r t e d   v e r s i o n s   o f   A p e r t u r e   3   m a s t e r   p h o t o s   d o   n o t   r e t a i n   d a t e - c r e a t e d   E X I F   d a t a . 
 U s i n g   A p e r t u r e ' s   I m a g e   D a t e / T i m e   N a m e   F o r m a t ,   t h i s   s c r i p t   w i l l   c r e a t e   a   n o t e   f o r   e a c h   i n d i v i d u a l   p h o t o ,   a n d   s e t   
 c r e a t e d   d a t e   o f   t h e   n o t e   t o   t h e   d a t e   t h e   p h o t o   w a s   t a k e n . 
 
 I t   a l s o   i n c l u d e s   a   f e w   c u s t o m i z a b l e   o p t i o n s : 
 
 *   S e t   a   d e f a u l t   E v e n o t e   n o t e b o o k 
 *   T r a s h   t h e   i m a g e   f i l e s   a f t e r   i m p o r t e d   t o   E v e r n o t e 
 *   G e n e r a t e   a   F i l e   n a m i n g   D i a l o g u e   B o x   t o   n a m e   p h o t o s   a s   t h e y   a r e   b e i n g   i m p o r t e d 
   
 # #   R e q u i r e m e n t s 
 
 *   T h e   p h o t o   f i l e n a m e s   m u s t   u s e   A p e r t u r e ' s   I m a g e   D a t e / T i m e   N a m e   F o r m a t 
 *   T h e   p h o t   f i l e n a m e   m u s t   f o l l o w   t h e   n a m i n g   c o n v e n t i o n   :   [ I m a g e   D a t e ] [ D e l i m i t e r ] [ I m a g e   T i m e ] 
 
 # #   I n s t a l l a t i o n 
 
 P l a c e   t h e   s c r i p t   i n   y o u r   S c r i p t s   d i r e c t o r y :   
 
 	 ~ / L i b r a r y / S c r i p t s / 
 O r 
 	 ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / E v e r n o t e / 
 	 
 # #   U s e   C a s e 
 
 I   u s e   m y   i P h o n e   t o   t a k e   a   t o n   o f   p i c t u r e s   o f   m y   n e w b o r n   s o n .   I   u s e   E v e r n o t e   t o   p r i v a t l y   s h a r e   p h o t o s   o f   h i m   w i t h   
 m y   f a m i l y . 
 
 # # #   P r o b l e m s 
 
 *   U p l o a d i n g   p h o t o s   t a k e n   w i t h   a n   i P h o n e   4 s   c a n   q u i c k l y   e a t   u p   a   1 G B . 
 *   p h o t o s   t a k e n   w i t h   a n   i P h o n e   4 s   a p p e a r   q u i t e   l a r g e   o n   t h e   s c r e e n . 
 *   I t   o n l y   t a k e s   a   l i t t l e   o v e r   1 0 0   p h o t o s   t a k e n   w i t h   t h e     i P h o n e   4 s   t o   r e a l l y   s l o w   d o w n   t h e   E v e r n o t e   D e s k t o p   c l i e n t . 
 
 # # #   W o r k   F l o w 
 
 *   I   u s e   A p e r t u r e   t o   i m p o r t   a l l   m y   p h o t o s   f r o m   m y   p h o t o s t r e a m .   
 *   I   e d i t   a n y   p h o t o s   w h i c h   n e e d   A d j u s t m e n t s 
 *   I   u s e   a   c u s t o m   A p e r t u r e   E x p o r t   P r e s e t   t o   r e s i z e   t h e   * v e r s i o n s *   o f   t h e   p h o t o ' s   I   w a n t   t o   a d d   t o   E v e r n o t e .   ( h t t p : / / e 0 l . c o / E 2 3 Q ) 
 *   I   u s e   a   c u s t o m   A p e r t u r e   N a m e   F o r m a t   w h i c h   d e f i n e s   t h e   n a m e i n g   c o n v e n t i o n   f o r   t h i s   s c r i p t   t o   w o r k .   ( h t t p : / / w w w . e 0 l . c o / E 2 4 6 ) 
 *   I   u s e   t h i s   s c r i p t   t o   i m p o r t   t h e   p h o t o s   t o   E v e r n o t e . 
 
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #     
  
 l     ��������  ��  ��        p         ������ 0 thedate theDate��        p         ������ 0 thetime theTime��        p         ������ 0 	namedelim 	nameDelim��        p         ������ 0 thenotebook theNotebook��        l     ��������  ��  ��        l     ��  ��      CUSTOMIZATIONS --     �   $   C U S T O M I Z A T I O N S   - -       l     ��������  ��  ��      ! " ! l     �� # $��   #    EXPECTED FILE NAME FORMAT    $ � % % 4   E X P E C T E D   F I L E   N A M E   F O R M A T "  & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * C = Standard Aperture Image Date/Time file naming export format:    + � , , z   S t a n d a r d   A p e r t u r e   I m a g e   D a t e / T i m e   f i l e   n a m i n g   e x p o r t   f o r m a t : )  - . - l     �� / 0��   /     YYYY-MM-DD at HH:MM:SS    0 � 1 1 2       Y Y Y Y - M M - D D   a t   H H : M M : S S .  2 3 2 l     �� 4 5��   4 � ~ This script defaults to Aperture's standard preset. If you create your own preset make sure it follows the naming convention:    5 � 6 6 �   T h i s   s c r i p t   d e f a u l t s   t o   A p e r t u r e ' s   s t a n d a r d   p r e s e t .   I f   y o u   c r e a t e   y o u r   o w n   p r e s e t   m a k e   s u r e   i t   f o l l o w s   t h e   n a m i n g   c o n v e n t i o n : 3  7 8 7 l     �� 9 :��   9 + % 	[Image Date][Delimiter][Image Time]    : � ; ; J   	 [ I m a g e   D a t e ] [ D e l i m i t e r ] [ I m a g e   T i m e ] 8  < = < l     ��������  ��  ��   =  > ? > l     @���� @ r      A B A m      C C � D D    a t   B o      ���� 0 	namedelim 	nameDelim��  ��   ?  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I &   USE A DEFAULT EVERNOTE NOTEBOOK    J � K K @   U S E   A   D E F A U L T   E V E R N O T E   N O T E B O O K H  L M L l     �� N O��   N 8 2 To use a default notebook, set defNotebook : true    O � P P d   T o   u s e   a   d e f a u l t   n o t e b o o k ,   s e t   d e f N o t e b o o k   :   t r u e M  Q R Q l     �� S T��   S M G Setting defNotebook to false will generate a notebook selection window    T � U U �   S e t t i n g   d e f N o t e b o o k   t o   f a l s e   w i l l   g e n e r a t e   a   n o t e b o o k   s e l e c t i o n   w i n d o w R  V W V l     ��������  ��  ��   W  X Y X j     �� Z�� 0 defnotebook defNotebook Z m     ��
�� boovfals Y  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _   DEFAULT NOTEBOOK     ` � a a $   D E F A U L T   N O T E B O O K   ^  b c b l     �� d e��   d _ Y Nota Bene: the defNotebook property will ignore this setting unless it is set to 'true'.    e � f f �   N o t a   B e n e :   t h e   d e f N o t e b o o k   p r o p e r t y   w i l l   i g n o r e   t h i s   s e t t i n g   u n l e s s   i t   i s   s e t   t o   ' t r u e ' . c  g h g l     ��������  ��  ��   h  i j i l    k���� k r     l m l m     n n � o o   m o      ���� 0 thenotebook theNotebook��  ��   j  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t   DELETE FILE FROM MAC    u � v v *   D E L E T E   F I L E   F R O M   M A C s  w x w l     �� y z��   y g a If delFile is set to true, the image files will be moved to the trash after imported to Evernote    z � { { �   I f   d e l F i l e   i s   s e t   t o   t r u e ,   t h e   i m a g e   f i l e s   w i l l   b e   m o v e d   t o   t h e   t r a s h   a f t e r   i m p o r t e d   t o   E v e r n o t e x  | } | l     ��������  ��  ��   }  ~  ~ j    �� ��� 0 delfile delFile � m    ��
�� boovfals   � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ( " GENERATE FILE NAMING DIALOGUE BOX    � � � � D   G E N E R A T E   F I L E   N A M I N G   D I A L O G U E   B O X �  � � � l     �� � ���   � - ' To name each file, set nameFile : true    � � � � N   T o   n a m e   e a c h   f i l e ,   s e t   n a m e F i l e   :   t r u e �  � � � l     �� � ���   � X R Remember, this dialogue will launch for every image you are importing to Evernote    � � � � �   R e m e m b e r ,   t h i s   d i a l o g u e   w i l l   l a u n c h   f o r   e v e r y   i m a g e   y o u   a r e   i m p o r t i n g   t o   E v e r n o t e �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 0 namefile nameFile � m    ��
�� boovfals �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � Q K #########################################################################     � � � � �   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   �  � � � l     �� � ���   � E ? borrowed from: https://github.com/inkedmn/evernote-dated-photo    � � � � ~   b o r r o w e d   f r o m :   h t t p s : / / g i t h u b . c o m / i n k e d m n / e v e r n o t e - d a t e d - p h o t o �  � � � l    ����� � Z     � ����� � =    � � � o    ���� 0 defnotebook defNotebook � m    ��
�� boovfals � r     � � � I    ��������  0 choosenotebook chooseNotebook��  ��   � o      ���� 0 thenotebook theNotebook��  ��  ��  ��   �  � � � l     �� � ���   � / ) Select the photos for Evernote to import    � � � � R   S e l e c t   t h e   p h o t o s   f o r   E v e r n o t e   t o   i m p o r t �  � � � l     ��������  ��  ��   �  � � � l   ' ����� � r    ' � � � I   %���� �
�� .sysostdfalis    ��� null��   � �� ���
�� 
mlsl � m     !��
�� boovtrue��   � o      ���� 0 	whichfile 	whichFile��  ��   �  � � � l  ( � ����� � X   ( � ��� � � k   8 � � �  � � � O   8 B � � � r   < A � � � n   < ? � � � 1   = ?��
�� 
pnam � o   < =���� 0 afile aFile � o      ���� 0 filename   � m   8 9 � ��                                                                                  MACS  alis    t  MacintoshSSD               �!�H+   �\
Finder.app                                                      ���(fg        ����  	                CoreServices    �h0      �(��     �\ �O �N  6MacintoshSSD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h S S D  &System/Library/CoreServices/Finder.app  / ��   �  � � � l  C C��������  ��  ��   �  � � � r   C K � � � I   C I�� ����� 0 
parsestamp 
parseStamp �  ��� � o   D E���� 0 filename  ��  ��   � o      ���� 0 cdate cDate �  � � � l  L L��������  ��  ��   �  � � � l  L L��������  ��  ��   �  � � � l  L L��������  ��  ��   �  � � � Z   L y � ��� � � =  L S � � � o   L Q�� 0 namefile nameFile � m   Q R�~
�~ boovtrue � k   V m � �  � � � l  V V�} � ��}   � " Display Dialog and Get Input    � � � � 8 D i s p l a y   D i a l o g   a n d   G e t   I n p u t �  � � � I  V a�| � �
�| .sysodlogaskr        TEXT � m   V Y � � � � � F P l e a s e   e n t e r   t h e   n a m e   f o r   t h e   n o t e . � �{ ��z
�{ 
dtxt � o   \ ]�y�y 0 cdate cDate�z   �  � � � l  b b�x�w�v�x  �w  �v   �  � � � l  b b�u � ��u   � ! Get Answer & Return Comment    � � � � 6 G e t   A n s w e r   &   R e t u r n   C o m m e n t �  ��t � r   b m � � � l  b i ��s�r � n   b i � � � 1   e i�q
�q 
ttxt � 1   b e�p
�p 
rslt�s  �r   � o      �o�o 0 thename theName�t  ��   � r   p y � � � l  p u ��n�m � c   p u � � � o   p q�l�l 0 cdate cDate � m   q t�k
�k 
TEXT�n  �m   � o      �j�j 0 thename theName �  � � � l  z z�i�h�g�i  �h  �g   �  �  � O   z � I  � ��f�e
�f .EVRNcrntnull��� ��� null�e   �d
�d 
Ennb o   � ��c�c 0 thenotebook theNotebook �b
�b 
Entt o   � ��a�a 0 thename theName �`	
�` 
kfil o   � ��_�_ 0 afile aFile	 �^
�]
�^ 
Endt
 l  � ��\�[ 4   � ��Z
�Z 
ldt  o   � ��Y�Y 0 cdate cDate�\  �[  �]   m   z }�                                                                                  EVRN  alis    V  MacintoshSSD               �!�H+   �{Evernote.app                                                    j�)�V��        ����  	                Applications    �h0      �WI,     �{  'MacintoshSSD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h S S D  Applications/Evernote.app   / ��    �X Z   � ��W�V =  � � o   � ��U�U 0 delfile delFile m   � ��T
�T boovtrue O   � � I  � ��S�R
�S .coredeloobj        obj  o   � ��Q�Q 0 afile aFile�R   m   � ��                                                                                  MACS  alis    t  MacintoshSSD               �!�H+   �\
Finder.app                                                      ���(fg        ����  	                CoreServices    �h0      �(��     �\ �O �N  6MacintoshSSD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h S S D  &System/Library/CoreServices/Finder.app  / ��  �W  �V  �X  �� 0 afile aFile � o   + ,�P�P 0 	whichfile 	whichFile��  ��   �  l     �O�O     tell Evernote to sync.    � .   t e l l   E v e r n o t e   t o   s y n c .  l  � ��N�M O   � �  I  � ��L�K�J
�L .EVRNsyncnull��� ��� null�K  �J    m   � �!!�                                                                                  EVRN  alis    V  MacintoshSSD               �!�H+   �{Evernote.app                                                    j�)�V��        ����  	                Applications    �h0      �WI,     �{  'MacintoshSSD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h S S D  Applications/Evernote.app   / ��  �N  �M   "#" l     �I�H�G�I  �H  �G  # $%$ i   	 &'& I      �F(�E�F 0 
parsestamp 
parseStamp( )�D) o      �C�C 0 fname fName�D  �E  ' Q     e*+�B* k    \,, -.- l   �A/0�A  /   strip file extension   0 �11 *   s t r i p   f i l e   e x t e n s i o n. 232 r    454 m    66 �77  .5 n      898 1    �@
�@ 
txdl9 1    �?
�? 
ascr3 :;: r   	 <=< n   	 >?> 4   
 �>@
�> 
citm@ m    �=�= ? o   	 
�<�< 0 fname fName= o      �;�; 0 thestamp theStamp; ABA l   �:CD�:  C   strip date and time   D �EE (   s t r i p   d a t e   a n d   t i m eB FGF r    HIH o    �9�9 0 	namedelim 	nameDelimI n      JKJ 1    �8
�8 
txdlK 1    �7
�7 
ascrG LML r    NON n    PQP 4    �6R
�6 
citmR m    �5�5 Q o    �4�4 0 thestamp theStampO o      �3�3 0 thedate theDateM STS r    #UVU n    !WXW 4    !�2Y
�2 
citmY m     �1�1 X o    �0�0 0 thestamp theStampV o      �/�/ 0 thetime theTimeT Z[Z l  $ $�.\]�.  \ 8 2 Evernote only takes dates in the format: MM-DD-YY   ] �^^ d   E v e r n o t e   o n l y   t a k e s   d a t e s   i n   t h e   f o r m a t :   M M - D D - Y Y[ _`_ r   $ )aba m   $ %cc �dd  -b n     efe 1   & (�-
�- 
txdlf 1   % &�,
�, 
ascr` ghg r   * 0iji n   * .klk 4   + .�+m
�+ 
citmm m   , -�*�* l o   * +�)�) 0 thedate theDatej o      �(�( 0 y  h non r   1 7pqp n   1 5rsr 4   2 5�'t
�' 
citmt m   3 4�&�& s o   1 2�%�% 0 thedate theDateq o      �$�$ 0 m  o uvu r   8 >wxw n   8 <yzy 4   9 <�#{
�# 
citm{ m   : ;�"�" z o   8 9�!�! 0 thedate theDatex o      � �  0 d  v |}| l  ? ?�~�  ~ #  create finalized date string    ��� :   c r e a t e   f i n a l i z e d   d a t e   s t r i n g} ��� r   ? J��� b   ? H��� b   ? F��� b   ? D��� b   ? B��� o   ? @�� 0 m  � m   @ A�� ���  -� o   B C�� 0 d  � m   D E�� ���  -� o   F G�� 0 y  � o      �� 0 thedate theDate� ��� l  K K����  � #  create finalized time string   � ��� :   c r e a t e   f i n a l i z e d   t i m e   s t r i n g� ��� r   K S��� I   K Q���� 0 	parsetime 	parseTime� ��� o   L M�� 0 thetime theTime�  �  � o      �� 0 thetime theTime� ��� l  T T����  �  �  � ��� L   T Z�� b   T Y��� b   T W��� o   T U�� 0 thedate theDate� m   U V�� ���   � o   W X�� 0 thetime theTime� ��� l  [ [����  �  �  �  + R      ��
�	
� .ascrerr ****      � ****�
  �	  �B  % ��� l     ����  �  �  � ��� i    ��� I      ���� 0 	parsetime 	parseTime� ��� o      �� 0 ptime pTime�  �  � k     \�� ��� l     ����  � = 7 Evernote does not like 24 hour time (as of 3.0.6 beta)   � ��� n   E v e r n o t e   d o e s   n o t   l i k e   2 4   h o u r   t i m e   ( a s   o f   3 . 0 . 6   b e t a )� ��� l     � ���   � 6 0 Search the time stamp for every instance of '-'   � ��� `   S e a r c h   t h e   t i m e   s t a m p   f o r   e v e r y   i n s t a n c e   o f   ' - '� ��� r     ��� m     �� ���  -� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    	��� 2    	��
�� 
citm� o    ���� 0 ptime pTime� l     ������ o      ���� 0 	item_list  ��  ��  � ��� l   ������  �   replace '-' with ':'   � ��� *   r e p l a c e   ' - '   w i t h   ' : '� ��� r    ��� m    �� ���  :� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� c    ��� l   ������ o    ���� 0 	item_list  ��  ��  � m    ��
�� 
TEXT� o      ���� 0 ptime pTime� ��� l   ������  � ; 5 test for photos tagged with a time greater than noon   � ��� j   t e s t   f o r   p h o t o s   t a g g e d   w i t h   a   t i m e   g r e a t e r   t h a n   n o o n� ��� Z    Y������ ?   ��� n    ��� 4    ���
�� 
citm� m    ���� � o    ���� 0 ptime pTime� m    �� ���  1 2� k   ! K�� ��� r   ! +��� \   ! )��� l  ! '������ c   ! '��� l  ! %������ n   ! %��� 4   " %���
�� 
citm� m   # $���� � o   ! "���� 0 ptime pTime��  ��  � m   % &��
�� 
long��  ��  � m   ' (���� � o      ���� 0 h  � ��� r   , /� � o   , -���� 0 h    o      ���� 0 ttime tTime�  r   0 ? c   0 = b   0 ; b   0 6	
	 o   0 1���� 0 h  
 n   1 5 4   2 5��
�� 
citm m   3 4����  o   1 2���� 0 ptime pTime n   6 : 4   7 :��
�� 
citm m   8 9����  o   6 7���� 0 ptime pTime m   ; <��
�� 
TEXT o      ���� 0 ptime pTime  r   @ E m   @ A �   n      1   B D��
�� 
txdl 1   A B��
�� 
ascr �� l  F K r   F K b   F I  o   F G���� 0 ptime pTime  m   G H!! �""    P M o      ���� 0 ptime pTime  
 as string    �##    a s   s t r i n g��  ��  � k   N Y$$ %&% r   N S'(' m   N O)) �**  ( n     +,+ 1   P R��
�� 
txdl, 1   O P��
�� 
ascr& -��- r   T Y./. b   T W010 o   T U���� 0 ptime pTime1 m   U V22 �33    A M/ o      ���� 0 ptime pTime��  � 4��4 L   Z \55 o   Z [���� 0 ptime pTime��  � 676 l     ��������  ��  ��  7 898 i    :;: I      ��������  0 choosenotebook chooseNotebook��  ��  ; k     ]<< =>= l     ��?@��  ? E ? borrowed from: https://github.com/inkedmn/evernote-dated-photo   @ �AA ~   b o r r o w e d   f r o m :   h t t p s : / / g i t h u b . c o m / i n k e d m n / e v e r n o t e - d a t e d - p h o t o> BCB O    DED r    FGF n    	HIH 1    	��
�� 
pnamI 2    ��
�� 
EVnbG o      ���� 0 my_notebooks  E m     JJ�                                                                                  EVRN  alis    V  MacintoshSSD               �!�H+   �{Evernote.app                                                    j�)�V��        ����  	                Applications    �h0      �WI,     �{  'MacintoshSSD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h S S D  Applications/Evernote.app   / ��  C KLK r    MNM I    ��O���� 0 sortlist sortListO P��P o    ���� 0 my_notebooks  ��  ��  N o      ���� 0 my_notebooks  L QRQ r    STS b    UVU J    WW XYX m    ZZ �[[   D e f a u l t   N o t e b o o kY \��\ m    ]] �^^  N e w   N o t e b o o k��  V o    ���� 0 my_notebooks  T o      ���� 0 my_notebooks  R _`_ r    *aba c    (cdc l   &e����e I   &��fg
�� .gtqpchltns    @   @ ns  f o     ���� 0 my_notebooks  g ��h��
�� 
prmph m   ! "ii �jj " C h o o s e   a   n o t e b o o k��  ��  ��  d m   & '��
�� 
ctxtb o      ���� 0 	chosen_nb  ` klk l  + +��������  ��  ��  l m��m Z   + ]nopqn =   + .rsr o   + ,���� 0 	chosen_nb  s m   , -tt �uu 
 f a l s eo L   1 3vv m   1 2ww �xx  p yzy =   6 9{|{ o   6 7���� 0 	chosen_nb  | m   7 8}} �~~   D e f a u l t   N o t e b o o kz � L   < >�� m   < =�� ���  � ��� =   A D��� o   A B���� 0 	chosen_nb  � m   B C�� ���  N e w   N o t e b o o k� ���� L   G X�� n   G W��� 1   R V��
�� 
ttxt� l  G R������ I  G R����
�� .sysodlogaskr        TEXT� m   G H�� ��� " N e w   N o t e b o o k   N a m e� �����
�� 
dtxt� m   K N�� ���  ��  ��  ��  ��  q L   [ ]�� o   [ \���� 0 	chosen_nb  ��  9 ��� l     ��������  ��  ��  � ���� i    ��� I      ������� 0 sortlist sortList� ���� o      ���� 
0 a_list  ��  ��  � k     4�� ��� l     ������  � F @ borrowed from: https://github.com/inkedmn/evernote-dated-photo    � ��� �   b o r r o w e d   f r o m :   h t t p s : / / g i t h u b . c o m / i n k e d m n / e v e r n o t e - d a t e d - p h o t o  � ��� l     ������  � Z T who borrowed it from: http://hints.macworld.com/article.php?story=20040513173003941   � ��� �   w h o   b o r r o w e d   i t   f r o m :   h t t p : / / h i n t s . m a c w o r l d . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 4 0 5 1 3 1 7 3 0 0 3 9 4 1� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 
old_delims  � ��� l   ���� r    ��� J    �� ���� I   �����
�� .sysontocTEXT       shor� m    ���� 
��  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr�   always a linefeed   � ��� $   a l w a y s   a   l i n e f e e d� ��� r    ��� l   ������ c    ��� o    ���� 
0 a_list  � m    ��
�� 
TEXT��  ��  � o      ���� 0 list_string  � ��� r    %��� I   #�����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� m    �� ��� 
 e c h o  � n    ��� 1    ��
�� 
strq� o    ���� 0 list_string  � m    �� ���    |   s o r t   - f��  � o      ���� 0 
new_string  � ��� r   & +��� l  & )������ n   & )��� 2  ' )��
�� 
cpar� o   & '���� 0 
new_string  ��  ��  � o      ���� 0 new_list  � ��� r   , 1��� o   , -�� 0 
old_delims  � n     ��� 1   . 0�~
�~ 
txdl� 1   - .�}
�} 
ascr� ��|� L   2 4�� o   2 3�{�{ 0 new_list  �|  ��       
�z��y�x�w������z  � �v�u�t�s�r�q�p�o�v 0 defnotebook defNotebook�u 0 delfile delFile�t 0 namefile nameFile�s 0 
parsestamp 
parseStamp�r 0 	parsetime 	parseTime�q  0 choosenotebook chooseNotebook�p 0 sortlist sortList
�o .aevtoappnull  �   � ****
�y boovfals
�x boovfals
�w boovfals� �n'�m�l���k�n 0 
parsestamp 
parseStamp�m �j��j �  �i�i 0 fname fName�l  � �h�g�f�e�d�h 0 fname fName�g 0 thestamp theStamp�f 0 y  �e 0 m  �d 0 d  � 6�c�b�a�`�_�^c���]��\�[
�c 
ascr
�b 
txdl
�a 
citm�` 0 	namedelim 	nameDelim�_ 0 thedate theDate�^ 0 thetime theTime�] 0 	parsetime 	parseTime�\  �[  �k f ^���,FO��k/E�O���,FO��k/E�O��l/E�O���,FO��k/E�O��l/E�O��m/E�O��%�%�%�%E�O*�k+ 
E�O��%�%OPW X  h� �Z��Y�X���W�Z 0 	parsetime 	parseTime�Y �V��V �  �U�U 0 ptime pTime�X  � �T�S�R�Q�T 0 ptime pTime�S 0 	item_list  �R 0 h  �Q 0 ttime tTime� ��P�O�N��M��L�K!)2
�P 
ascr
�O 
txdl
�N 
citm
�M 
TEXT
�L 
long�K �W ]���,FO��-E�O���,FO��&E�O��k/� /��k/�&�E�O�E�O���l/%��m/%�&E�O���,FO��%E�Y ���,FO��%E�O�� �J;�I�H���G�J  0 choosenotebook chooseNotebook�I  �H  � �F�E�F 0 my_notebooks  �E 0 	chosen_nb  � J�D�C�BZ]�Ai�@�?tw}����>��=�<
�D 
EVnb
�C 
pnam�B 0 sortlist sortList
�A 
prmp
�@ .gtqpchltns    @   @ ns  
�? 
ctxt
�> 
dtxt
�= .sysodlogaskr        TEXT
�< 
ttxt�G ^� 	*�-�,E�UO*�k+ E�O��lv�%E�O���l �&E�O��  �Y )��  �Y ��  �a a l a ,EY �� �;��:�9���8�; 0 sortlist sortList�: �7��7 �  �6�6 
0 a_list  �9  � �5�4�3�2�1�5 
0 a_list  �4 0 
old_delims  �3 0 list_string  �2 0 
new_string  �1 0 new_list  � 
�0�/�.�-�,��+��*�)
�0 
ascr
�/ 
txdl�. 

�- .sysontocTEXT       shor
�, 
TEXT
�+ 
strq
�* .sysoexecTEXT���     TEXT
�) 
cpar�8 5��,E�O�j kv��,FO��&E�O��,%�%j E�O��-E�O���,FO�� �(��'�&���%
�( .aevtoappnull  �   � ****� k     ���  >��  i��  ���  ���  ��� �$�$  �'  �&  � �#�# 0 afile aFile� ! C�" n�!� ������ ����� �������������
�	���" 0 	namedelim 	nameDelim�! 0 thenotebook theNotebook�   0 choosenotebook chooseNotebook
� 
mlsl
� .sysostdfalis    ��� null� 0 	whichfile 	whichFile
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pnam� 0 filename  � 0 
parsestamp 
parseStamp� 0 cdate cDate
� 
dtxt
� .sysodlogaskr        TEXT
� 
rslt
� 
ttxt� 0 thename theName
� 
TEXT
� 
Ennb
� 
Entt
� 
kfil
� 
Endt
� 
ldt �
 
�	 .EVRNcrntnull��� ��� null
� .coredeloobj        obj 
� .EVRNsyncnull��� ��� null�% ��E�O�E�Ob   f  *j+ E�Y hO*�el E�O ��[��l 
kh  � ��,E�UO*�k+ E�Ob  e  a a �l O_ a ,E` Y �a &E` Oa   *a �a _ a �a *a �/a  UOb  e  � �j UY h[OY�zOa  *j  Uascr  ��ޭ