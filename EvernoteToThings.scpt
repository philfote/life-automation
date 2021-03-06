FasdUAS 1.101.10   ��   ��    k             l      ��  ��    W Q
	Automatically Create Things tasks in the Inbox from ScanSnap scanned items
	
	
     � 	 	 � 
 	 A u t o m a t i c a l l y   C r e a t e   T h i n g s   t a s k s   i n   t h e   I n b o x   f r o m   S c a n S n a p   s c a n n e d   i t e m s 
 	 
 	 
   
  
 l     ��  ��    E ?- Need code to check if Evernote is running when this runs. ---     �   ~ -   N e e d   c o d e   t o   c h e c k   i f   E v e r n o t e   i s   r u n n i n g   w h e n   t h i s   r u n s .   - - -      l     ����  Z       ��   =        n         1    ��
�� 
prun  m       �                                                                                  EVRN  alis    *  Macintosh HD                   BD ����Evernote.app                                                   ����            ����  
 cu             Applications  /:Applications:Evernote.app/    E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��    m    ��
�� boovtrue  r        m    	����   o      ���� 0 	isrunning  ��    r        m    ����    o      ���� 0 	isrunning  ��  ��        l     ��������  ��  ��       !   l   � "���� " O    � # $ # k    � % %  & ' & r     ( ) ( I   �� *��
�� .EVRNfindnull���     ctxt * m     + + � , , 4 n o t e b o o k : S c a n n e d   - t a g : h o m e��   ) o      ���� $0 lstselectednotes lstSelectedNotes '  - . - X    h /�� 0 / k   . c 1 1  2 3 2 l  . .��������  ��  ��   3  4 5 4 l  . .�� 6 7��   6 4 .- GET THE NOTE TITLE AND CLASSIC NOTE LINK ---    7 � 8 8 \ -   G E T   T H E   N O T E   T I T L E   A N D   C L A S S I C   N O T E   L I N K   - - - 5  9 : 9 r   . 3 ; < ; n   . 1 = > = 1   / 1��
�� 
EVet > o   . /���� 	0 onote   < o      ���� 0 strnotetitle strNoteTitle :  ? @ ? r   4 9 A B A b   4 7 C D C m   4 5 E E � F F < P r o c e s s   s c a n n e d   e v e r n o t e   n o t e   D o   5 6���� 0 strnotetitle strNoteTitle B o      ���� 0 strnotetitle strNoteTitle @  G H G r   : ? I J I n   : = K L K 1   ; =��
�� 
EV24 L o   : ;���� 	0 onote   J o      ���� 0 strnotelink strNoteLink H  M N M l  @ @�� O P��   O = 7- Create the todo in things and link it to the scan ---    P � Q Q n -   C r e a t e   t h e   t o d o   i n   t h i n g s   a n d   l i n k   i t   t o   t h e   s c a n   - - - N  R S R O   @ a T U T r   D ` V W V I  D \���� X
�� .corecrel****      � null��   X �� Y Z
�� 
kocl Y m   F G��
�� 
tstk Z �� [��
�� 
prdt [ K   J V \ \ �� ] ^
�� 
pnam ] o   M N���� 0 strnotetitle strNoteTitle ^ �� _��
�� 
note _ o   Q R���� 0 strnotelink strNoteLink��  ��   W o      ���� 0 newtodo newToDo U m   @ A ` `�                                                                                  Thgs  alis    &  Macintosh HD                   BD ����Things3.app                                                    ����            ����  
 cu             Applications  /:Applications:Things3.app/     T h i n g s 3 . a p p    M a c i n t o s h   H D  Applications/Things3.app  / ��   S  a�� a l  b b��������  ��  ��  ��  �� 	0 onote   0 o   ! "���� $0 lstselectednotes lstSelectedNotes .  b c b l  i i�� d e��   d d ^- Now tag the notes with the home tag so we don't pick them up again the next time we run  ---    e � f f � -   N o w   t a g   t h e   n o t e s   w i t h   t h e   h o m e   t a g   s o   w e   d o n ' t   p i c k   t h e m   u p   a g a i n   t h e   n e x t   t i m e   w e   r u n     - - - c  g h g l  i i�� i j��   i 0 *- ...but only if we scanned something! ---    j � k k T -   . . . b u t   o n l y   i f   w e   s c a n n e d   s o m e t h i n g !   - - - h  l�� l Z   i � m n���� m ?  i p o p o n   i n q r q 1   j n��
�� 
leng r o   i j���� $0 lstselectednotes lstSelectedNotes p m   n o����   n k   s � s s  t u t r   s � v w v 5   s ~�� x��
�� 
EVtg x m   w z y y � z z  h o m e
�� kfrmname w o      ���� 0 tag1   u  {�� { I  � ��� | }
�� .EVRNassnnull���     **** | o   � ����� 0 tag1   } �� ~��
�� 
EV13 ~ o   � ����� $0 lstselectednotes lstSelectedNotes��  ��  ��  ��  ��   $ m      �                                                                                  EVRN  alis    *  Macintosh HD                   BD ����Evernote.app                                                   ����            ����  
 cu             Applications  /:Applications:Evernote.app/    E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��   !  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � X R- If evernote was not running when we started then quit it now that we're done ---    � � � � � -   I f   e v e r n o t e   w a s   n o t   r u n n i n g   w h e n   w e   s t a r t e d   t h e n   q u i t   i t   n o w   t h a t   w e ' r e   d o n e   - - - �  � � � l  � � ����� � Z   � � � ����� � =  � � � � � o   � ����� 0 	isrunning   � m   � �����   � O   � � � � � I  � �������
�� .aevtquitnull��� ��� null��  ��   � m   � � � ��                                                                                  EVRN  alis    *  Macintosh HD                   BD ����Evernote.app                                                   ����            ����  
 cu             Applications  /:Applications:Evernote.app/    E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       
�� � ��� � � � � �����   � ����������������
�� .aevtoappnull  �   � ****�� 0 	isrunning  �� $0 lstselectednotes lstSelectedNotes�� 0 strnotetitle strNoteTitle�� 0 strnotelink strNoteLink�� 0 newtodo newToDo�� 0 tag1  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �    � �  �����  ��  ��   � ���� 	0 onote   �  ���� +�������������� E���� `��������������~�} y�|�{�z�y�x
�� 
prun�� 0 	isrunning  
�� .EVRNfindnull���     ctxt�� $0 lstselectednotes lstSelectedNotes
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
EVet�� 0 strnotetitle strNoteTitle
�� 
EV24�� 0 strnotelink strNoteLink
�� 
tstk
�� 
prdt
�� 
pnam
�� 
note�� 
�� .corecrel****      � null� 0 newtodo newToDo
�~ 
leng
�} 
EVtg
�| kfrmname�{ 0 tag1  
�z 
EV13
�y .EVRNassnnull���     ****
�x .aevtquitnull��� ��� null�� ���,e  kE�Y jE�O� ~�j E�O I�[��l kh  ��,E�O��%E�O��,E�O� *��a a �a �a a  E` UOP[OY��O�a ,j  *a a a 0E` O_ a �l Y hUO�j  � *j UY h��  � �w ��w  �   � � �  � �  ��v ��u �  �t �
�t 
EVnb � � � �  S c a n n e d
�v 
EVnn � � � � | x - c o r e d a t a : / / E 1 B 0 0 9 A F - 2 8 7 E - 4 F 2 0 - 9 F 3 8 - 2 4 A B 4 9 5 4 3 9 C 7 / E N N o t e / p 3 6 0 8
�u kfrmID   �  � �  ��s ��r �  �q �
�q 
EVnb � � � �  S c a n n e d
�s 
EVnn � � � � | x - c o r e d a t a : / / E 1 B 0 0 9 A F - 2 8 7 E - 4 F 2 0 - 9 F 3 8 - 2 4 A B 4 9 5 4 3 9 C 7 / E N N o t e / p 3 6 0 7
�r kfrmID   � � � � L P r o c e s s   s c a n n e d   e v e r n o t e   n o t e   2 0 2 0 0 4 2 2 � � � � � e v e r n o t e : / / / v i e w / 7 2 9 4 2 / s 1 / 0 2 d e f 7 e 6 - 7 c c 3 - 4 f e a - b 2 4 7 - 7 3 d 7 0 b a 1 f d f d / 0 2 d e f 7 e 6 - 7 c c 3 - 4 f e a - b 2 4 7 - 7 3 d 7 0 b a 1 f d f d / �  � �  `�p ��o
�p 
tstk � � � � H 8 8 D B B 4 E A - 0 6 1 1 - 4 1 2 B - 9 4 6 9 - A F E 3 6 C B F C 7 F C
�o kfrmID   �  � �  �n �
�n 
EVtg � � � �  h o m e��   ascr  ��ޭ