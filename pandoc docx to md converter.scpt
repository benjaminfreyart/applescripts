FasdUAS 1.101.10   ��   ��    k             l     ��  ��    = 7 Ask the user to select a folder containing .docx files     � 	 	 n   A s k   t h e   u s e r   t o   s e l e c t   a   f o l d e r   c o n t a i n i n g   . d o c x   f i l e s   
  
 l     ����  r         n     	    1    	��
�� 
psxp  l     ����  I    ���� 
�� .sysostflalis    ��� null��    �� ��
�� 
prmp  m       �   N S e l e c t   a   f o l d e r   c o n t a i n i n g   . d o c x   f i l e s :��  ��  ��    o      ���� "0 inputfolderpath inputFolderPath��  ��        l     ��������  ��  ��        l     ��  ��    ; 5 Ask the user to select a folder for output .md files     �   j   A s k   t h e   u s e r   t o   s e l e c t   a   f o l d e r   f o r   o u t p u t   . m d   f i l e s      l    ����  r       !   n     " # " 1    ��
�� 
psxp # l    $���� $ I   ���� %
�� .sysostflalis    ��� null��   % �� &��
�� 
prmp & m     ' ' � ( ( ` S e l e c t   a   f o l d e r   t o   s a v e   t h e   c o n v e r t e d   . m d   f i l e s :��  ��  ��   ! o      ���� $0 outputfolderpath outputFolderPath��  ��     ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - = 7 Ask the user if they want to include nested subfolders    . � / / n   A s k   t h e   u s e r   i f   t h e y   w a n t   t o   i n c l u d e   n e s t e d   s u b f o l d e r s ,  0 1 0 l   $ 2���� 2 I   $�� 3 4
�� .sysodlogaskr        TEXT 3 m     5 5 � 6 6 � D o   y o u   w a n t   t o   p r o c e s s   o n l y   t h e   s e l e c t e d   f o l d e r   o r   i n c l u d e   a l l   n e s t e d   s u b f o l d e r s ? 4 �� 7 8
�� 
btns 7 J     9 9  : ; : m     < < � = = ( O n l y   S e l e c t e d   F o l d e r ;  >�� > m     ? ? � @ @ $ I n c l u d e   S u b f o l d e r s��   8 �� A��
�� 
dflt A m      B B � C C $ I n c l u d e   S u b f o l d e r s��  ��  ��   1  D E D l  % . F���� F r   % . G H G n   % * I J I 1   & *��
�� 
bhit J 1   % &��
�� 
rslt H o      ���� &0 includesubfolders includeSubfolders��  ��   E  K L K l     ��������  ��  ��   L  M N M l     �� O P��   O 6 0 Determine the find command based on user choice    P � Q Q `   D e t e r m i n e   t h e   f i n d   c o m m a n d   b a s e d   o n   u s e r   c h o i c e N  R S R l  / f T���� T Z   / f U V�� W U =  / 6 X Y X o   / 2���� &0 includesubfolders includeSubfolders Y m   2 5 Z Z � [ [ ( O n l y   S e l e c t e d   F o l d e r V r   9 N \ ] \ I  9 J�� ^��
�� .sysoexecTEXT���     TEXT ^ b   9 F _ ` _ b   9 B a b a m   9 < c c � d d 
 f i n d   b n   < A e f e 1   = A��
�� 
strq f o   < =���� "0 inputfolderpath inputFolderPath ` m   B E g g � h h 6   - m a x d e p t h   1   - n a m e   ' * . d o c x '��   ] o      ���� 0 	docxfiles 	docxFiles��   W r   Q f i j i I  Q b�� k��
�� .sysoexecTEXT���     TEXT k b   Q ^ l m l b   Q Z n o n m   Q T p p � q q 
 f i n d   o n   T Y r s r 1   U Y��
�� 
strq s o   T U���� "0 inputfolderpath inputFolderPath m m   Z ] t t � u u    - n a m e   ' * . d o c x '��   j o      ���� 0 	docxfiles 	docxFiles��  ��   S  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z * $ Check if any .docx files were found    { � | | H   C h e c k   i f   a n y   . d o c x   f i l e s   w e r e   f o u n d y  } ~ } l  g � ����  Z   g � � ����� � =   g n � � � o   g j���� 0 	docxfiles 	docxFiles � m   j m � � � � �   � k   q � � �  � � � I  q ��� � �
�� .sysodlogaskr        TEXT � m   q t � � � � � X N o   . d o c x   f i l e s   f o u n d   i n   t h e   s e l e c t e d   f o l d e r . � �� � �
�� 
btns � J   u z � �  ��� � m   u x � � � � �  O K��   � �� ���
�� 
dflt � m   { ~ � � � � �  O K��   �  ��� � L   � �����  ��  ��  ��  ��  ��   ~  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � - ' Split the results into a list of files    � � � � N   S p l i t   t h e   r e s u l t s   i n t o   a   l i s t   o f   f i l e s �  � � � l  � � ����� � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � o   � ����� 0 	docxfiles 	docxFiles � o      ���� 0 docxfilelist docxFileList��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � = 7 Initialize a counter for the number of files converted    � � � � n   I n i t i a l i z e   a   c o u n t e r   f o r   t h e   n u m b e r   o f   f i l e s   c o n v e r t e d �  � � � l  � � ����� � r   � � � � � m   � �����   � o      ���� 0 	filecount 	fileCount��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ? 9 Loop through each .docx file and convert it using pandoc    � � � � r   L o o p   t h r o u g h   e a c h   . d o c x   f i l e   a n d   c o n v e r t   i t   u s i n g   p a n d o c �  � � � l  �p ����� � X   �p ��� � � k   �k � �  � � � l  � ��� � ���   � 9 3 Get the relative path of the .docx file using perl    � � � � f   G e t   t h e   r e l a t i v e   p a t h   o f   t h e   . d o c x   f i l e   u s i n g   p e r l �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � � p e r l   - e   ' u s e   F i l e : : S p e c ;   p r i n t   F i l e : : S p e c - > a b s 2 r e l ( $ A R G V [ 0 ] ,   $ A R G V [ 1 ] ) ; '   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 docxfile docxFile � m   � � � � � � �    � n   � � � � � 1   � ���
�� 
strq � o   � ����� "0 inputfolderpath inputFolderPath��   � o      ���� 0 relativepath relativePath �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � = 7 Determine the output folder for the current .docx file    � � � � n   D e t e r m i n e   t h e   o u t p u t   f o l d e r   f o r   t h e   c u r r e n t   . d o c x   f i l e �  � � � r   � � � � � l  � � ����� � b   � � � � � o   � ����� $0 outputfolderpath outputFolderPath � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  d i r n a m e   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 relativepath relativePath��  ��  ��   � o      ���� $0 outputfilefolder outputFileFolder �  � � � l  � � � � � � r   � � � � � l  � � ����� � b   � � � � � b   � � � � � o   � ����� $0 outputfolderpath outputFolderPath � n  � � � � � 7  � ��� � �
�� 
ctxt � m   � �����  � m   � ������� � o   � ����� 0 relativepath relativePath � m   � � � � � � �  . m d��  ��   � o      ���� (0 outputmarkdownfile outputMarkdownFile �   Change extension to .md    � � � � 0   C h a n g e   e x t e n s i o n   t o   . m d �  � � � r      l  ��~ b    b    o   �}�} $0 outputfolderpath outputFolderPath m   �  a t t a c h m e n t s / n 	
	 7 �|
�| 
ctxt m  �{�{  m  �z�z��
 o  �y�y 0 relativepath relativePath�  �~   o      �x�x 0 mediafolder mediaFolder �  l �w�v�u�w  �v  �u    l �t�t   A ; Create the equivalent output subfolder if it doesn't exist    � v   C r e a t e   t h e   e q u i v a l e n t   o u t p u t   s u b f o l d e r   i f   i t   d o e s n ' t   e x i s t  I +�s�r
�s .sysoexecTEXT���     TEXT b  ' m   �  m k d i r   - p   n  & 1  "&�q
�q 
strq o  "�p�p $0 outputfilefolder outputFileFolder�r    l ,,�o�n�m�o  �n  �m     l ,,�l!"�l  ! $  Convert the .docx file to .md   " �## <   C o n v e r t   t h e   . d o c x   f i l e   t o   . m d  $%$ I ,Q�k&�j
�k .sysoexecTEXT���     TEXT& b  ,M'(' b  ,E)*) b  ,A+,+ b  ,;-.- b  ,7/0/ m  ,/11 �22 r / u s r / l o c a l / b i n / p a n d o c   - t   m a r k d o w n _ s t r i c t   - - e x t r a c t - m e d i a =0 n  /6343 1  26�i
�i 
strq4 o  /2�h�h 0 mediafolder mediaFolder. m  7:55 �66   , n  ;@787 1  <@�g
�g 
strq8 o  ;<�f�f 0 docxfile docxFile* m  AD99 �::    - o  ( n  EL;<; 1  HL�e
�e 
strq< o  EH�d�d (0 outputmarkdownfile outputMarkdownFile�j  % =>= l RR�c�b�a�c  �b  �a  > ?@? l RR�`AB�`  A K E Reformat image links in the Markdown file for Obsidian compatibility   B �CC �   R e f o r m a t   i m a g e   l i n k s   i n   t h e   M a r k d o w n   f i l e   f o r   O b s i d i a n   c o m p a t i b i l i t y@ DED I Ra�_F�^
�_ .sysoexecTEXT���     TEXTF b  R]GHG m  RUII �JJ x s e d   - i   ' '   - E   ' s # < i m g   s r c = \ " ( [ ^ \ " ] + ) \ " [ ^ > ] * > # ! [ I m a g e ] ( \ 1 ) # g '  H n  U\KLK 1  X\�]
�] 
strqL o  UX�\�\ (0 outputmarkdownfile outputMarkdownFile�^  E MNM l bb�[�Z�Y�[  �Z  �Y  N OPO l bb�XQR�X  Q !  Increment the file counter   R �SS 6   I n c r e m e n t   t h e   f i l e   c o u n t e rP T�WT r  bkUVU [  bgWXW o  be�V�V 0 	filecount 	fileCountX m  ef�U�U V o      �T�T 0 	filecount 	fileCount�W  �� 0 docxfile docxFile � o   � ��S�S 0 docxfilelist docxFileList��  ��   � YZY l     �R�Q�P�R  �Q  �P  Z [\[ l     �O]^�O  ] 6 0 Notify the user when the conversion is complete   ^ �__ `   N o t i f y   t h e   u s e r   w h e n   t h e   c o n v e r s i o n   i s   c o m p l e t e\ `a` l q�b�N�Mb I q��Lcd
�L .sysodlogaskr        TEXTc b  q|efe b  qxghg m  qtii �jj F C o n v e r s i o n   c o m p l e t e d   s u c c e s s f u l l y !  h o  tw�K�K 0 	filecount 	fileCountf m  x{kk �ll    f i l e ( s )   h a v e   b e e n   c o n v e r t e d .   A l l   . m d   f i l e s   a n d   e x t r a c t e d   m e d i a   h a v e   b e e n   s a v e d   t o   t h e   o u t p u t   f o l d e r ,   m a i n t a i n i n g   t h e   o r i g i n a l   f o l d e r   s t r u c t u r e .d �Jmn
�J 
btnsm J  }�oo p�Ip m  }�qq �rr  O K�I  n �Hs�G
�H 
dflts m  ��tt �uu  O K�G  �N  �M  a v�Fv l     �E�D�C�E  �D  �C  �F       �Bwx�B  w �A
�A .aevtoappnull  �   � ****x �@y�?�>z{�=
�@ .aevtoappnull  �   � ****y k    �||  
}}  ~~  0  D��  R��  }��  ���  ���  ��� `�<�<  �?  �>  z �;�; 0 docxfile docxFile{ 8�: �9�8�7 '�6 5�5 < ?�4 B�3�2�1�0�/ Z c�. g�-�, p t � � � ��+�*�)�(�'�& � ��% ��$�#�" ��!� 159Iikqt
�: 
prmp
�9 .sysostflalis    ��� null
�8 
psxp�7 "0 inputfolderpath inputFolderPath�6 $0 outputfolderpath outputFolderPath
�5 
btns
�4 
dflt�3 
�2 .sysodlogaskr        TEXT
�1 
rslt
�0 
bhit�/ &0 includesubfolders includeSubfolders
�. 
strq
�- .sysoexecTEXT���     TEXT�, 0 	docxfiles 	docxFiles
�+ 
cpar�* 0 docxfilelist docxFileList�) 0 	filecount 	fileCount
�( 
kocl
�' 
cobj
�& .corecnte****       ****�% 0 relativepath relativePath�$ $0 outputfilefolder outputFileFolder
�# 
ctxt�"���! (0 outputmarkdownfile outputMarkdownFile�  0 mediafolder mediaFolder�=�*��l �,E�O*��l �,E�O����lv��� O�a ,E` O_ a   a �a ,%a %j E` Y a �a ,%a %j E` O_ a   a �a kv�a � OhY hO_ a -E` OjE`  O �_ [a !a "l #kh  a $�a ,%a %%�a ,%j E` &O�a '_ &a ,%j %E` (O�_ &[a )\[Zk\Za *2%a +%E` ,O�a -%_ &[a )\[Zk\Za *2%E` .Oa /_ (a ,%j Oa 0_ .a ,%a 1%�a ,%a 2%_ ,a ,%j Oa 3_ ,a ,%j O_  kE`  [OY�AOa 4_  %a 5%�a 6kv�a 7�  ascr  ��ޭ