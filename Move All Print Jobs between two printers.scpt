FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  J     ����   	 o      ���� 0 printerlist printerList��  ��     
  
 l     ��������  ��  ��        l     ��  ��    5 / Get a list of printers using lpstat -p command     �   ^   G e t   a   l i s t   o f   p r i n t e r s   u s i n g   l p s t a t   - p   c o m m a n d      l    ����  r        n        2  
 ��
�� 
cpar  l   
 ����  I   
�� ��
�� .sysoexecTEXT���     TEXT  m       �   8 l p s t a t   - p   |   a w k   ' { p r i n t   $ 2 } '��  ��  ��    o      ���� 0 printernames printerNames��  ��        l     ��������  ��  ��        l     ��   !��     / ) Add each printer name to the printerList    ! � " " R   A d d   e a c h   p r i n t e r   n a m e   t o   t h e   p r i n t e r L i s t   # $ # l   2 %���� % X    2 &�� ' & Z    - ( )���� ( >   " * + * o     ���� 0 printername printerName + m     ! , , � - -   ) r   % ) . / . o   % &���� 0 printername printerName / n       0 1 0  ;   ' ( 1 o   & '���� 0 printerlist printerList��  ��  �� 0 printername printerName ' o    ���� 0 printernames printerNames��  ��   $  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 6 0 Display the list in two separate dropdown menus    7 � 8 8 `   D i s p l a y   t h e   l i s t   i n   t w o   s e p a r a t e   d r o p d o w n   m e n u s 5  9 : 9 l  3 ;���� ; Z   3 < =�� > < ?   3 : ? @ ? l  3 8 A���� A I  3 8�� B��
�� .corecnte****       **** B o   3 4���� 0 printerlist printerList��  ��  ��   @ m   8 9����   = k   = C C  D E D r   = O F G F I  = M�� H I
�� .gtqpchltns    @   @ ns   H o   = >���� 0 printerlist printerList I �� J K
�� 
prmp J m   ? @ L L � M M * M o v e   p r i n t   j o b s   f r o m : K �� N O
�� 
inSL N J   A G P P  Q�� Q n   A E R S R 4   B E�� T
�� 
cobj T m   C D����  S o   A B���� 0 printerlist printerList��   O �� U��
�� 
mlsl U m   H I��
�� boovfals��   G o      ���� &0 chosenprinterfrom chosenPrinterFrom E  V W V r   P f X Y X I  P b�� Z [
�� .gtqpchltns    @   @ ns   Z o   P Q���� 0 printerlist printerList [ �� \ ]
�� 
prmp \ m   R U ^ ^ � _ _ & M o v e   p r i n t   j o b s   t o : ] �� ` a
�� 
inSL ` J   V \ b b  c�� c n   V Z d e d 4   W Z�� f
�� 
cobj f m   X Y����  e o   V W���� 0 printerlist printerList��   a �� g��
�� 
mlsl g m   ] ^��
�� boovfals��   Y o      ���� "0 chosenprinterto chosenPrinterTo W  h�� h Z   g i j�� k i F   g v l m l >  g j n o n o   g h���� &0 chosenprinterfrom chosenPrinterFrom o m   h i��
�� boovfals m >  m r p q p o   m p���� "0 chosenprinterto chosenPrinterTo q m   p q��
�� boovfals j k   y � r r  s t s r   y � u v u n   y } w x w 4   z }�� y
�� 
cobj y m   { |����  x o   y z���� &0 chosenprinterfrom chosenPrinterFrom v o      ���� 0 fromprinter fromPrinter t  z { z r   � � | } | n   � � ~  ~ 4   � ��� �
�� 
cobj � m   � �����   o   � ����� "0 chosenprinterto chosenPrinterTo } o      ���� 0 	toprinter 	toPrinter {  � � � l  � ��� � ���   �   Execute lpmove command    � � � � .   E x e c u t e   l p m o v e   c o m m a n d �  ��� � Q   � � � � � � k   � � � �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  l p s t a t   - o   � o   � ����� 0 fromprinter fromPrinter � m   � � � � � � � V   |   a w k   ' { p r i n t   $ 1 } '   |   x a r g s   - I { }   l p m o v e   { }   � o   � ����� 0 	toprinter 	toPrinter��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � H S u c c e s s f u l l y   m o v e d   p r i n t   j o b s   f r o m :   � o   � ����� 0 fromprinter fromPrinter � m   � � � � � � � 
   t o :   � o   � ����� 0 	toprinter 	toPrinter � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � � � �  O K��  ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � �  E r r o r :   � o   � ����� 0 errmsg errMsg � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � � � �  O K��  ��  ��   k I  ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � ( N o   p r i n t e r   s e l e c t e d . � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � � � �  O K��  ��  ��   > I �� � �
�� .sysodlogaskr        TEXT � m   � � � � � $ N o   p r i n t e r s   f o u n d . � �� � �
�� 
btns � J   � �  ��� � m   � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � �  O K��  ��  ��   :  ��� � l     ��������  ��  ��  ��       
�� � � � � � � � �����   � ����������������
�� .aevtoappnull  �   � ****�� 0 printerlist printerList�� 0 printernames printerNames�� &0 chosenprinterfrom chosenPrinterFrom�� "0 chosenprinterto chosenPrinterTo�� 0 fromprinter fromPrinter�� 0 	toprinter 	toPrinter��   � � ��~�} � ��|
� .aevtoappnull  �   � **** � k     � �   � �   � �  # � �  9�{�{  �~  �}   � �z�y�z 0 printername printerName�y 0 errmsg errMsg � *�x �w�v�u�t�s�r ,�q L�p�o�n�m�l ^�k�j�i�h � � � ��g ��f ��e�d�c�b � � � � � � � � ��x 0 printerlist printerList
�w .sysoexecTEXT���     TEXT
�v 
cpar�u 0 printernames printerNames
�t 
kocl
�s 
cobj
�r .corecnte****       ****
�q 
prmp
�p 
inSL
�o 
mlsl�n 
�m .gtqpchltns    @   @ ns  �l &0 chosenprinterfrom chosenPrinterFrom�k "0 chosenprinterto chosenPrinterTo
�j 
bool�i 0 fromprinter fromPrinter�h 0 	toprinter 	toPrinter
�g 
btns
�f 
dflt�e 
�d .sysodlogaskr        TEXT�c 0 errmsg errMsg�b  �|jvE�O�j �-E�O "�[��l kh  �� 	��6FY h[OY��O�j j �������k/kv�f� E�O��a ���k/kv�f� E` O�f	 _ fa & t��k/E` O_ �k/E` O <a _ %a %_ %j Oa _ %a %_ %a a kva a a  W  X   a !�%a a "kva a #a  Y a $a a %kva a &a  Y a 'a a (kva a )a   � �a ��a  �   � � � � � � ��`�_�^�]�\�[�Z�Y�X �  � �  ��W�V � �U ��U  �   � � � � � � ��T�S�R�Q�P�O�N�M�L � � � � , B r o t h e r _ H L _ 2 2 3 0 _ s e r i e s � � � � 0 B r o t h e r _ H L _ 2 2 7 0 D W _ s e r i e s � � � �  f o r � � � � X B V _ C h u r c h _ B r o t h e r _ _ _ B e n j a m i n b _ 9 s _ M a c B o o k _ P r o � � � � 8 B V _ C h u r c h _ B r o t h e r _ _ _ B e n s _ O l d � � � � * E P S O N _ S C _ T 5 1 0 0 _ S e r i e s � � � � . E P S O N _ S C _ T 5 1 0 0 _ S e r i e s _ 2�T  �S  �R  �Q  �P  �O  �N  �M  �L  
�W 
cobj�V  �     ��K�J
�K 
cobj�J  �   ��I�H
�I 
cobj�H  �   ��G�F
�G 
cobj�F  �   ��E�D
�E 
cobj�D  �   ��C�B
�C 
cobj�B  �   ��A�@
�A 
cobj�@ �`  �_  �^  �]  �\  �[  �Z  �Y  �X   � �?�?    � � � 0 B r o t h e r _ H L _ 2 2 7 0 D W _ s e r i e s � �>�>    � � �		 , B r o t h e r _ H L _ 2 2 3 0 _ s e r i e s��  ascr  ��ޭ