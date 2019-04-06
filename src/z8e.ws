.op
.rm 75




                                    Z8�

               Z80/HD6418� ASSEMB�� LANGUAG� DEBUGGIN� TOOL

                               USER'� MANUA�








                              Copyrigh� 198�

                               Ric� Surwilo
                             330 Calvi� Court
                         Wyckoff, New Jersey 07481


                   Z180/HD6418� portion� Copyright 1988

                               Damon Gibson
                         8201 Castleton Boulevard
                       Indianapolis, Indiana �46256
                              (317) 842-7128


         Thi� documen� an� th� softwar� i� describe� i� maintaine� by

                                Jo� Saxton
                               Lak� Barrine
                              Queenslan� 4884
                                 Australia
                            tesseract@triton.vg


.pa�.he                  TABLE OF CONTENTS
.fi z8e.toc
.pa�.he Z8E REFERENCE MANUAL v 4.1 - February 2015
.pn 1
.fo                                   � � -
.tc INTRODUCTION ............................................... # 
I� INTRODUCTION

Z8� i� � professiona� qualit� interactiv� debuggin� too� designe� t� assis� �
i� �th� testin� o� assembl� languag� program� fo� th� Z8� an� �Z180/HD6418� �
processors.

Originall� writte� a� � standalon� monitor� th� Z8� versio� o� Z8� wa� use� �
i� th� developemen� o� th� world'� larges� Touc�-Ton� Input/Voic� �Respons� �
system� �No� redon� t� ru� i� � CP/� o� TurboDO� environmen� �Z8� �contain� �
mor� �feature� �i� �les� �memor� �tha� �an� �comparabl� �softwar� �product� �
Occupyin� jus� ove� 9� o� memory� Z8� include� th� followin� amon� it� man� �
features:

.rm 70
.pm 3
.lm 6
   - Suppor� �fo� �th� Hitach� HD6418� (Z180� �instructio� �set�  (An� �
�����mentio� �o� �th� Z8� i� thi� documen� ca� b� take� t� �impl� �th� �
�����Z18� a� well.)

���- Ful� �scree� animate� displa� o� th� progra� unde� tes� whil� �i� �
�����i� bein� execute� b� th� Z80� 

���- Complet� Z8� inlin� assembler� wit� labels� symbols� expressions� �
�����an� directives� usin� Zilo� mnemonics

���- Interactiv� �disassembl� wit� label� an� symbol�  t� �consol� �o� �
�����dis� allow� th� use� t� specif�  outpu� format� an� ad� comment� 

���- Full� �trace� progra� executio� includin� � ful� � scree� �singl� �
�����ste� comman� tha� instruct� Z8� t�  disassembl� cod� an� t� �mov� �
�����th� curso� t� th�  nex� instructio� t� execute

���- U� t� 1� use� settabl� breakpoint� wit� optiona�  pas� counts

���- Tru� symboli� debuggin� usin� th� inpu� fro�  multipl� �Microsof� �
�����MACR�-8� �.PR� an� LIN�-8�  .SY� file� an� Z80AS� .LS� an� �SLRN� �
�����an� Z80AS� .SY� file� fro� SL� Systems� 

���- Dynami� relocatio� o� Z8� a� loa� tim� t� th� to�  o� use� memor� �
�����regardles� �o� �size� �N� �use�  configuratio� �o� �an� �kin� �i� �
�����required� 

���- Suppor� �fo� �� �separat� �debuggin� �terminal� � Th� ��debuggin� �
�����activit� �ca� �b� ru� o� � termina� attache� �t� �th� �computer'� �
�����seria� por� whil� th� applicatio� bein� debugge� operate� o� �th� �
�����console.
.pm
.lm
.rm 75
.pa�.tc INSTALLATION ............................................... # 
II INSTALLATIO�

Thi� sectio� describe� ho� t� configur� an� buil� Z8� fo� you� hardwar� an� �
softwar� environment.

Version� �prio� t� 4.� allowe� binar� patchin� bu� tha� approac� �ha� �bee� �
abandone� o� th� premis� tha� i� i� easie� t� configur� th� progra� a� �th� �
sourc� cod� leve� an� reassemble� Anyon� wh� i� usin� � progra� lik� Z8� t� �
debu� a� th� assembl� languag� leve� i� surel� goin� t� hav� al� th� �tool� �
neede� �t� perfor� thi� task� Ther� i� a� adde� advantage� Binar� �patchin� �
leave� �fe� trace� an� ca� b� difficul� t� reproduc� whe� � ne� versio� �i� �
release� bu� sourc� patche� ar� eas� t� sav� an� reapply.

The tasks needed to build Z8E from the source are as follows ...
.tc    Choose the assembler .................................... #
1. Edit Z8E.Z80 to choose the assembler.�

Z8� �i� writte� i� Zilo� mnemonic� s� Microsoft'� M8� o� SLR'� �Z80AS� �ar� �
goo� �choices�  Anothe� candidat� i� th� Cromemc� CDO� Z8� �Macr�Assemble� �
whic� �i� availabl� �fro� �http://www.softsector.hostingsiteforfree.com/cp� �
an� �� slightl� differen� bu� full� functiona� versio� i� i� th� �Tesserac� �
collectio� a� volum� 95��

Withou� �doin� anything� th� sourc� wil� buil� wit� Z80AS� s� i� �yo� �hav� �
tha� �assemble� �the� �yo� �ca� �ski� thi� �step� � (O� �cours� �othe� �SL� �
assembler� �whic� recognis� Zilo� mnemonic� suc� a� SLR18� an� Z80ASM� �ca� �
b� use� i� lie� o� Z80ASM.)

Th� requirement� fo� � differen� assemble� ar� fairl� simple�  I� mus� hav� �
� �basi� macr� facility� recognis� Zilo� mnemonics� b� abl� t� �rea� �inpu� �
fro� externa� file� an� suppor� conditiona� assembly.

Al� thre� assembler� yiel� .CO� file� whic� ar� bit-for-bi� identical.

.tc    Instruction set and number of terminals ................. #
2. Instructio� se� and number of terminals�

Z8� ca� debu� program� fo� th� Z8� o� th� Z18� (Hitach� HD64180� an� i� ca� �
tak� �advantag� �o� � secon� termina� i� on� i� attached� Tha� �make� �fou� �
combinations:

	Z80	1 terminal		Z80	2 terminals�
	Z180	1 terminal		Z180	2 terminals

Havin� tw� terminal� i� usefu� whe� debuggin� program� whic� displa� � �lo� �
o� �tex� o� th� screen� I� i� convenien� t� hav� th� debuggin� sessio� �ru� �
o� �� �secon� �scree� �s� �tha� th� �output� �fro� �th� �debugge� �an� �th� �
applicatio� don'� trea� al� ove� eac� other�  I� yo� ar� runnin� CP/� o�a� �
emulato� �suc� a� z80pac� o� yaz�-a� the� tha� secon� scree� migh� b� �jus� �
anothe� �windo� o� th� hos� compute� logicall� attache� t� th� seria� �por� �
o� th� emulate� system.

Four little include files, Z8E1.INC, Z8E2.INC, 18E1.INC and 18E2.INC are�
included in this distribution.�

	Z8E1.INC		Z80 instructions, one terminal
	Z8E2.INC		Z80 instructions, two terminals
	18E1.INC		HD64180/Z180 instructions, one terminal
	18E2.INC		HD64180/Z180 instructions, two terminals

Cop� on� o� thos� t� hav� th� nam� CONFIG.INC� Loo� a� th� fil� an� edi� i� �
i� necessary.
.cp 6�.tc    Choose or create the terminal handlers .................. #
3. Choose or create the terminal handlers�

� �fe� �.TT� file� ar� supplied� Eac� o� thes� file� define� th� �cod� �an� �
dat� specifi� t� � particula� terminal� T� suppor� � differen� terminal:
.cp 3
   a)	make a copy of one of the existing files
   b)	edit the copy to match the characteristics of the new terminal
   c)	edit TERMINAL.INC to add new table entries for the new terminal

.tc    Assemble the program .................................... #
4. Assemble the program

	SLR:	z80asm z8e/a

	M80:	m80 =z8e.z80
		l80 z8e,z8e/n/e

        ZASMB�  zasm� z8e
                link� z8e,z8e/n/e

Al� thre� assembler� generat� identica� .CO� files.

.tc    Coding caveat ........................................... #
IMPORTANT� Codin� caveat

.lm 6
.rm 70
���� Z8� impose� onl� on� restrictio� o� th� cod� yo� write�  I� orde� �
�����t� guarante� tha� you� routine� ca� b� relocate� int� hig� memor� �
�����b� �Z8� �d� no� loa� an� 1� bi�  constant� int� �registe� �pairs� �
�����instea� �d� �tw� �� �bi� loads�  Fo� �example� �d� �no� �us� �th� �
�����followin� stat�ment:

������������������������ ld���� de,1234h

���� Rather� cod� i� lik� this�

������������������������ ld���� d,12h�
������������������������ ld���� e,34h

�����Wit� �luc� �yo� �won'� �nee� t� loa� � �constan� �int� �a� �inde� �
�����registe� �bu� i� yo� d� ther� ar� � fe� way� aroun� th� �problem�  �
�����Thi� �on� wil� wor� o� � Z8� an� � Z180� doe� no� depen� �o� �th� �
�����assemble� �chosen� doe� no� touc� an� othe� registe� an� �i� �th� �
�����shortes� possibl� coding:

�����Instea� of�    l�      ix,5678�            l�      iy�5678h

�����code�          def�    0DD�                def�    0FDh
�����               l�      h,56�               l�      h,56h
�����               def�    0DD�                def�    0FDh
�����               l�      l,78�               l�      l,78h
.lm
.rm 75
.pa�.tc INVOKING Z8E ............................................... #
III�� INVOKIN� Z8� A� TH� CP/� COMMAN� LEVEL

Upo� �invocatio� a� th� CP/� comman� leve� Z8� load� a� th� lo� en� o� �th� �
Transien� Progra� Are� (TPA� whic� begin� a� absolut� addres� 100h� Th� TP� �
i� th� are� i� memor� wher� use� program� ar� loade� an� run�

Onc� �loade� �Z8� determine� th� siz� o� th� TP� b� examinin� �th� �addres� �
fiel� �o� th� jum� instructio� a� locatio� 5�  Thi� a�dres� represent� bot� �
th� �entr� poin� int� CP/� an� th� en� o� th� TPA� Z8� lower� thi� �addres� �
b� �approximatel� �9� byte� an� relocate� int� thi� are� b� �adjustin� �al� �
addresse� �withi� itsel� t� reflec� it� ne� location� Th� jum� �instructio� �
a� �locatio� � i� similiarl� modifie� t� reflec� th� ne� siz� o� �th� �TPA� �
Thu� �al� �program� �whic� �us� thi� addres� t� �determin� �th� �amoun� �o� �
availabl� �memor� �ca� ru� unchanged� Z8� complete� it� �initial�zatio� �b� �
storin� �� �jum� instructio� t� it� breakpoin� handlin� softwar� �whic� �i� �
normall� a� absolut� addres� 3� (hexadecimal).

Symbol� whic� ar� loade� fro� file� ar� store� b� Z8� i� � symbo� tabl� �a� �
th� �to� �o� �th� TP� jus� belo� Z8E� Z8� �wil� �dynamicall� �allocat� �th� �
storag� necessar� t� hol� al� symbol� loade� fro� files� however� Z8� �als� �
allow� �th� �use� �t� �ente� hi� ow� symbol� �fro� �th� �keyboar� �vi� �th� �
(A)ssembl� �command� �Z8� �doe� NO� reserv� AN� spac� i� �memor� �fo� �use� �
generate� �symbols� �Th� use� mus� explicitl� reques� memor� spac� �o� �th� �
CP/� �comman� line� Thi� i� accomplishe� b� enterin� th� numbe� o� �symbol� �
fo� whic� spac� shoul� b� reserve� a� � decima� number� Thi� numbe� mus� b� �
enclose� �i� �parenthese� �an� mus� appea� a� th� �firs� �argumen� �o� �th� �
comman� lin� a� show� below:

���������� A>Z8� (32�

I� �thi� exampl� th� use� ha� requeste� spac� fo� 3� use� define� �symbols� �
I� �MAXLE� �ha� �b� se� t� � (Se� INSTALLATIO� Section� �the� �eac� �symbo� �
require� � byte� o� storage� hence� i� thi� exampl� Z8� wil� se� asid� �25� �
byte� o� memor� fo� use� define� symbols� 

Subsequen� �actio� i� base� o� th� forma� o� th� remainde� o� �th� �comman� �
lin� a� entere� b� th� user�  I� th� example� tha� follo� bea� i� min� tha� �
an� o� thes� comman� line� ma� contai� th� argumen� requestin� memor� spac� �
fo� use� symbo� tabl� entries� Th� argumen� woul� appea� immmediatel� afte� �
"Z8E� i� ever� case.

.cp 3
���� 1���� A>Z8ō
.rm 70
.lm 16
��������������� �
���������������Z8� reside� a� � standalon� progra� i� memory.

.lm
.cp 4
���� 2���� A>Z8Š USERFILE.CO�

.rr            L----!----!----!----!----!----!----!----!-------------R
���������������USERFILE.CO� i� loade� a� th� beginnin� o� th� TP� �an� �
���������������i� read� t� b� acte� o� b� Z8� co� mands� 
.lm

.cp 4
.RR-----------------!----!----!----!----!----!----!----!-------------R
���� 3���� A>Z8Š USERFILE.CO� USERFILE.SY� [,bias�

.rr            L----!----!----!----!----!----!----!----!-------------R
���������������USERFILE.SY� �i� rea� i� b� Z8� an� al� �symbo� � name� �
���������������containe� �i� th� fil� ar� entere� int� �  tabl� �whic� �
���������������begin� �a� �th� startin� addres� o� � Z8� �(th� �endin� �
���������������addres� �o� �th� "new� TPA� an� � extend� �downwar� �i� �
���������������memory� �Th� optiona�  bias� i� specified� i� � 1� �bi� �
���������������valu� �whic� � wil� �b� adde� t� �th� �1� �bi� �addres� �
���������������associate� � wit� �eac� symbo� i� th� �file� �(I� �thi� �
���������������exampl� �� �.SY� �fil� i� �shown� �however� �sinc� �al�  �
���������������addresse� �appearin� �i� � .SY� fil� ar� �absolut� �th� �����������������optiona� bia� woul� probabl� no� b�  used.)

���������������USERFILE.CO� �i� loade� a� th� star� o� th� �TP� � onl� �
���������������afte� th� .SY� fil� ha� bee� rea� an� th�  symbo� tabl� �
���������������built�  
.lm

.cp 4
.rr-----------------!----!----!----!----!----!----!----!-------------R
���� 4���� A>Z8Š USERFILE.CO͠ USERFILE.PR� [,biasݍ

.rr            L----!----!----!----!----!----!----!----!-------------R
���������������A� �i� th� previou� exampl� USERFILE.CO� i�  loade� �a� �
���������������th� beginnin� o� th� TPA� bu� i�  thi� instanc� � �.PR� �
���������������fil� �i� �use� �t� construc� � th� �symbo� �table� �Th� �
���������������optiona� bia� become�  ver� usefu� i� th� .LS� o� �.PR� �
���������������fil� �represent� th� listin� o� � relocatabl� �program�  �
���������������Relocatabl� program� linke� usin� Microsoft'� � LIN�-8� �
���������������defaul� t� � loa� addres� o� 103� wit�  th� thre� byte� �
���������������o� �memor� �locate� a� 100�  containin� � jum� �t� �th� �
���������������entr� �poin� �o� th�  program� Therefore� i� �th� �use� �
���������������supplie� �� � bia� �o� �10� i� �th� �comman� �lin� �al� �
���������������reloca�� �abl� symbol� i� th� fil� wil� �b� �associate�  �
���������������wit� �thei� �actua� �addresse� �i� �memory� �An� � bia� �
���������������specifie� �wil� onl� b� adde� t� thos� � symbol� �whic� �
���������������ar� flagge� a� cod� relativ� i�  th� .PR� file� � �bia� �
���������������wil� �no� b� adde� t� an�  symbo� flagge� a� �ABSOLUTE� �
���������������EXTERANL� O�  COMMON.

���������������USERFILE.CO� �i� loade� a� th� star� o� th� �TP� � onl� �
���������������afte� �th� �.LS� o� .PR� fil� ha� bee� �rea� � an� �th� �
���������������symbo� tabl� built.
.lm

.cp 4
���� 5���� A>Z8� USERFILE.CO� USERFILE.SY� [,bias� NFILE.LS� [,biasݍ

.lm 16����������������������������� �
���������������Th� �tru� �powe� �o� �Z8E'� �symbo� �loadin� �i� ��bes�  �
���������������evidence� �whe� �loadin� multipl� symbo� �table� � fro� �
���������������severa� files� Th� firs� fil� i� generall� � .SY� �fil� �
���������������specifyin� al� th� globa�  symbo� name� i� th� �progra� �
���������������t� �b� tested� Th�  subsequen� file� specifie� �o� �th� �
���������������comman� �lin� � ar� usuall� .PR� o� .LS� file� �o� �th� �
���������������individua� ��sourc� ��module� �tha� ��wer� ��originall� �
���������������assemble� �an� �the� linke� (whic� produce� �th� � .SY� �
���������������file)� �Althoug� onl� tw� file� (USERFIL� � an� �NFILE� �
���������������ar� �show� i� thi� exampl� th� numbe� o� .SY� an� �.PR� �
���������������file� specifie� i� th� comman� lin� i� limite� onl� �b�  �
���������������th� siz� o� Z8E'� inpu� buffe� whic� i� 8� � character� �
���������������long.


���������������USERFILE.CO� �i� loade� a� th� star� o� th� � TP� �onl� �
���������������afte� al� .SY� an� .PRN/.LS� file�  hav� bee� rea� �an� �
���������������th� symbo� tabl� built.

���������������I� n� bia� i� specified� Z8� wil� us� � bia�  o� zero� 
.lm
.rm 75

.cp 3
I� mor� tha� on� .LS� o� .PR� fil� i� bein� loaded� the� eac� fil� nam� ca� �
b� �specifie� wit� it� ow� bias� Th� bia� ma� b� entere� i� th� for� �o� �� �
symbo� name� hexadecima� number� decima� number� o� an� combinatiio� o� th� �
thre� �i� �a� �expressio� usin� th� � an� � operators� �I� �th� �individua� �
modul� �ha� � globa� entr� point� th� nam� o� whic� wa� previousl� �loaded� �
th� use� ca� bia� al� symbol� wit� th� valu� associate� wit� thi� name� �I� �
thi� �wa� al� symbols� bot� absolut� an� relocatable� ar� �associate� �wit� �
thei� actua� locatio� i� memory.
�.cp 2
Z8� �a� presentl� configure� ca� buil� � symbo� tabl� fro� th� �lis� �file� �
produce� b� th� followin� programs:

��� 1� Microsof��� MACRO-8���� V3.3�� .PR� file� Ma� 8� 198��
��� 2� Microsof��� MACRO-8���� V3.4�� .PR� file� De� 9� 198��
��� 3� Microsof��� LINK-8����� V3.4�� .SY� file� De� 9� 198� �
��� 4� SL� System� Z80AS͠���� V1.0�� .LS� file�
��� 5� SL� System� SLRNˠ����� V1.0�� .SY� file�
��� 6� SL� System� Z80AS͠���� V1.��� .PR� file� 

Z80AS� an� SLRN� ma� b� configure� fo� 8� o� 13� colum� output�

Z8� �use� �th� fil� nam� extensio� (th� thre� character� appearin� �t� �th� �
righ� o� th� period� t� determin� th� forma� o� th� file� Eac� o� th� abov� �
fil� type� ha� � distinguishin� format� Th� characteritic� o� eac� typ� ar� �
describe� i� APPENDI� A.
�������� �
Durin� �th� loadin� proces� Z8� display� statu� an� erro� message� �o� �th� �
consol� �relatin� �t� �th� activit� i� progres� �a� �show� �below�

.rm 70
.lm 6
�����STATU� MESSAGES

���� 1. Loading: USERFILE.COM

.lm 16�������������������� �
���������������Z8� �i� �attemptin� t� ope�  th� name� �fil� �(i� �thi�  �
���������������case� USERFILE.COM)

.lm 6
���� 2.� Number of symbols loaded:

.lm 16�������������������� �
���������������Followin� �th� loadin� o�  al� symbol� fro� �� �listin�  �
���������������fil� �o� �� .SY� file� th�  numbe� �o� �symbol� �loade�  �
���������������fro� �th� �specifie� fil� i�  displaye� �a� �� �decima�  �
���������������number.

.lm 6
���� 3.�� Loaded: 100� YYYY

.lm 16�������������������� �
���������������Z8� display� th� startin� Pages� ZZ� an� endin� �memor� �
���������������addresse� o� th� targe� fil�  (th� firs� fil� specifie�  �
���������������o� �th� CP/� comman� lin�  an� th� on� whic� �i� �goin�  �
���������������t� b� debugged).

���������������"Pages:� refer� t� th�  decima� numbe� o� page�  an� i� �
���������������th� coun� o� 25�  byt� page� i� th� file�  Thi� �numbe� �
���������������ma� �subsequentl� b� use� wit� th� CP/� � SAV� �comman� �
���������������onc� th� debu� sessio� ends� 

.lm 6
�����ERRO� MESSAG�S

���� 1.�� File not found

.lm 16�������������������� �
���������������Th� �fil� specifie� i� th�  comman� coul� no� b� �foun�  �
���������������o� th� specifie� drive.

.lm 6
���� 2.�� Symbol table not found

.lm 16�������������������� �
���������������Th� �specifie� fil� wa�  foun� bu� di� no� �contai� � � �
���������������properl� formatte� symbo� table.

.lm 6
.cp 4����� 3.�� Invalid offset - using 0000

���������������Th� �use� ha� specifie� a�  invali� offse� t� b� �adde�  �
���������������t� eac� loade� symbol� Z8�  wil� continu� t� loa� �thi�  �
���������������symbo� fil� bu� wil� no�  ad� an� bia� t� th� �symbols� �
���������������Thi� ��erro� �ma� �hav� � occure� �becaus� ��th� ��use�  �
���������������specifie� a� offse� i� th�  for� o� � symbo� whic� �ha�  �
���������������no� �bee� �previousl�  loaded� o� th� �use� �ma� � hav� �
���������������specifie� � numeri�  valu� whic� containe� a� � illega� �
���������������character.

.lm 16�������������������� �
����� 4.�� Syntax Error

.lm 16�������������������� �
���������������Th� fil� nam� wa� incorrectl� specified� 

.lm
.rm 75
Afte� �al� use� files� bot� symbo� file� an� th� .CO� fil� t� b� �debugged� �
hav� bee� loade� Z8� display� curren� memor� usag� a� follows:

���� Tota� Symbols���� XXX؍
���� Symbo� Table����� XXX� � XXX؍
���� Z8� relocated���� XXX� � XXX؍
���� To� o� memory���� XXXؠ���������� 

I� i� importan� t� not� tha� Z8� expect� th� file� appearin� i� th� comman� �
lin� t� b� appea� i� � specifi� order� Th� firs� fil� nam� appearin� i� th� �
comman� �lin� i� assume� t� b� th� targe� fil� whic� i� t� b� debugged� �I� �
i� �alway� th� las� fil� t� b� loaded� Al� fil� name� followin� th� �targe� �
fil� �nam� ar� assume� t� b� symbo� inpu� file� an� the� ar� loade� i� �th� �
orde� i� whic� the� appear.

Th� �firs� �fil� �name� i� th� comman� lin� i� alway� �loade� �startin� �a� �
addres� 10� hex� Th� "I� comman� contain� a� optio� t� allo� th� fil� t� b� �
loade� �a� � differen� address� Thi� featur� i� no� availabl� a� �th� �CP/� �
comman� lin� level.

Fo� � discussio� o� th� forma� o� symbo� file� se� APPENDI� A�
.pa�.tc INITIALIZATION ............................................. #
V� INITIALIZATION

Onc� Z8� ha� bee� loaded� an� ha� i� tur� loade� al� file� specifie� o� th� �
comman� �line� �i� initialize� al� use� register� t� � wit� �th� �followin� �
exceptions:

.rr  L--------------!----!----!----!----!----!----!----!-------------R
���� Th� user'� progra� counte� contain� addres� 10� he�  whic� i� th� �
�����star� o� th� TPA� 

���� Th� �user'� stac� pointe� i� se� t� th� startin� addres� �o� �Z8� �
�����(th� to� o� th� TPA� minu� two� Thes�  tw� byte� ar� se� t� �zer� �
�����i� accordanc� wit� CP/�  convention� Whe� CP/� load� � progra� i� �
�����initialize� � � �stac� �fo� th� loade� �progra� �b� �pushin� �th� �
�����addres� � o� �th� jum� t� th� syste� war� boo� routin� �ont� �it�  �
�����Thu� �use� �program� �(STAT.CO� i� a� �example� �ca� �choos� � t� �
�����terminat� �themselve� �an� �retur� t� CP/� b� �executin� �a� �RE� �
�����throug� �thi� �addres� o� th� stack� Z8�  accomplishe� �th� �sam� �
�����objective� �th� �000� o� th�  stac� permit� th� use� �progra� �t� �
�����retur� t� CP/� vi�  addres� 000� whic� alway� contain� � jum� �t� �
�����th�  system'� war� boo� routine�  

���� Th� use� � (interrupt� registe� i� se� t� th� valu�  containe� i� �
�����th� � registe� whe� Z8� wa� loaded�  Modif� a� you� ow� risk.

.rr-----------------!----!----!----!----!----!----!----!------------------R
Al� inpu� an� outpu� b� Z8� i� accomplishe� usin� buffer� containe� �withi� �
itself� Z8� doe� no� us� th� defaul� DM� buffe� a� absolut� locatio� 8� no� �
doe� i� us� th� defaul� Fil� Contro� Bloc� (FCB� a� absolut� locatio� 5C� 

���� Note������������������������������������������� �

.rr       L---------!----!----!----!----!----!----!----!-------------R
����������Whe� �CP/� finishe� loadin� an� program�  includin� Z8E� �i� �
����������move� �th� comman� lin�  tai� t� th� defaul� DM� �buffe� �a� �
����������absolut� � addres� 8� (hex� an� initialize� th� defaul� �FC� �
����������a� �absolut� addres� 5� t� th�  nam� o� th� firs� �fil� �(o� �
����������firs� tw� file�  i� tw� o� mor� ar� specified� appearin� �i�  �
����������th� �comman� �line� Z8� make� us� o� �thi� � informatio� �i� �
����������orde� t� loa� th� use�  progra� an� an� symbo� files� I� th�  �
����������progra� �t� �b� �teste� als� expect� a� �in� �tialize� �FC� �
����������and/o� �DM� �buffe� (a� i� ver�  ofte� th� case)� �the� �th� �
����������use� �mus� �effec�  thi� befor� attemptin� �t� �execut� �th�  �
����������program� 

����������Fo� �example� �man� tex� editin� program� � ar� �invoke� �b� �
����������typin� th� nam� o� th�  edito� progra� followe� b� th� �nam� �
����������o� �th� � progra� t� edi� o� th� CP/� comman� line� � a� �i� �
����������hypothetica� case:

���������������� A>EDI� B:FYL2EDIT.BA�

����������Onc� �th� progra� EDIT.CO� i� loade� i� ma�  expec� t� �fin� �
����������th� �defaul� �FC� �t� b� alread� se� u� �t� �rea� �th� �fil�  �
����������FYL2EDIT.BAS� �EDIT.CO� ma� als� expec�  th� DM� �buffe� �t� �
����������contai� �th� �numbe� o�  character� i� th� comman� �lin� �a� �
����������addres� � 80� �a� �wel� th� th� tex� o� �th� �comman� � lin� �
����������startin� �a� addres� 81� I� thi� exampl� locatio� �8� �woul� �
����������contai� � hexadecima� � (decima� 15� representin� th� numbe� �
����������o� �characters� an� location� 8�  throug� 8� �woul� �contai� �
����������th� 1� character�  (spac� throug� S)� Similiarly� th� �firs�  �
����������byt� �o� �th� defaul� FC� a� addres� 5�  woul� �contai� �th� �
����������numbe� �� (numeri� equ� valen� o� driv� B� an� th� nex� �1� �
����������byte� � woul� contai� th� fil� nam� FYL2EDI� i� � ASCII� �I� ������������th� �nam� FYL2EDI� wa� shorte�  tha� � characters� the� �th� �
����������remainde� �o� � th� �fil� nam� fiel� i� �th� �FC� �woul� �b�  �
����������fille� �wit� ASCI� spaces� Th� nex� � byte� � woul� �contai� �
����������th� �fil� typ� i� ASCII� i�  thi� exampl� th� fil� �typ� �i� �
����������BAS� �I� �n� � fil� typ� wa� �specified� �thi� �fiel� �woul�  �
����������contai� � ASCI� spaces.

����������No� �i� th� use� wa� t� debu� th� EDI�  progra� �usin� �Z8E� �
����������thi� �initialisatio� o�  th� defaul� DM� buffe� an� �defaul� �
����������FC�  mus� b� accomplishe� "b� hand� prio� t�  attemptin� �t� �
����������debu� EDIT.CO� owin� t� th�  fac� tha� CP/� ha� alread� �se� �
����������u� �thes� �t� b� area� wit� th� dat� fro� th� �comman� �lin�  �
����������whic� �wa� �type� i� t� loa� Z8E� I� short� � EDI� �mus� �b� �
����������tricke� int� believin� i� wa�  loade� b� CP/� an� no� b� Z8� �
����������an� �th� use� mus� perfor� th� initializatio� o� thes� � tw� �
����������areas� � Th� use� ma� us� th� "I� comman� t� initializ� �th� �
����������defaul� �comman�  lin� buffe� an� FCB� �Furthe� �informatio�  �
����������regardin� th� forma� o� th� FC� an� DM�  buffe� ma� m� foun� �
����������i� �Digita� Research'�  CP/� 2.� INTERFAC� GUID� o� �i� �th� �
����������CP/� � PROGRAMMER'� GUIDE.
.pa�.rr-----------------!----!----!----!----!----!----!----!------------------R
.tc BREAKPOINTS ................................................ #
V. BREAKPOINTS

Breakpoint� ar� thos� addresse� i� th� progra� unde� tes� a� whic� th� use� �
wishe� �t� suspen� executio� an� retur� contro� t� Z8E� Th� use� �ma� �set� �
clear� an� displa� breakpoint� a� an� time� vi� th� appropriat� comman� �i� �
respons� t� Z8E'� asteris� prompt� Z8E'� implementatio� o� breakpoint� doe� �
no� �forc� �th� �use� t� tediousl� ente� breakpoin� �addresse� �ever� �tim� �
executio� �i� �resumed� �Rather� th� use� ma� ente� �u� �t� �1� �breakpoin� �
addresse� an� eac� breakpoint� onc� set� i� store� i� on� o� Z8E'� interna� �
table� �an� remain� i� effec� unti� explicitl� cleare� b� th� use� vi� �th� �
Clea� breakpoin� comman� (se� � command).

Z8� �als� �allow� �yo� t� specif� � pas� coun� t� b� �associate� �wit� �an� �
breakpoin� �tha� �i� �set� �Pas� count� indicat� �th� �numbe� �o� �time� �� �
particula� instructio� mus� b� execute� befor� Z8� wil� regai� control.

Furthermore� �Z8� doe� no� modif� an� cod� i� th� use� progra� unti� �� �G� �
comman� �i� issue� (se� � command)� Thi� permit� th� use� t� examin� �code� �
an� mak� patche� i� desired� a� an� poin� i� th� debu� session.

Whe� �� breakpoin� i� reache� i� th� use� progra� an� Z8� regain� �control� �
th� �message� *BP*XXX� i� displaye� wher� XXX� represent� �th� �hexadecima� �
addres� o� th� breakpoint� I� addition� Z8� wil� displa� th� symboli� �nam� �
o� thi� addres� i� on� exist� i� th� symbo� table� Z8� follow� thi� wit� �� �
displa� �o� �th� asteris� promp� indicatin� i� i� read� read� �fo� �comman� �
processing.

Th� �message� �*ERROR*BP*XXX� �i� displaye� o� �th� �consol� �wheneve� �Z8� �
determine� tha� contro� ha� bee� regaine� withou� � vali� breakpoin� havin� �
bee� reached� Thi� i� generall� cause� b� � use� progra� whic� ha� gon� of� �
th� �dee� end� I� th� use� examine� th� curren� content� o� �th� �register� �
(vi� th� � command� th� curren� progra� counte� wil� mos� assuredl� contai� �
a� �addres� �whic� ha� no� previousl� bee� se� a� � breakpoint� �Thing� �t� �
loo� fo� whe� thi� situatio� arise� include� � progra� tha� ble� it� stack� �
� progra� tha� performe� � � 1/� gaine� wit� � ful� twis� indirec� �throug� �
� �register� �ie� J� (HL� int� th� grea� unknown� an� attemptin� �t� �trac� �
wher� wis� me� fea� t� trea� (BIO� an� BDO� I/� routines).

Z8� �wil� allo� yo� t� singl� ste� (trace� an� se� breakpoint� anywher� �i� �
memory� �However� �bea� �i� �min� �tha� a� yo� �ente� �th� �BIO� �an� �BDO� �
netherworl� �you� �stac� pointe� wil� a� som� poin� b� �save� �directl� �i� �
memor� �a� CP/� switche� t� it� ow� stac� (you� stac� pointe� i� no� �save� �
o� �� �stac� �b� �CP/M)� I� � breakpoin� ha� bee� �se� �a� �a� �instructio� �
somewher� i� BDO� o� i� th� BIO� (afte� thi� sav� o� you� stac� pointe� ha� �
occured� �an� �thi� �breakpoin� i� reached� Z8� wil� �itsel� �cal� �� �BDO� �
routin� �i� a� attemp� t� displa� th� *BP*XXX� messag� o� th� �console� �A� �
thi� poin� CP/� wil� sav� Z8E'� stac� pointe� an� overla� your� i� �memory� �
Whe� �BDO� �eventuall� �restore� �th� stac� �pointe� �an� �execute� �� �RE� �
instructio� yo� wil� no� retur� t� you� progra� an� you� stac� pointe� wil� �
b� gone� Thes� routine� ca� b� traced� albei� wit� difficulty� bu� yo� mus� �
kee� a� ey� o� wha� CP/� i� doin� wit� th� stac� pointer.

A� distributed� Z8� use� memor� locatio� 38� a� it� breakpoin� vector� � I� �
you� syste� softwar� use� 38� fo� it� ow� purpose� o� i� yo� ar� �debuggin� �
anothe� progra� whic� vector� throug� 38� the� yo� ma� wan� t� patc� Z8� t� �
us� �� differen� vecto� address�  Chang� th� valu� o� RSTVE� t� on� o� �th� �
othe� lega� values�  Instruction� fo� doin� thi� ar� give� i� sectio� 2.
.pa�.tc COMMAND INPUT .............................................. #
.lm
.rm 75
VI�� COMMAN� INPUT

Onc� �fil� �an� symbo� tabl� loadin� ha� bee� completed� �Z8� �prompt� �th� �
operato� �fo� comman� inpu� b� displayin� th� "*� character� �Th� �operato� �
ca� the� typ� an� o� Z8E'� singl� lette� commands� Som� command� requir� n� �
argument� �whil� other� r�quir� betwee� on� an� four� Argument� ma� b� �i� �
an� �o� th� form� liste� belo� (excep� a� note� i� th� descriptio� �o� �th� �
indiv�dua� commands)� 

.pm 6
.lm 21
.rm 70
����� SYMBOL:       An� ��symbo� �previousl� �loade� ��o� ��previousl�  �
��������������������entere� �vi� �th� �keyboar� (se� �� �command� �ma�  �
��������������������appea� �a� �� comman� argument� �Al� �symbol� �ar�  �
��������������������treate� a� 1� bi� values.

�����   HEX:        � �1� �bi� �he� �numbe� �ma� �b� �entere� �a� ��a�  �
��������������������argument� �Onl� th� las� fou� �character� �entere� �
��������������������ar� �treate� �a� �significan� �inpu� �i� �Z8� � i� �
��������������������expectin� �� 1� bi� argument� I� thos� � instance� �
��������������������wher� Z8� expect� � � bi� argument�  onl� th� las� �
��������������������tw� character� ar� significant�  A� such� th� use� �
��������������������ma� ��elec� ��t� �correc� ��mistake� ��b� ��eithe� �
��������������������backspacin� �an� �retyping� o�  b� �continuin� �t� �
��������������������ente� �th� numbe� an� ensurin� tha� th� �erroneou� �
��������������������digi� doe� no� a� pea� i� th� rightmos� fou� �(o� �
��������������������two� character� a� show� i� th� followin� example:

����������������������� *� 1E21F�

.pm
��������������������I� � 1� bi� argumen� i� expecte�  Z8� woul� ignor� �
��������������������th� firs� tw�  digit� (� an� E� an� woul� �examin�  �
��������������������th� content� o� memor� locatio�  21F4.


������������������� I� �n� �symbo� �tabl� i� presen� �i� �memor� �the�  �
��������������������hexadecima� number� (� o� 1� bit� i� length� � ma� �
��������������������begi� wit� an� digi� � � F� However� i�  � �symbo� �
��������������������tabl� �i� i� memor� the� al� �hex�decima� �number� �
��������������������whic� �begi� wit� � digi� i� th�  rang� � � � �ar� �
��������������������evaluate� ��firs� ��a� �symbo� �� names� ��I� ��n� �
��������������������correspondin� �nam� i� foun� i�  th� symbo� �tabl� �
��������������������the� �Z8� �attempt� t� r�-evaluat� th� nam� �a� �� �
��������������������hexadecima� �number� Fo�  example� th� toke� �DEA� �
��������������������i� � vali� symbo�  name� a� wel� a� � vali� �hex��
��������������������decima� number�  I� � symbo� tabl� i� presen� the� �
��������������������Z8� �firs�  searche� th� symbo� tabl� lookin� �fo� �
��������������������th� � strin� �DEAD� I� n� matc� �occur� �the� �Z8�  �
��������������������treat� �DEA� a� th� hex�decima� numbe� 0DEAD� � T� �
��������������������forc� ��Z8� ��t� �evaluat� �a� ��argumen� ��a� ���  �
��������������������hexadecima� �numbe� �prefi� th� �argumen� �wit� ��  �
��������������������leadin� zer� a� i� 0DEAD� 


.pm 6
���� REGISTER:����� Vali� �Z8� 1� bi� registe� name� ar� permitte� �a� �
��������������������arguments� I� � 1� bi� registe� nam�  i� �entered� �
��������������������Z8� use� th� 1� bi� valu�  currentl� containe� �i� �
��������������������th� ��specifie� �registe� � pai� �i� �th� ��user'� �
��������������������registe� se� a� a� argument.
 �
������������������������ *� H� �

��������������������instruct� �Z8� t� dum� th� firs�  eigh� o� �memor� ����������������������byte� whic� ar�  locate� a� th� addres� �containe� �
��������������������i�  th� user'� H� registe� pair


������������������� Vali� 1� bi� registe� names�
����������������������������� 
����������������������������� A� � Accumulato� an� Fla�
����������������������������� B� � B� registe� pai�
����������������������������� D� � D� registe� pai�
����������������������������� H� � H� registe� pai�
����������������������������� S� � Stac� Pointe�
����������������������������� Р � Progra� Counte�
����������������������������� P� � Progra� Counte�
����������������������������� I� � I� inde� registe� 
����������������������������� I� � I� inde� registe�

������������������� Not� tha� th� progra� counte� ma� b� specifie� �i� �
��������������������eithe� �o� tw� ways� Th� singl� characte� "P� �ca� �
��������������������b� �use� t� specif� th� progra�  counte� �provide� �
��������������������i� �doe� no� appea� i� a�  expression� T� �includ� �
��������������������th� �curren� valu� o�  th� user'� progra� �counte� �
��������������������i� a� expressio�  th� mnemoni� "PC� mus� b� used.

������������������� I� �a� expressio� use� a� a� argumen� �contain� �� �
��������������������registe� �pai� a� on� o� it� terms� �th� �registe� �
��������������������pai� �mus� �b� �th� firs� �term� �Also� �onl� �on� �
��������������������registe� pai� ma� b� include� i� a�  expression:

.rm 65
.pm 36
.lm 26
������������������������ HL+������ vali� expressio�

������������������������ 5+DŠ���� invali� expressio� � registe� �
���������������������������������� pai� i� no� th� firs� ter�

����������������������� HL+BC����� invali䠠 expressio - mor� �
�����������������������������������tha� on� registe� pai� wa�  �
�����������������������������������specified

������������������������ P-������� invali䠠 expressio � "PC� �
���������������������������������� mus�� b� use� t� includ� th� �
���������������������������������� curren�� valu� o� th� progra� �
���������������������������������� counte� i� a� expressio�

.lm 21
.rm 70
������������������� T� differentiat� betwee� th� hexadecima� � number� �
��������������������AF� BC� an� D� an� th� Z8� registe�  pair� o� �th� �
��������������������sam� nam� b� sur� t� prefi� th�  numerica� versio� �
��������������������wit� �� leadin� 0�  Not� als� tha� th� �Z8� �prim� �
��������������������registe� �name� � ar� �no� �allowe� �a� �argument� �
��������������������excep� i� th� �  command.

.cp 3
.pm 6
���� REGISTER������ Z8� allow� th� use� t� specif� th� dat�  contained
.pm 6
�����INDIRECT:������i� �th� memor� locatio� pointe� t� b� � � registe� �
��������������������pai� a� a� argument� Fo� instance�  i� th� �user'� �
��������������������H� registe� pai� containe� 18E�  an� th� addresse� �
��������������������18E� �an� �18E� �containe� th�  byte� �4� �an� �6� �
��������������������respectively� �the� �th� �comman� �*� �(HL� �woul� �
��������������������examin� �th� �content�  o� memor� �locatio� �6142� �
��������������������Not� tha� registe�  indirec� memor� reference� ar� �
��������������������indicate� b�  enclosin� th� registe� pai� nam� �i� �
��������������������PARENTHESE� �whic� �follow� �th� �ZILO� ��mnemoni� �
��������������������metho� o� signifyin� "th� content� of".
�������������������� Th� �mos� usefu� applicatio� o� registe� �indirec� �
��������������������argument� �i� �t� se� breakpoint� �a� � subroutin� �
��������������������retur� �addresses� �Conside� th�  situatio� �o� �� �
��������������������progra� �whic� �i� �currentl� � suspende� �vi� ��� �
��������������������breakpoin� ��somewher� ��i� �th� � middl� ��o� ��� �
��������������������subroutine� �Th� �use� i� �n� � longe� �intereste� �
��������������������debuggin� �th� �bod� o� th�  subroutine� �h� �onl� �
��������������������care� abou� gettin� bac�  t� th� instructio� �tha� �
��������������������follow� ��th� ��CAL� �tha� � go� �hi� ��int� ��th� �
��������������������subroutine� Registe� indirec� forma� allow� hi� t� �
��������������������enter:

������������������������������������ *� (SP�

.cp 2
.pm
������������������� Thi� �inform� �Z8� �t� se� �� �breakpoin� �a� �th�  �
��������������������addres� pointe� t� b� th� stac� pointe�  register.


.pm 6
���� DECIMAL:������ Decima� �number� �i� th� rang� � � �6553� �ma� �b�  �
��������������������entere� �a� �arguments� Al� digit� o� �th� �numbe� �
��������������������mus� �b� i� th� rang� �-9� � decima�  numbe� �mus� �
��������������������b� �followe� �b� � "#� character� � otherwis� �Z8� �
��������������������wil� �trea� �i� a� � he� �number� � Th� �followin� �
��������������������exampl� �show� �� decima� numbe�  bein� �inpu� �a� �
��������������������par� o� th� � command:

������������������������ *� 512�� �
��������������������� �
����������������������������� instruct� Z8Š t� examin� memor� �
����������������������������� locatio� 51� decima� (20� hex�


����� LITERAL:����� ASCI� �literal� �u� �t� 7� �byte� �i� �lengt� �ar�  �
��������������������permitte� a� argument� (Z8E'� inpu� buffe� i� � 8� �
��������������������character� �lon� �les� th� openin� �an� � trailin� �
��������������������quot� ��characters)� �ASCI� �literal� �� mus� ��b� �
��������������������enclose� i� quotes� Th� quot� characte� itsel� �i� �
��������������������th� �onl� characte� no� pe� mitte� a� � �literal� �
��������������������Command� whic� d� no�  permi� th� us� o� ARGUMEN�-�
��������������������STRING� (se� below� wil� stil� accep� inpu� i� th� �
��������������������for� �o�  quote� strings� I� suc� � cas� Z8� �wil�  �
��������������������ignor� �al� �bu� th� las� tw� �character� �o� �th�  �
��������������������quote� �literal� treatin� th� inpu� a� � �1� � bi� �
��������������������number� Fo� exampl� i� th� use� entered:

����������������������������������� *� 'ABCD�

.pm
������������������� Z8� woul� trea� 'BC� a� � 1� bi� numbe� an� �begi� �
��������������������disassemblin� a� addres� a� 4243.

.cp 3
.pm 6
�����ARGUMENT-      Th� �� �(find)� � (examin� memory)� � �(quer� �I/� �
�����STRINGS:�������port� withou� pr�-read)� � (quer� I/�  ports)� an� �
��������������������� �(fil� �memory� �command� �permi� � th� �us� �o� �
��������������������ARGUMEN�-STRINGS� �whic� ar� simpl� � combination� �
��������������������o� al� vali� argumen� type�  separate� b� �commas� �
��������������������ARGUMEN�-STRING� �ma� �b�  an� lengt� �u� �t� �th� �
��������������������limi� �o� �Z8E'� inpu�  buffe� whic� i� �8� �byte� �
��������������������long� ARGUMEN�-STRING� ma� b� terminate� b� eithe� �
��������������������� carriag� retur� o� th� firs� spac� characte� no�  �
��������������������appearin� ��i� �betwee� �quot� ��characters� ��Th�  �
��������������������followin� �i� a� exampl� o� � 1� �byt� � ARGUMEN�-����������������������STRING� �strin� whic� combine� SYMBOLS� �LITERALS� �
��������������������HEX� an� DECIMA� numbers:

���������������������� SYMBOL,'xyZ',4F,12E4,9,21#,511#,'ABc�

.pm
��������������������Assumin� �tha� SYMBO� i� equa� t� 177� �the� � th� �
��������������������abov� ARGUMEN�-STRIN� woul� evaluat� to�  0� 7� 7� �
��������������������7� 5� 4� 1� E� 0� 1� 0� F� 4� 4� 6� 

������������������� Again� ARGUMEN�-STRING� ar� terminate� b� eithe� � �
��������������������carriag� �retur� o� b� th� firs� �spac� �characte� �
��������������������tha� doe� no� appea� i� � quote� litera� string.

.lm
.rm 75
Z8� permit� expression� usin� th� � an� � operators�  An� argumen� typ� ma� �
b� �combine� �wit� an� othe� type�  Th� lengt� o� a� expressio� i� �limite� �
onl� �b� th� siz� o� th� inpu� buffer�  Expression� ar� evaluate� fro�lef� �
t� righ� an� th� us� o� parenthese� i� no� permitted� 

Z8Š indicate� argumen� error� b� printin� � questio� mark�

Argument� ma� b� lin�-edite� usin� th� standar� CP/� contro� characters:

�������������� backspace�� eras� th� las� characte� type�
�������������� contro� X�� eras� th� entir� lin� �
�������������� contro� C�� retur� t� CP/� vi� war� boo�

Whe� �enterin� �argument� �contro�-� clear� th� �argumen� �list� �� �secon� �
contro�-� clear� th� comman� lin� an� cause� Z8� t� repromp� fo� � command.

Al� �inpu� �i� �truncate� t� th� siz� o� Z8E'� inpu� �buffe� �whic� �i� �8� �
character� long� 

Al� alphabeti� inpu� t� Z8� ma� b� i� uppercas� o� lowercase� Al� outpu� b� �
Z8� �follow� �th� �dictate� o� th� CAS� byt� a� patche� b� �th� �use� �(se� �
INSTALLATION).

I� �thi� �manua� th� appearanc� o� squar� bracket� � � aroun� �a� �argumen� �
alway� indicate� tha� th� argumen� i� optional.

Afte� �loadin� �an� symbol� an� th� applicatio� progra� Z8� wait� �o� �in��
truction� fro� th� operator�  Thos� instruction� compris� �singl�-characte� �
commands� � Dependin� �o� th� specifi� command� operand� ma� �b� �required�  �
Agai� dependin� o� th� command� pressin� th� 'return� ke� ma� b� sufficien� �
t� �continu� th� command�  Whe� continuatio� i� possible� th� genera� �rul� �
i� �tha� 'return� perform� it� an� othe� ke� terminate� th� �command�

Th� followin� page� describ� al� th� command� understoo� b� Z8E.
.pa�.tc     A    Assemble .......................................... #
���� Assemble�
________________________________________________________________�


Th� �� comman� permit� th� use� t� effec� inlin� assembl� o� Z8� �assemble� �
sourc� �code� includin� label� an� symbols� usin� th� ful� Z8� �instructio� �
set� I� addition� th� assemble� accept� standar� Zilo� mnemonic� �(APPENDI� �
B)� expression� usin� th� � an� � operators� a� wel� a� th� followin� �fiv� �
assemble� �directives� �ORG� DEFB� DDB� EQU� an� DEFW� Th� �forma� �o� �th� �
comman� is:

������� *�� ARG�� <cr�

��������� wher� ARG�� represent� th� startin� addres� a�� whic� �
��������� assembl� wil� tak� plac�

��������� ARG� ma� b� o� an� typ�


Z8� �initiall� prompt� th� use� b� firs� disassemblin� an� �displayin� �th� �
instructio� �currentl� �locate� a� th� addres� specifie� b� ARG1� �Thi� �i� �
don� a� � convenienc� t� permi� th� use� t� ensur� tha� an� patche� wil� b� �
assemble� int� memor� a� th� intende� location� Z8� the� output� � carriag� �
return/lin� feed� display� th� addres� specifie� a� ARG1� an� await� input� �
Z8� �wil� no� disassembl� befor� ever� lin� o� sourc� cod� entere� �b� �th� �
user� onl� befor� th� firs� one� 


Z8� expect� assemble� inpu� i� th� followin� format�


������������ LABEL�� opcod� [operand1� [,operand2�


Th� �labe� fiel� i� alway� optional� th� opcod� fiel� i� mandator� onl� �i� �
n� labe� wa� entered� an� th� operan� fiel� mus� naturall� b� include� �fo� �
thos� Z8� instruction� whic� requir� one� Th� thre� field� ma� b� separate� �
fro� on� anothe� b� space� o� ta� characters.

Z8� �doe� no� automaticall� reserv� spac� withi� itsel� fo� �use� �supplie� �
symbo� names� Use� supplie� symbols� a� oppose� t� thos� loade� fro� files� �
ar� �entere� �fro� �th� keyboar� i� th� labe� fiel� �usin� �th� �(A)ssembl� �
command� �Symbo� �tabl� spac� t� hol� use� supplie� symbo� �name� �mus� �b� �
explicitl� �requeste� o� th� CP/� comman� lin� a� explaine� i� th� �sectio� �
"INVOKIN� �Z8� a� o� th� CP/� COMMAN� LEVEL"� Thes� use� supplie� �symbols� �
onc� �entered� �ma� b� reference� i� th� operan� fiel� �o� �an� �subsequen� �
assembl� �statemen� �o� �i� th� argumen� fiel� o� an� �Z8� �command� �Thes� �
symbol� �com� �i� hand� whe� disassemblin� .CO� file� fo� whic� �n� �sourc� �
listin� exist� an� als� whe� patchin� code.

.cp2
Th� �assemble� �i� � on� pas� assemble� an� forwar� reference� �t� �symbol� �
whic� �d� �no� alread� appea� i� th� symbo� tabl� ar� �flagge� �a� �errors� �
However� �Z8� �allow� th� us� o� th� OR� directiv� (se� �discussio� �below� �
whic� allow� th� use� t� manipulat� th� assembler'� locatio� counter� whic� �
help� t� minimiz� th� n� forwar� referenc� limitation.

Label� ma� begi� i� an� column� bu� al� label� mus� b� followe� b� � �colo� �
eve� �thos� appearin� i� a� EQ� statement� Label� ma� b� o� an� lengt� �bu� �
onl� th� firs� � character� ar� significant� Z8� alway� assign� th� 1� �bi� �
valu� �o� �th� �assembler'� curren� locatio� counte� �t� �th� �labe� �bein� �
entered� �unles� �th� �statemen� i� a� EQ� directive� Label� �nee� �no� �b� ��followe� �b� a� opcod� an� thi� (a� wel� a� th� EQ� directive� �provide� �� �
convenien� �wa� �t� �assig� �� �valu� t� � �symbo� �name� �Merel� �se� �th� �
assembler� �locatio� �counte� �(vi� th� OR� directiv� o� �a� �ARG� �i� �th� �
comman� �line� t� th� valu� yo� wis� t� assign� the� typ� th� �symbo� �nam� �
followe� �b� �� �carriag� return� N� objec� cod� i� produce� �an� �n� �use� �
memor� �area� �ar� �modifie� bu� th� symbo� an� it� �associate� �valu� �ar� �
entere� �int� �th� use� symbo� table� Z8� doe� no� trea� �duplicat� �symbo� �
name� �a� �errors� Rather� i� th� use� enter� � symbo� nam� �whic� �alread� �
appear� �i� �th� �symbo� table� th� valu� associate� wit� �th� �ne� �symbo� �
replace� th� on� associate� wit� th� old� Fo� example� i� th� symbo� ENTRY� �
exist� �i� th� symbo� tabl� an� i� associate� wit� th� valu� 23D� �an� �th� �
use� assemble� th� followin� instruction:

���� 41F� 0� 0������� ENTRYP� L� C,�

Z8� woul� replac� 23D� wit� 41FF�

Assemble� �statement� whic� d� no� contai� label� ma� begi� i� an� �column� �
includin� �colum� �one� Ther� i� N� nee� t� inser� � leadin� spac� �o� �ta� �
befor� a� opcod� i� th� opcod� i� no� precede� b� � label.

Operand� appearin� i� th� operan� fiel� o� th� instructio� t� b� �assemble� �
ma� �b� an� o� th� followin� type� subjec� onl� t� th� provis� tha� 1� �bi� �
value� canno� appea� a� operan� fo� thos� Z8� instruction� whic� requir� �� �
bi� values� Expression� combinin� an� o� th� followin� fou� type� (wit� th� �
� an� � operators� ar� als� permissible� 

�������������� SYMBO̠ (fro� symbo� table��
�������������� HE؍
�������������� LITERA� (tw� byte� maximum��
�������������� DECIMA�


I� �additio� th� dolla� sig� ($� ma� als� appea� i� bot� th� operan� �fiel� �
o� �an� instructio� i� whic� � 1� bi� operan� i� allowed� an� als� �i� �th� �
operan� fiel� o� an� relativ� jum� instruction� Th� dolla� sig� �represent� �
th� curren� valu� o� th� assembler'� locatio� counter� tha� is� th� addres� �
appearin� �o� th� lin� a� whic� th� assembl� i� takin� place� �Th� �operan� �
fiel� o� � relativ� jum� instructio� ca� b� entere� i� eithe� o� tw� �ways� �
Th� �use� ma� cod� th� operan� usin� th� dolla� sig� mentione� abov� a� �i� �
th� followin� examples:


��������� JҠ NZ,$+1������� ;jum� t� addres� PC+1� (hex����� �
��������� �
��������� DJNڠ $-24������� ;jum� t� addres� PC-2� (decimal�

Th� use� ma� alternativel� specif� � 1� bi� valu� i� th� operan� fiel� o� � �
relativ� �jum� instructio� an� le� Z8� calculat� th� relativ� �displacemen� �
fro� th� assembler'� progra� counte� a� show� below:

��������� JҠ�� C,LABE̠���� Assumin� LABE� exists� i� th� symbo� �
���������������������������� tabl� Z8� wil� calculat� th� offset� �
���������������������������� LABE̠ mus�� b� withi� +12� o� -12�� �
���������������������������� byte� fro� th� assembler'� locatio� �
���������������������������� counte� o� a� assembl� erro� wil� �
���������������������������� result�

��������� JҠ���� NZ,108���� Z8Š calculate� th� displacemen� be� �
���������������������������� twee� th� assembler'� curren�� loca��
���������������������������� tio� counte� an� th� addres� 108�� ������������������������������ (hex)�
�� �
Z8� �indicate� �erro�-fre� inpu� b� firs� displayin� th� �resultan� �objec� �
cod� �an� �the� �displayin� (o� th� nex� line� th� nex� �addres� �a� �whic� �
assembl� wil� tak� place� 

Assembl� �error� �ar� alway� indicate� b� � doubl� pai� o� �questio� �mark� �
whic� appea� followin� th� locatio� counter� A� erro� fla� i� als� �printe� �
an� wil� b� on� o� th� following:

��������������� ERRO� FLAǠ������������� MEANIN�

������������������� ̠������� Labe� start� wit� numeri� characte�
�������������������������������� �
������������������� Ϡ������� Invali� opcod�

������������������� Ӡ������� Synta� erro�

������������������� Ԡ������� Symbo� tabl� ful젠��������������� 

������������������� ՠ������� Instructio� reference� a� undefine�
����������������������������� symbo� nam�

������������������� ֠������� Valu� erro� � � 1� bi�� valu� �
����������������������������� wa� specifie� a� a� operan� fo� �
����������������������������� a� instructio� whic� permit� �
����������������������������� onl� � bi� numbers�

I� �a� �erro� �occurs� Z8� wil� repromp� th� use� wit� �th� �sam� �locatio� �
counte� address.

A� �wa� �mentione� �previousl� �th� �Z8� �assmeble� �use� �standar� ��Zilo� �
mnemonics� �Th� �on� �exceptio� t� thi� i� th� E� �AF,AF� �instruction� �T� �
assembl� thi� instructio� th� trailin� quot� characte� mus� b� omitted.

Z8� support� th� OR� directiv� whic� allow� th� use� t� chang� th� valu� o� �
th� �assembl� locatio� counter� Th� operan� fiel� o� th� OR� directiv� �ma� �
b� �� 1� bi� argumen� o� an� type� Afte� settin� th� ne� assembl� �locatio� �
counte� Z8� display� th� disassemble� instructio� a� th� ne� address.

Z8� �support� �th� DEFB� DEFW� an� DD� directive� whic� giv� th� �use� �th� �
abilit� �t� �assembl� �dat� constant� int� memory�  DEF� accept� a� �� �bi� �
operand�th� �valu� o� whic�  is place� int�  memor� a� th� addres� �o� �th� �
assembler'� curren� locatio� counter�  DEF� allow� th� use� t� specif� �1� �
bi� operan� value� th� lo� orde� byt� o� whic� i� place� int� memor� a� th� �
addres� �o� th� assembler'� curren� locatio� counter� whil� th� hig� �orde� �
byt� o� th� operan� i� place� int� memor� a� th� addres� o� th� assembler'� �
curren� locatio� counte� plu� one� Thi� i� i� accordanc� wit� th� �8080/Z8� �
conventio� �o� storin� th� hig� orde� byt� o� 1� bi� dat� towar� �th� �hig� �
en� �o� memory� Th� DD� (defin� doubl� byte� directiv� allow� th� �use� �t� �
specif� � 1� bi� valu� which� i� contras� t� th� DEF� directive� i� �store� �
i� memor� wit� th� hig� orde� byt� towar� th� lo� en� o� memory� Tha� is� � �
DD� �directiv� instruct� Z8� t� stor� th� mos� significan� byt� o� �th� �1� �
bi� �operan� �valu� �i� memor� a� th� addres� o� �th� �assembler'� �curren� �
locatio� counter� an� th� leas� significan� (lo� order� byt� i� place� int� �
memor� a� th� addres� o� th� assembler'� curren� locatio� counte� plu� one� 

Th� �EQ� �directiv� allow� th� use� t� assig� � valu� t� � symbol� �A� �EQ� �
directiv� �doe� �no� �generat� objec� code� I� merel� allow� �th� �use� �t� �
referenc� �� �numeri� �valu� �b� � symboli� �nam� �i� �subsequen� �assembl� �
statement� o� monito� commands� I� i� especiall� usefu� whe� use� prio� �t� ��disassemblin� �(se� � command� cod� fo� whic� n� symbo� tabl� �exists� �Th� �
EQ� �directiv� �require� th� use� t� suppl� � symboli� nam� �i� �th� �labe� �
fiel� �o� th� instruction� I� Z8� indicate� error� i� a� EQ� �statemen� �b� �
printin� questio� marks� I� a� EQ� statemen� i� correctl� assemble� b� Z8E� �
th� addres� o� th� assembler'� curren� locatio� counte� i� erase� sinc� �a� �
EQ� �statemen� �generate� �n� �objec� �code� �Operand� �appearin� �i� ��EQ� �
statement� �ar� evaluate� t� � 1� bi� value� Z8� wil� displa� th� valu� �o� �
thi� �1� �bi� �numbe� a� fou� he� digit� i� th� objec� cod� �fiel� �o� �th� �
console�
.pa�.tc     B    Set Breakpoint .................................... #
 �� Se� Breakpoint�
________________________________________________________________�


Breakpoint� �ar� �thos� �addresse� �a� whic� th� �use� �wishe� �t� �suspen� �
executio� o� th� progra� unde� test� Breakpoint� ma� b� se� a� an� tim� �i� �
respons� �t� �Z8E'� asteris� prompt� Z8� allow� th� use� t� se� �u� �t� �1� �
individua� breakpoint� i� hi� program� Z8� als� allow� th� use� t� �specif� �
� �pas� coun� t� b� associate� wit� an� breakpoint� Th� comman� i� �invoke� �
a� follows:


���� *� ARG1[,pas� count� [ARG2..� ARGn� <cr�

��������� wher� eac� argumen� represent� th� addres� i� th� use� �
��������� progra� a� whic� � breakpoin� i� t� b� se� 

Normally� �tha� �i� whe� n� pas� coun� i� specifed� executio� o� �th� �use� �
progra� �stop� �an� contro� return� t� th� Z8� comman� leve� a� soo� �a� �� �
breakpoin� i� reached� Pas� count� ar� use� t� infor� Z8� tha� executio� o� �
th� use� progra� shoul� hal� onl� whe� th� specifie� breakpoin� i� �reache� �
th� numbe� o� time� time� indicate� b� th� pas� count� 

Pas� count� ar� specifie� b� followin� th� breakpoin� addres� wit� � �comm� �
an� the� enterin� � pas� coun� immediatel� followin� th� comma.

A� �existin� pas� coun� ma� b� change� t� � differen� valu� �b� �reenterin� �
th� sam� breakpoin� address� followin� i� wit� � comma� an� the� specifyin� �
th� �ne� pas� count� T� brea� o� � mult�-byt� Z8� instructio� �th� �addres� �
specifie� �a� th� breakpoin� addres� mus� b� tha� o� th� firs� byt� o� �th� �
instruction� User� wh� fai� t� observ� thi� rul� wil� generall� fin� �thei� �
program� hoppin� th� nex� bu� t� neve�-neve� land� I� � patc� i� mad� a� a� �
addres� o� � breakpoin� currentl� i� effec� b� sur� th� breakpoin� �addres� �
i� stil� pointin� a� th� firs� byt� o� th� ne� instruction� 

Multipl� breakpoint� ma� b� se� wit� th� sam� � comman� b� separatin� �eac� �
on� �wit� �� singl� space� I� multipl� breakpoint� ar� �specifie� �an� �Z8� �
detect� �a� �erroneou� �argumen� �(� no�-existen� �symbo� �fo� �example� �� �
questio� �mar� �wil� �b� printed� an� th� �comman� �terminates� �Al� �vali� �
breakpoint� specifie� u� t� th� invali� on� wil� b� set� 

Z8� �display� � questio� mar� whe� � attemp� i� mad� t� se� �� �seventeent� �
breakpoint.
.pa�.tc     C    Clear Breakpoint .................................. #
à�� Clea� Breakpoint�
________________________________________________________________�


Th� � comman� clear� individua� breakpoint� previousl� se� b� � � �command� �
Th� forma� o� th� comman� is:


��������� *à ARG� [ARG2...ARGn� <cr�

�������������� wher� eac� ar� ma� b� an� vali� argumen� typ� �
�������������� whic� evaluate� t� a� addres� previousl� se� �
�������������� a� � breakpoin�


Multipl� �breakpoint� �ma� b� cleare� b� th� sam� � comman� �b� �separatin� �
eac� argumen� wit� � singl� space.

Z8� �display� �� �questio� mar� whe� a� attemp� i� mad� �t� �clea� �� �no�-�
existen� breakpoint.

T� clea� AL� breakpoint� enter� *� � wher� th� asteris� indicate� ALL.
.pa�.tc     D    Dump .............................................. #
Ġ�� Dump�
________________________________________________________________�


Th� � comman� allow� th� use� t� dum� memor� i� bot� hexadecima� an� �ASCI� �
t� th� consol� i� use� specifie� bloc� sizes� Th� forma� o� th� comman� is:

��������� *Ġ [ARG1ݠ [ARG2ݠ <cr�

�������������� wher堠� ARG� �� th� startin� addres� t� dum��
����������������������� �
����������������������� ARG2 =� dictate� th� dum� forma�  dependin� o� �
��������������������������������it� value� I� ARG�  i� i� th� rang� �� �
��������������������������������� �25� the� i�  i� treate� a� � �bloc� �
��������������������������������siz� �an� � represent� th� �numbe� �o� �
��������������������������������byte� �t�  b� displaye� (� i� �treate� �
��������������������������������a�  256)� I� ARG� i� greate� tha� �25�  �
��������������������������������the� �ARG� �i� treate� �a� �a� �endin�  �
��������������������������������addres� �an� �memor� �wil� �b� �dumpe�  �
��������������������������������no�-interactivel� t� th� console.

�������������� ARG� an� ARG� ma� b� o� an� argumen� type�

I� ARG� i� omitte� the� th� dum� resume� fro� th� las� memor� address+� �a� �
displaye� �vi� th� previou� invocatio� o� th� � command� I� n� �previou� �� �
comman� ha� bee� give� the� memor� i� dumpe� startin� a� addres� 100H.

I� �ARG� �i� omitte� the� th� mos� recen� valu� o� ARG� (fro� �th� �las� �� �
command� �i� �used� �Th� dum� comman� display� th� content� �o� �memor� �i� �
hexadecima� �o� th� lef� sid� o� th� consol� whil� th� ASCI� equivalen� �o� �
eac� byt� i� show� o� th� righ� side� 

Durin� �� bloc� b� bloc� dum� (ARG� � 25� signifie� � bloc� b� bloc� �dump� �
Z8� �wait� fo� use� inpu� afte� eac� bloc� i� displayed� � carriag� �retur� �
entere� �b� �th� �use� �cause� th� comman� t� �terminat� �whil� �an� �othe� �
characte� cause� th� nex� sequentia� bloc� t� b� dumped.

Fo� no�-interactiv� dumps� startin� addres� t� endin� address� pressin� an� �
ke� terminate� th� dump.

Th� dum� comman� provide� a� especiall� eas� wa� o� examinin� tabula� data� �
fo� �exampl� i� scannin� th� dis� paramete� header� i� you� BIOS� Tha� �is� �
b� specifyin� th� bas� addres� a� ARG� an� th� tabl� siz� a� ARG� th� �use� �
ca� wal� throug� memory� tabl� b� table.
.pa�.tc     E    Examine Memory .................................... #
Š�� Examin� Memory�
________________________________________________________________�


Th� � comman� allow� th� use� t� examin� an� optionall� modif� th� content� �
o� memory� Th� forma� o� th� comman� is:

���� *Š� ARG�� <cr�

�������������� wher� ARG� i� th� addres� o� th� firs� byt� t� �
�������������� examin�

�������������� ARG� ma� b� an� symbo� typ� 

Upo� �receip� �o� ARG� Z8� wil� rea� th� content� o� th� �specifie� �memor� �
addres� an� displa� th� byt� i� bot� he� an� ASCII� A� thi� poin� th� �use� �
ha� �tw� �options� Th� use� ma� specif� replacemen� dat� t� b� �writte� �t� �
memor� �startin� �a� th� curren� address� o� h� ma� choos� t� �continu� �t� �
passivel� �examin� �memory� Th� choic� i� determine� �b� �th� �character(s� �
whic� ar� inpu� afte� th� content� o� a� addres� ar� displayed� 

I� th� use� wishe� t� modif� memor� startin� a� th� curren� memor� address� �
the� �a� ARGUMEN�-STRIN� ma� b� entere� followin� th� displaye� �byte� �Z8� �
wil� �evaluat� th� entir� strin� an� writ� th� evaluate� equivalen� o� �th� �
strin� �int� consecutiv� memor� location� startin� wit� th� curren� �memor� �
address� Fo� exampl� th� use� coul� ente� th� followin� ARGUMEN�-STRING� 

���� *� 45F��
���� 45F�� 4��   'Thi� i� � string',0D,0A,13,4F,9,'Mor� Text',0��
����������������� ޠ������������������������������������������� ޠ 

����������������� Th� use� inpu� apprear� betwee� th� arrow� an� �
����������������� woul� b� evaluate� t� th� followin� 3� bytes� �
������������������� �
����������������� 5� 6� 6� 7� 2� 4� 7� 2� 6� 2� 7� 7� 7� 6� 6� 6� �
����������������� 0� 0� 1� 4� 0� 4� 6� 6� 6� 2� 7� 6� 7� 7� 0�� 

����������������� Thes� 3�� byte� woul� b� store� int� memor� �
����������������� location� 45F�� t� 461� an� th� nex�� addres� �
����������������� displaye� o� th� scree� woul� b� 4618�

���� 461�� 2�� �

Remembe� �tha� �ARGUMEN�-STRING� �ma� b� terminate� b� �eithe� �� �carriag� �
retur� �o� b� th� firs� spac� characte� whic� doe� no� appea� i� �� �quote� �
litera� string� Th� choic� o� terminato� determine� th� whic� addres� �wil� �
b� displaye� next� I� � carriag� retur� i� use� t� terminat� th� �ARGUMEN�-�
STRING� �the� �Z8� �wil� displa� th� nex� sequentia� �memor� �address� �Fo� �
example:

��������� *� 100��
��������� 100�� 4�� Š 12,8F,0� <cr��
��������� 100�� 2�� (
�
Th� �use� �entere� �a� ARGUMEN�-STRIN� 12,8F,0� whic� wa� �evaluate� �t� �� �
bytes� �Sinc� th� ARGUMEN�-STRIN� wa� terminate� b� � carriag� �retur� �th� �
nex� addres� displaye� wa� 1002+� o� 1005� 

B� �terminatin� �th� ARGUMEN�-STRIN� wit� � spac� th� use� ca� �verif� �th� �
content� �o� memor� jus� modified�  ARGUMEN�-STRING� terminate� b��� �spac� �
caus� �Z8� �t� �redispla� th� startin� address� thi� make� �th� �dat� �jus� ��entere� availalb� fo� reinspection:

��������� *� 100��
��������� 100�� 4�� Š 12,8F,0�� <space��
��������� 100�� 1�� �

I� th� use� doe� no� wan� t� writ� an� dat� t� th� curren� memor� �address� �
the� �th� characte� entere� shoul� b� � spac� character� u� �arro� �(caret� �
character� o� � carriag� return.

����������������� CHARACTEҠ������������������� ACTIO΍
�������������� �
������������������� spac堠��������rea� nex� sequentia� memor� addres� �
������������������� �
����������������� u� arro����������rea� previou� memor� addres� �
�������������������������������������������� �
������������������� <cr>�����������rea� nex� sequentia� memor� addres� �
�����������������������������������comman� 

������������������ period����������terminat� command

Th� �use� ma� als� chang� th� curren� memor� addres� b� enterin� �a� �equa� �
sig� �"=� followe� b� � vali� argument� Th� addres� obtaine� b� �evaluatin� �
thi� argumen� become� th� ne� curren� memor� addres� a� show� below� 

���� *� 134�
���� 134�� 8�� �� <cr�
���� 134�� 6Ơ � <cr�
���� 134�� 5�� Ҡ =9F3� <cr�
���� 9F3�� 6�� �
.pa�.tc     �    Find .............................................� #
Ơ�� Find�
________________________________________________________________�


Th� fin� comman� allow� th� use� t� searc� memor� fo� mult�-byt� string� i� �
memory� Th� forma� o� th� comman� is:

���� *Ơ� ARG�� ARG� <cr�

��������� where� ARG1� =� th� startin� addres� a� whic� t� begi� � th� �
��������������������������search� i� ma� b� o� an� typ�.
���������������  ARG2 = ��i� ��a� �ARGUMEN�-STRIN� �representin� ��th�  �
��������������������������patter� t� searc� for� th� use� ma�  specif� �
��������������������������an� �combinatio� o� argument�  separate� �b� �
��������������������������comma� �o� space� u� t� th�  limi� o� �Z8E'� �
��������������������������comman� lin� buffe�  whic� i� 8� byte� long� �
��������������������������Th� �actua� � numbe� o� byte� �searche� �fo� �
��������������������������depend� �o� � ho� th� strin� �i� �ultimatel� �
��������������������������evaluated.

����������������������������� �
Z8� �wil� �displa� �ever� addres� whic� contain� dat� �matchin� �ARG2� �Th� �
searc� continue� unti� th� en� o� memor� i� reached.

Th� �use� ma� elec� t� cance� th� searc� a� an� tim� b� depressin� an� �ke� �
o� th� keyboard.

I� ARG� i� � singl� argumen� (a� oppose� t� a� argumen� string� an� i� thi� �
argumen� i� � symbo� nam� the� Z8� wil� revers� th� orde� o� th� tw� �byte� �
comprisin� �th� �1� �bi� operand� Mos� 1� bi� value� i� �Z8� �program� �ar� �
store� �wit� �th� leas� significan� byt� a� � give� addres� �an� �th� �mos� �
significan� �byt� a� th� give� address+� (towar� th� hig� en� �o� �memory)� �
Thi� �i� �i� �accordanc� �wit� �th� Z8� �conventio� �o� �storin� �th� �mos� �
significan� byt� o� � 1� bi� argumen� towar� th� hig� en� o� memory.

Th� followin� ar� example� o� th� FIN� command�

���� *� � SYMBO�

���� Assumin� �tha� �th� symbo� "SYMBOL� i� associate� wit� � th� �he� �
�����valu� 3B� the� Z8� woul� attemp� t� fin� al�  addres� �containin� �
�����th� byt� pai� B� an� 0� i� tha�  order� wit� th� searc� beginnin� �
�����a� �addres� �0000� �Not� � tha� th� orde� o� �th� �tw� �byte� �i� �
�����reverse� becaus� th�  symbo� "SYMBOL� exist� i� th� symbo� table� �
�����T� �searc� � fo� th� byt� pai� 0� an� B� i� tha� orde� �th� �use�  �
�����shoul� ente� th� argumen� a� eithe� � 1� bi� he� numbe�  (3BF� o� �
�����a� tw� � bi� he� number� (03,BF)� 


���� *� 10� 87,32#,'ABCD',0C3,symbol,'p',271�

���� Assumin� �tha� �th� symbo� "symbol� i� associate� �wit� �th� �he� �
�����valu� 3B� the� Z8� woul� attemp� t� fin� al�  startin� �addresse� �
�����o� th� followin� 1� byt� string:

������������ 8� 2� 4� 4� 4� 4� C� 0� B� 7� 2� 1�

���� Notic� �tha� Z8� woul� searc� fo� th� tw� byt� patter�  0� B� �a� �
�����th� �valu� �fo� "symbol"� I� th� use� happene�  t� b� �tryin� �t� �
�����fin� th� instructio� J� symbo�  th� searc� woul� fai� becaus� �a� �
�����mentione� �abov� 1� bi�  value� ar� store� lo� orde� byt� �first� �������Th� use�  shoul� hav� entere� C� B� 03.

���� Th� �tw� �byte� whic� represen� th� addres� o� �symbo� �ar� � no� �
�����reverse� a� i� th� exampl� abov� becaus� ARG� i�  specifie� a� a� �
�����ARGUMEN�-STRIN� a� oppose� t� � singl�  argument.

���� Z8� woul� begi� it� searc� a� addres� 10� (ARG1)� 
.pa�.tc     G    Go ................................................ #
Ǡ�� Go�
________________________________________________________________�


Th� �� �comman� �instruct� Z8� t� begi� o� resum� �executio� �o� �th� �use� �
program� Th� forma� o� th� comman� is:

��������� *Ǡ� [ARG�]� <cr�

�������������� wher堠��� ARG��� ��� th� addres� o� th� firs� �
������������������������������������ instructio� th� use� wishe�
������������������������������������ t� execute�

�������������� ARG�� ma� b� an� argumen� type��  I� omitte� the� �
���������������the current program counter value is assumed.


Upo� �receip� o� thi� comman� Z8� initialize� al� breakpoint� i� �th� �use� �
program� �restore� �al� use� registers� an� transfer� contro� t� �th� �use� �
progra� �unde� tes� a� th� addres� specifie� i� ARG1� Executio� withi� �th� �
use� progra� wil� continu� unti� th� use� progra� reache� � breakpoint� �a� �
whic� �poin� contro� wil� retur� t� Z8E� Thi� i� th� onl� wa� th� �use� �i� �
abl� t� retur� contro� t� Z8� onc� th� G� comman� i� issued.

Z8� breakpoin� techniqu� ha� bee� designe� suc� tha� Z8� wil� no� �directl� �
initializ� � breakpoin� a� th� addres� specifie� i� ARG1� I� actualiit� �i� �
woul� �b� �impossibl� �t� d� s� sinc� a� attemp� woul� b� �mad� �t� �resum� �
executio� �a� �thi� �address� �� breakpoin� woul� hav� �bee� �se� �a� �thi� �
address� �an� contro� woul� immediatel� retur� t� th� monito� withou� �thi� �
instructio� �eve� havin� bee� executed�  Thi� limitatio� ha� bee� �overcom� �
i� Z8� b� actuall� copyin� th� singl� instructio� locate� a� ARG� t� �Z8E'� �
memory� �THE� �settin� �th� breakpoin� a� th� �ARG� �address� �an� �finall� �
executin� �th� �"moved� versio� o� th� instructio� i� Z8E'� �memor� �rathe� �
tha� �i� th� use� program� Z8� compensate� fo� th� tha� CAL� �an� �RELATIV� �
JUM� �instruction� ar� affecte� b� th� addres� a� whic� the� ar� �executed� �
Thi� entir� proces� i� totall� transparen� an� i� allow� th� use� t� �debu� �
loop� �b� �settin� �onl� � singl� breakpoin� withi� th� rang� �o� �� �loop� �
obviate� th� nee� t� clea� an� breakpoint� whic� ar� locate� a� th� addres� �
wher� �executio� �i� �t� resume� an� eve� allow� breakpoint� a� �� �DJN� �� �
instructions!


HINT��
�����Whe� proceedin� fro� � breakpoin� i� i� simples� t� us� th� �
�����parameterles� for� o� th� G� command�� *� <cr� whic� tell� �
�����Z8Š t� resum� executio� a� th� addres� specifie� b�� th� �
�����user'� curren� progra� counter� 
.pa�.tc     H    Display Symbol Table .............................. #
Ƞ�� Displa� Symbo� Table�
________________________________________________________________�


Th� � comman� allow� th� use� t� vie� th� symbo� tabl� o� th� console� �Th� �
forma� o� th� comman� is:

��������� *Ƞ� [ARG1ݠ <cr�

�������������� wher� ARG� mus� b� � symbo� nam�


I� �ARG� i� omitte� Z8� wil� displa� th� entir� symbo� tabl� startin� �wit� �
th� �firs� �symbo� �i� th� table� I� ARG� i� presen� �Z8� �wil� �begi� �th� �
displa� wit� tha� symbol� Z8� display� � bloc� o� 3� symbol� the� wait� fo� �
use� �input� �I� �th� �use� �enter� � �carriag� �retur� �the� �th� �comman� �
terminates� �I� �th� use� enter� an� othe� characte� th� nex� bloc� �o� �3� �
symbol� i� displayed.

I� �� symbo� nam� entere� a� ARG� canno� b� foun� i� th� symbo� �tabl� �Z8� �
print� � questio� mark.
.pa�.tc     I    Initialise FCB and command tail ................... #
ɠ�� Initialis� FC� an� comman� tail�
________________________________________________________________�


Th� � comman� initialize� th� comman� tai� a� 80� an� th� fil� nam� �field� �
i� th� defaul� FC� (5C� an� 6Ch).

��������� *ɠ [ARG1� [ARG2� ..� [ARGn� <cr�

�������������� wher� eac� ar� ma� b� an� string�

Th� comman� tai� i� th� defaul� DM� buffe� a� 80� wil� b� fille� i� wit� �� �
standar� �forma� �comman� buffe� comprisin� � lengt� byt� followe� �b� �th� �
strin� forme� b� translatin� al� th� ARG� t� uppe� case� � zer� i� appende� �
afte� th� las� ARG.

Th� �firs� tw� ARG� ar� treate� a� (possibl� ambiguous� fil� name� an� �ar� �
copie� �wit� appropriat� paddin� int� th� fil� nam� field� i� �th� �defaul� �
FC� area.

I� n� ARG� i� presen� the� th� fil� nam� fiel� a� 6C� wil� b� �blan�-fille� �
fro� 6D� t� 77h� I� n� ARG� i� presen� the� th� fil� nam� fiel� a� 5C� wil� �
b� blan�-fille� fro� 5D� t� 67h.

Sinc� �th� "I� comman� wit� n� argument� i� � vali� command� i� �canno� �b� �
aborted.

Not� �tha� �Z8� doe� no� automaticall� inser� � spac� a� th� �hea� �o� �th� �
comman� �tail� I� yo� ar� debuggin� routine� t� pars� th� comman� lin� �yo� �
shoul� �inser� � ta� o� spac� yoursel� t� mak� th� comman� tai� �realistic� �
Fo� example� th� Z8� command:

���������������� 頠 square.pe�

generate� th� comman� tail�

������ 0� 5� 5� 5� 4� 5� 4� 2� 5� 4� 4� 0��
������ 1�� Ӡ Ѡ ՠ �� Ҡ Š �� Р Š � 0�

wherea� th� comman� tai� t� progra� 'fit� generate� a� th� CP/� leve� by:

���������������� fi� square.pe�

woul� be�

������ 0� 2� 5� 5� 5� 4� 5� 4� 2� 5� 4� 4� 0��
������ 1����� Ӡ Ѡ ՠ �� Ҡ Š �� Р Š � 0�

an� �yo� ca� emulat� thi� for� b� puttin� th� spac� i� yoursel� befor� �th� �
wor� 'square'.
.pa�.tc     J    Animated Full Screen Debugger ..................... #
ʠ�� Animate� Ful� Scree� Debugge�
_______________________________________________________________�

Th� � comman� provide� th� use� wit� th� abilit� t� "see� insid� th� Z8� a� �
i� �execute� � program� Th� Z8� animate� debugge� allow� th� use� �t� �vie� �
registers� �memory� �an� �instruction� �whil� �th� �Z8� �i� �simultaneousl� �
executin� code� I� addtio� th� � comman� provide� th� use� wit� th� abilit� �
t� �interactivel� �singl�-ste� �throug� � progra� �usin� �th� �ful� �scree� �
facilitie� o� th� command� Th� forma� o� th� � comman� is:

�����*ʠ� [/� [*� [ARG1� [ARG2�
or   *J   #

����������US� �O� TH� � COMMAN� FO� SINGL� STEPPIN� I� � DESCRIBE� �A� �
����������TH� �EN� O� THI� SECTION� THI�  SECTIO� DESCRIBE� �TH� �NO�-�
����������INTERACTIV� VERSIO� O�  TH� � COMMAN� DURIN� WHIC� TH� �USE� �
����������TURN� OVE�  COMPLET� CONTRO� O� TH� EXECUTIO� O� TH� PROGRA�  �
����������UNDE� TES� T� Z8E� 

����������ARG� �i� th� startin� addres� o� th� displa� an�  ma� b� �o� �
����������an� vali� argumen� type� Fo� example�  th� use� ma� �specif� �
����������*� �� �t� �resum� �executio�  a� �th� �poin� �wher� �i� �ha� �
����������previoul� bee� stopped� 

����������Th� slas� an� sta� contro� subroutin� tracin� a�  follows:

�������������� "/�� Slas� inform� Z8� no� t� trac� an�� subrou��
������������������� tine� a� all��
�������� �
�������������� "*�� Asteris� inform� Z8� no� t� trac� an� subrou��
������������������� tin� call� t� addresse� locate� i� th� rang� �
������������������� � t� FF�� Thi� featur� i� intende� t� scree� �
������������������� ou�� call� t� locatio� � (BDOS� i� orde� t� �
������������������� preven�� Z8E'� an� th� user'� stac� fro� �
������������������� becomin� hopelessl� entangled��
�������������� �
����������ARG� represent� a� optiona� timeou� paramte� whic� � affect� �
����������th� �spee� a� whic� instruction� ar� executed� �Thi� �numbe� �
����������ma� �b� �i� �th� rang� � � 255�  wit� 1� �(decimal� �a� �th� �
����������defaul� �i� �n� �valu� i�  entered� � timeou� �valu� �o� �1� �
����������yield� �approximatel� �� on� hal� secon� dela� �betwee� �th� �
����������executio� �� o� �sequentia� �instructions� �� �valu� �o� ��� �
����������represent� �N� �tim� dela� an� i� i� actualit� �th� �fastes� �
����������rat� � whic� th� � comman� ca� run.

Onc� th� � comman� commences� Z8� take� ove� th� Z8� an� furnishe� th� use� �
wit� �� "peephole� int� th� CPU� Z8� execute� on� instructio� a� � tim� �i� �
th� �use� progra� pausin� afte� eac� on� t� dynamicall� updat� �th� �scree� �
display� �Th� � comman� divide� th� scree� int� thre� areas� registe� �map� �
disassemble� �code� �an� �memor� window�  Th� �registe� �ma� �display� �al� �
register� o� th� to� tw� line� o� th� scree� alon� wit� th� content� o� th� �
� �registe� �whic� �i� show� i� mnemoni� form�  Z8� �als� �disassemble� �1� �
instruction� base� o� th� curren� P� valu� an� display� the� o� th� screen� �
finally� �usin� �th� parameter� entere� i� th� � command� Z8� �snapshot� �� �
bloc� o� memor� an� display� i� a� � windo� o� th� screen� 

Executio� �o� th� use� progra� continue� unti� an� no�-numeri� ke� �o� �th� �
keyboar� �i� presse� whic� end� th� command� I� � numeri� ke� �i� �pressed� �
the� �Z8� respond� b� changin� th� timeou� paramete� o� th� fly� �Th� �use� �
ma� �us� th� key� � � � a� � throttl� t� gover� th� executio� �speed� �Zer� �
bein� th� fastest� nin� bein� th� slowest.�
Th� comman� als� terminate� wheneve� � use� define� breakpoin� i� �reached� �
Tha� �is� �i� �th� use� ha� se� � breakpoin� vi� th� �� �comman� �an� �thi� �
addres� i� reache� th� � comman� end� an� Z8� prompt� th� use� fo� th� nex� �
command� �I� th� breakpoin� ha� � pas� coun� associate� wit� it� �th� �pas� �
coun� mus� reac� zer� befor� th� � comman� wil� terminate.

USIN� TH� � COMMAN� FO� SINGL� STEPPIN�

Z8� �permit� �th� use� t� singl�-ste� throug� � progra� �whil� �allowin� �� �
continuou� ful�-scree� vie� o� th� registers� cod� bein� executed� an� �th� �
content� �o� � bloc� o� memor� a� specifie� b� th� � command� I� �orde� �t� �
invok� th� ful� scree� singl�-ste� th� use� enter� th� followin� command:

�����*ʠ� [/ݠ [*� 

����������� instruct� Z8� no� t� trac� an� subroutine�  a� all

����������� instruct� Z8� no� t� trac� an� subroutine�  locatio� belo� �
����������addres� 100� an� i�  specificall� designe� t� allo� th� use� �
����������th�  optio� o� no� becomin� tangle� i� BDO� an�  BIOS.

����������Not� �tha� thi� versio� o� th� � comman� i� � differentiate� �
����������fro� �th� �no�-interactiv�  versio� b� th� �absenc� �o� �an� �
����������argumen� indicatin� �n executio� address� 

Thi� versio� allow� th� use� t� execut� on� instructio� i� hi� progra� �an� �
the� �regai� �contro� �a� �th� Z8� comman� �level� �Z8� �wil� �execut� �th� �
instructio� �pointe� t� b� th� user'� curren� PC� Afte� th� instructio� �i� �
execute� a� ARRO� � =� � point� t� th� nex� instructio� t� b� executed.

Th� �� an� � option� ar� onl� vali� i� th� nex� instructio� t� b� �execute� �
i� � CALL� I� th� progra� counte� i� pointin� a� an� othe� instructio� the� �
th� � an� � hav� n� immediat� effect�  Howeve� th� meanin� i� remembere� s� �
tha� whe� � CAL� instructio� i� encountere� th� appropriat� actio� (o� no�-�
action� wil� b� taken.

Afte� �� � comman� ha� bee� issue� pressin� <cr� i� equivalen� �t� �issuin� �
anothe� � command�  Thi� allow� yo� t� manuall� ste� throug� � progra� ver� �
quickly.

REFRESHING THE SCREEN

Z8E'� �orderl� displa� ca� b� disturbe� b� consol� outpu� generate� b� �th� �
progra� bein� debugged�  I� tha� happen� the� us� comman� for� *�  � �   t� �
refres� th� screen�  N� othe� argumen� i� permitted.
.pa�.tc     K    Set Memory Window Parameters ...................... #
ˠ�� Se� Memor� Windo� Parameter� fo� us� Wit� th� � command
_______________________________________________________________�

Th� � comman� set� th� startin� addres� an� bloc� siz� o� th� memor� windo� �
displa� durin� th� � command� Th� forma� o� th� comman� is:

��������� *ˠ ARG� [,ARG2�

��������� ARG�� represent� th� startin� addres� o� th� memor� �
��������� block�

��������� ARG� i� a� optiona� siz� paramter� i� omitte� th� bloc� �
��������� siz� default� t� th� maximum�

Th� maximu� bloc� siz� i� 14� decima� whic� i� 9� hex� Th� startin� addres� �
o� �th� �memor� �bloc� ca� b� anywher� i� memory� i� doe� no� �hav� �t� �b� �
withi� th� confine� o� th� use� program.
.pa�.tc     L    Load file ......................................... #
̠�� Loa� file
________________________________________________________________�


Th� �� comman� allow� th� use� t� loa� file� int� th� TP� afte� �th� �debu� �
sessio� ha� started� Th� forma� o� th� comman� is:

���� *̠� ARG1[,ARG2ݠ <cr�

�������������� ARG� �i� � singl� unambiguou� fil� nam� �conformin� �t� �
���������������standar� �CP/� �synta� rules�

  ������    - �optiona� �driv� nam� followe� b� � colo�   � �mandator� �
���������������primar� fil� name

������������- �optiona� secondar� fil� nam� precede� b� �  perio� 

�������������� ARG� �i� �a� �optiona� loa� address� �I� �ARG� �i� �no�  �
���������������specifie� th� name� fil� i� loade� a� th� star� o�  th� �
���������������TP� (addres� 10� hex)� I� ARG� i� give� th�  fil� �wil� �
���������������b� �loade� �a� �thi� address� Z8� �wil� �NO� � relocat� �
���������������individua� �addresse� withi� th� fil� t� � reflec� �th� �
���������������ne� loa� address� ARG� ma� b� o� an�  type.

�������������� NOTE�� I� n� argument� ar� entere� the� Z8Š wil� �
��������������������� redispla� th� startin� address�� endin� ad��
��������������������� dress�� an� th� numbe� o� 25� byt� page� o� �
��������������������� th� las� fil� loaded�� 


I� �Z8� detect� � erro� i� th� fil� nam� specificatio� th� messag� �"Synta� �
error� i� printe� o� th� consol� an� th� comman� terminates.

I� �Z8� �i� unabl� t� locat� th� fil� o� th� specifie� �driv� �th� �messag� �
"Fil� no� found� i� printe� o� th� consol� an� th� comman� terminates.

Z8� �contain� �n� faciltie� fo� convertin� .HE� (Inte� He� �format� �objec� �
file� �t� loadabl� memor� image� Al� files� regardles� o� type� ar� �loade� �
int� �memor� �i� exactl� th� sam� for� a� the� appea� o� disk� T� �debu� �� �
.HE� �fil� th� use� shoul� firs� loa� th� fil� wit� th� CP/� �LOA� �comman� �
an� �sav� �th� fil� wit� th� CP/� SAV� comman� whic� produce� �a� �absolut� �
memor� �imag� �loa�-abl� b� Z8E� Al� .CO� file� ar� o� �cours� �alread� �i� �
loadabl� for� an� n� LOADin� an� SAVEin� i� required.

I� th� fil� wil� no� fi� int� th� TPA� Z8� wil� prin� th� message:

���� Ou� o� memor� � Continue��

I� �th� use� answer� "Y"� Z8� wil� resum� loadin� th� fil� a� �addres� �10� �
he� �i� ARG� wa� no� entered� o� a� th� addres� specifie� a� ARG2� �I� �th� �
use� �type� �an� �othe� response� th� loadin� proces� �terminate� �an� �Z8� �
return� t� th� comman� level� However� th� use� ma� resum� loadin� th� fil� �
a� �� late� tim� b� issuin� th� � comman� an� specifyin� th� fil� nam� �".� �
(� �singl� �period)� �Th� use� ma� choos� t� specif� � �ne� �startin� �loa� �
addres� �followin� �th� period� i� ARG� i� omitte� the� �th� �loa� �addres� �
default� �bac� t� 10� hex� th� star� o� th� TPA� I� th� use� ha� �don� �an� �
subsequen� �dis� I/� (suc� a� loadin� � ne� fil� o� disassemblin� t� �disk� �
i� �betwee� �th� tim� loadin� wa� suspende� an� the� �restarted� �Z8� �wil� �
trea� th� fil� nam� ".� a� � synta� error� 

Th� �use� ma� occasionall� nee� t� overla� � sectio� o� cod� i� �� �progra� �
whic� alread� reside� i� memor� wit� inpu� fro� � fil� o� disk� fo� exampl� ��i� modifyin� � BIO� i� preparatio� fo� MOVCPM� Whil� thi� i� possibl� �wit� �
loader� �whic� proces� .HE� objec� files� i� i� no� feasibl� wit� Z8E� �Th� �
use� �ca� circumven� thi� limitatio� b� loadin� th� fil� fro� dis� int� �a� �
unuse� sectio� o� memor� an� the� usin� Z8E'� mov� comman� t� mov� onl� th� �
dat� neede� t� accomplis� th� overlay.
.pa�.tc     M    Move Memory ....................................... #
͠�� Mov� Memory
________________________________________________________________�


Th� �� comman� allow� th� use� t� mov� block� o� dat� fro� an� �addres� �i� �
memor� t� an� othe� addres� i� memory� Th� forma� o� th� comman� is:

��������� *͠� ARG�� ARG�� ARG�� 

�������������� wher堠 ARG�� �� th堠 startin� addres� o栠 th� �
������������������������������� sourc� dat� bloc렠����� �
���������������������� �
���������������������� ARG�� �� th� endin� addres� o� th� sourc� �
������������������������������� dat� bloc�

���������������������� ARG�� �� th堠 startin� addres� o栠 th� �
������������������������������� destinatio� dat� bloc렠 


������������������������������� argument� ma� b� o� an� typ�

Z8� �automaticall� decide� whethe� � hea�-t�-hea� o� tai�-t�-tai� �mov� �i� �
require� �base� o� th� thre� argument� entered� I� � hea�-t�-hea� �mov� �i� �
neede� the� th� firs� byt� o� th� sourc� dat� bloc� wil� b� writte� t� �th� �
firs� �byt� positio� o� th� destinatio� dat� block� th� secon� byt� o� �th� �
sourc� �dat� �bloc� �wil� b� writte� t� th� secon� �byt� �positio� �o� �th� �
destinatio� �dat� �block� �an� �s� �o� unti� �th� �endin� �addres� �o� �th� �
destinatio� dat� bloc� i� reached� 

O� �th� othe� hand� i� � tai�-t�-tai� mov� i� necessar� Z8� wil� �mov� �th� �
las� �byt� �o� �th� �sourc� dat� bloc� t� th� las� �byt� �positio� �o� �th� �
destinatio� �dat� block� followe� b� th� secon� t� las� byt� o� th� �sourc� �
dat� �bloc� �t� th� secon� t� las� byt� positio� o� �th� �destinatio� �dat� �
block� �an� �s� o� unti� th� startin� addres� o� th� destinatio� �bloc� �i� �
reached� 

� tai� t� tai� mov� woul� b� necessar� i� th� followin� exampl� t� �preven� �
th� overwritin� o� th� destinatio� dat� block:

��������� *͠ 100� 100� 100�
.pa�.tc     N    Output to I/O Ports without pre-read .............. #
Π�� Outpu� t� I/� Port� rithou� pre-read
________________________________________________________________�

Thi� �comman� allow� th� use� t� outpu� dat� t� a� I/� por� �withou� �firs� �
readin� �th� por� (a� occur� i� th� � command)� Th� forma� o� �th� �comman� �
is:

���  *Π� [ARG1�

����������wher� �ARG� �i� th� por� numbe� t� whic� th�  dat� �wil� �b� �
����������written.

����������I� �ARG� �i� omitte� the� Z8� use� th� � las� �por� �addres� �
����������whic� ha� bee�  inpu� b� � previou� � o� � command� 

Z8� wil� promp� th� use� b� displayin� th� curren� por� numbe� o� th� �lef� �
han� �sid� �o� �th� consol� an� postionin� th� curso� tw� �space� �th� �th� �
right� A� thi� poin� th� use� ca� ente� th� dat� t� b� sen� t� th� por� �i� �
th� for� o� a� ARGUMEN�-STRING� Th� ARGUMEN�-STRIN� allow� th� use� t� �mi� �
variou� �argumen� �type� �suc� a� he� dat� an� ASCI� �litera� �strings� �O� �
cours� �th� use� ca� elec� t� merel� outpu� singl� byte� i� desired� Th� �� �
comman� �i� �particularl� usefu� whe� programmin� �variou� �Z8� �periphera� �
chip� �suc� a� th� DM� an� SI� chip� whic� expec� initializatio� �byte� �t� �
arriv� i� � strea� withou� intervenin� reads.

����������*� 8��
����������8�� 'T',00,12#,99�

����������Thi� �ARGUMEN�-STRIN� woul� b� evaluate� int� th�  � �bytes� �
����������5� �0� 0� 0� 98� Thes� fiv� byte� woul�  b� sen� t� por� �8� �
����������vi� a� OTI� instruction� N�  dela� occur� betwee� successiv� �
����������bytes� 

Afte� th� dat� ha� bee� entere� an� afte� i� ha� bee� sen� t� th� I/� �por� �
Z8� �reprompt� th� use� b� displayin� th� sam� por� number� Thi� give� �th� �
use� �t� oppportunit� t� sen� addtiona� dat� t� th� sam� port� However� �b� �
no� enterin� dat� th� use� ca� chang� th� curren� por� addres� b� �enterin� �
an� o� th� following:

������� CARRIAGŠ�� Th� nex� sequentia� por� numbe� i� ascendin� �
�������� RETURΠ��� orde� become� th� curren� por� address�

������� U� ARROנ�� Th� nex� sequentia� por� numbe� i� descendin� �
������������������� orde� become� th� curren� por� address�

�������� =ARG������ An� argumen� appearin� immediatel� afte� �th�  �
��������������������equa� ��sig� �(n� �intervenin� ��spaces� ��i� �
��������������������evaluate� a� a� � bi� number� an� i� foun� t� �
��������������������b� � vali� �the� i� become� th� �ne� �curren� �
��������������������por�  address� 

������� PERIOĠ���� Terminat� comman�

Th� �use� ca� als� monito� a� I/� por� wit� th� � comman� b� enclosin� �th� �
por� �numbe� �o� th� comman� lin� i� parentheses�  Monito� mod�vi� �th� �� �
comman� i� identica� t� tha� o� th� � comman� (se� � command).

I� Z18� mod� th� � an� � command� suppor� acces� t� th� HD64180'� interna� I/� �
registers.

Whe� �writin� t� � Z180/HD6418� port� Z8� firs� clear� th� � register� �place� ��th� por� numbe� i� th� � register� point� H� t� � buffe� interna� t� Z8� �co��
tainin� th� dat� t� b� writte� an� the� execute� a� OUT� instruction� 

Thi� metho� ensure� tha� A� t� A1� ar� a� � whe� th� � comman� i� accessin� a� �
I/� port� 
.pa�.tc     O    Output Current Breakpoints to Console ............. #
O��� Outpu� Curren� Breakpoint� t� Console
________________________________________________________________�


Th� � comman� allow� th� use� t� vie� al� breakpoint� currentl� i� �effect� �
Th� forma� o� th� comman� is:

��������� *Ϡ 

�������������� n� argument� ar� require�

I� �Z8� find� � symbo� nam� correspondin� t� th� absolut� he� addres� o� �� �
breakpoin� addres� i� th� symbo� tabl� (i� � symbo� tabl� exists� the� �th� �
symbo� �nam� �a� �wel� a� th� memor� addres� i� �displayed� �I� �n� �symbo� �
correspondin� t� th� addres� i� foun� onl� th� he� addres� i� displayed� 

I� �an� pas� count� ar� currentl� i� effec� the� ar� displaye� nex� t� �th� �
breakpoin� addres� wit� whic� the� ar� associated�
.pa�.tc     P    Examine/Modify PSW (Flags Register) ............... #
Р�� Examine/Modif� PS� (Fla� Register)�
________________________________________________________________�


Th� �� �comman� provide� � convenien� metho� o� �examinin� �an� �optionall� �
modifyin� �th� F(lag� registe� i� th� use� registe� set� Th� forma� o� �th� �
comman� is:

���� *�

��������� n� argument� ar� require� o� th� comman� lin�

Upo� �receip� o� th� � comman� Z8� display� th� mnemonic� correspondin� �t� �
th� �curren� �stat� o� th� fou� use�-modifiabl� bit� �(sign� �carry� �zero� �
parity� i� Fla� register:


���� MNEMONIà���������� MEANINǠ����������� BI� STATU�

������� Р�������������� positiv堠������������ rese�
������� ͠��������������� minu󠠠�������������� se�

������� Nà������������� n� carr��������������� rese�
������� à��������������� carr������������������ se�

������� PϠ������������ parit� od䠠����������� rese�
������� PŠ������������ parit� eve����������� se�

������� Nڠ������������� no� zer������������ rese�
������� ڠ���������������� zer��������������� se� 


Z8� �print� th� mnemoni� correspondin� t� th� curren� stat� o� eac� o� �th� �
fou� fla� bits� Z8� the� issue� � carriag� return/lin� fee� an� pause� �fo� �
use� �input� �Th� use� ma� modif� an� o� th� fou� fla� bit� b� �typin� �th� �
appropriat� �mnemoni� �followe� b� � carriag� return� Th� �use� �ma� �ente� �
multipl� mnemonic� b� separatin� eac� on� wit� � space� 

I� �n� �mnemonic� ar� entered� n� flag� bit� ar� altere� �an� �th� �comman� �
terminates.

I� a� invali� fla� bi� mnemoni� i� entere� Z8� print� � questio� mark�
.pa�.tc     Q    Query I/O Ports ................................... #
Ѡ�� Quer� I/� Ports�
________________________________________________________________�

Th� � comman� allow� th� use� flexibl� acces� t� I/� port� b� providin� th� �
abilit� t� perfor� singl� byt� input� continuou� inpu� (monito� mode)� �an� �
singl� o� mult�-byt� outpu� followin� � pr�-rea� o� th� port� Th� forma� o� �
th� comman� is�

     *� [(� [ARG1� [)]

����������wher� ARG� i� a� � bi� por� addres� i� th� rang� � � 255

����������ARG� �ma� �b� �an�  symbo� type�  howeve� i� � 1� �bi�  valu� �i� �
����������specifie� onl� th� lo� orde� byt� i�  significan� 

����������I� n� argumen� i� give� Z8� wil� us� th� mos�  recen� por� numbe� �
����������a� entere� b� th� use� vi� a� �  o� � command.

����������I� ARG� i� enclose� i� parenthese� Z8� wil� ente�  MONITO� MODE.

Upo� �receip� o� ARG� Z8� wil� rea� th� specifie� I/� por� an� displa� �th� �
byt� �rea� �a� �bot� � bi� hexadecima� valu� �an� �it'� �ASCI� �equivalent� �
Comman� option� onc� � byt� ha� bee� rea� fro� th� I/� por� ar� a� follows:

���� SINGL� BYT� INPU�

�������   B� �enterin� �� SPAC� immediatel� followin� �th� � displaye� �
����������content� �o� �th� �I/� por� th� use� ca� � instruc� �Z8� �t� �
����������continu� readin� fro� th� sam�  I/� port:

.cp 3
���������������������� *� Eō
���������������������� EŠ� 2�� �� <space��
���������������������� EŠ� 2�� ��

.cp 3�� �
������� ��B� �enterin� �� �CARRIAG� �RETUR� �followin� �th� �displaye� �
����������content� o� th� I/� por� th� use� ca�  instruc� Z8� t� �rea� �
����������th� nex� por� numbe�  (ascendin� order):

.cp 3
���������������������� *� Eō
���������������������� EŠ� 2�� �� <cr��
���������������������� EƠ� C�� �

.cp 3
������� ��B� enterin� � care� "^� followin� th� displaye�  content� o� �
����������th� I/� por� th� use� ca� instruc�  Z8� t� rea� th� previou� �
����������por� numbe� (descendin�  order):

.cp 3
���������������������� *� E�
���������������������� EŠ� 2�� �� ޠ (u� arro� entere� b� user�
���������������������� EĠ� 0�� ����������������������� 

.cp 2
������� ��B� enterin� a� equa� sig� "=� followe� b� � vali�  argument� �
����������th� use� ca� switc� t� readin� � ne�  por� address:

.cp 3
���������������������� *� E�
���������������������� EŠ� 2�� '$�� =9� 
���������������������� 9��� BƠ '?������������� 


���� CONTINUOU� INPU� (MONITO� MODE�

������� ��Z8� provide� th� use� wit� th� abilit� t� monito�  a� �inpu� ������������port� Z8� wil� continousl� rea� th�  selecte� inpu� por� an� �
����������displa� �th� content� o�  th� screen� Z8� display� th� �byt� �
����������i� �bot� �he� � an� binary� Thi� featur� i� �usefu� �i� �th�  �
����������testin� �o� I/� ports� Depressin� an� ke� o� �th� � keyboar� �
����������exit� monito� mode� 

���� MULTI-BYT� OUTPU� 

������� ��Followin� �th� �rea� o� a� I/� por� th� use� ma� � elec� �t� �
����������outpu� �data� Th� use� ma� ente� a� � ARGUMEN�-STRIN� �whic� �
����������wil� �b� sen� t� th� por� o�  � byt� b� byt� basi� �wit� �n� �
����������intervenin� read�  betwee� output� a� show� below:

��������������� *� 5�
��������������� 5�� 4�� 'D� 23,9,'B2E',00,F723,8�
��������������������������� ޠ����������������� �
��������������������������� strin� a� entere� b� 
��������������������������� use� appear� betwee� 
��������������������������� arrow�

������� ��Th� dat� a� entere� b� th� use� i� thi� exampl�  woul� firs� �
����������b� converte� t� th� � byte� show�  below�

����������     2� 0� 4� 3� 4� 0� F� 2� 81

������� ��Thes� � byte� woul� the� b� sen� t� por� 5� on�  byt� �afte� �
����������anothe� withou� an� intervenin� read�  o� statu� checks�

Whe� �i� Z180/HD6418� mod� Z8E'� � an� � command� perfor� jus� a� the� �d� �i� �
Z8� mod� excep� tha� the� suppor� acces� t� th� HD64180'� interna� I/� �regis�
ters.

Whe� �readin� �a� I/� port� Z8� firs� clear� th� � register� place� �th� �por� �
numbe� i� th� � registe� an� the� execute� a� I� A,(C� instruction� 

Whe� writin� t� a� I/� port� Z8� firs� clear� th� � register� place� th� �por� �
numbe� i� th� � register� point� H� t� � buffe� interna� t� 18� co�tainin� th� �
dat� t� b� writte� an� the� execute� a� OUT� instruction� 

Thi� metho� ensure� tha� A� t� A1� ar� hel� a� � whe� th� � o� � command� �ar� �
accessin� a� I/� port� 
.pa�.tc     R    Examine/Modify Register Contents .................. #
Ҡ�� Examine/Modif� Registe� Contents�
________________________________________________________________�


Th� �� comman� allow� th� use� t� examin� an� optionall� �modif� �register� �
an� registe� pair� i� th� use� registe� set� Th� forma� o� th� comman� is:

��������� *Ҡ� ARG�� <cr� o� spac�

�������������� wher� ARG�� i� an� o� th� 2�� registe� mnemonic� �
�������������� liste� below�

�������������������� ����  �� à�� Ġ�� Š�� Ƞ�� ̍
�������������������� AƠ� Bà� DŠ� H̠� Iؠ� I٠� SЍ
�������������������� AF�� BC�� DE�� HL�� ɠ�� Ҡ�� Р�� P�

������������������� (th� progra� counte� ma�� b� specifie� a� �
������������������� eithe� � o� PC�

T� �examin� �� �registe� th� use� enter� � mnemoni� �fro� �th� �abov� �lis� �
followe� �b� �� carriag� retur� o� � space� Z8� wil� �displa� �th� �curren� �
content� �o� th� registe� o� th� sam� line� A� thi� poin� th� use� ha� �th� �
optio� o� enterin� a� argumen� o� an� typ� i� th� content� o� th� �registe� �
o� registe� pai� ar� t� b� changed� Th� replacemen� valu� ma� b� terminate� �
b� eithe� � carriag� retur� o� � space� I� n� valu� i� entere� Z8� issue� � �
carriag� �return/lin� fee� an� wait� fo� th� nex� registe� mnem�ni� t� �b� �
entered.

I� �th� �use� �specifie� � 1� bi� valu� a� th� ne� content� �o� �a� �� �bi� �
registe� onl� th� lo� orde� byt� o� th� valu� i� used.

Th� comman� terminate� whe� � carriag� retur� o� spac� i� entere� whe� �Z8� �
i� waitin� fo� � registe� mnemonic.
.pa�.tc     �    Singl� Step ......................................� #
Ӡ�� Singl� Step�
________________________________________________________________�

����������������������������� �
Th� �� �comman� �allow� �th� �use� t� �execut� �� �progra� �instructio� �b� �
instruction� �Th� � comman� provide� fo� ful� tracin� o� th� use� �program� �
Th� forma� o� th� comman� is:

���� *Ӡ� [/� [ARG1ݠ <cr��
�������������� �
����������wher� �ARG� i� th� numbe� o� instruction� t� execut� i� �th� �
����������use� �program� �i� n� argumen� i� give�  Z8� default� �t� ��  �
����������ARG� ma� b� o� an� type

Th� slas� "/� allow� th� use� contro� ove� th� tracin� o� subroutines� I� � �
slas� i� include� befor� th� coun� (i� � coun� i� entered)� o� i� th� slas� �
i� �th� �onl� characte� o� th� comman� lin� the� subroutine� �wil� �no� �b� �
traced� �� slas� affect� onl� CAL� instruction� whic� li� withi� th� �rang� �
o� �ARG1� I� th� mos� typica� cas� n� ARG� i� presen� an� th� �singl� �ste� �
coun� �default� t� 1� I� th� curren� PC� 100� i� thi� example� i� �pointin� �
t� � cal� instructio� the� th� command:

������������������� *� �

��������� 100�� C� 5� 3�� RASRTN� CAL̠ ANYSU�
��������� 100�� F� 0������������� CР�� �
��������� 100�� C� 1� 1���������� JР�� Z,AHEA�


wil� �caus� �th� entir� subroutin� ANYSU� t� b� execute� an� �contro� �wil� �
retur� t� th� use� a� addres� 1003� 

I� �ARG� i� omitte� Z8� wil� transfe� contro� t� th� use� progra� �an� �on� �
instruction� �th� �on� �pointe� t� b� th� curren� content� �o� �th� �user'� �
progra� �counter� �wil� �b� �executed� �Followin� �th� �executio� �o� ��th� �
instructio� �(o� �grou� �o� instruction� i� ARG� wa� greate� �tha� �1� �Z8� �
regain� contro� an� automaticall� display� th� curren� content� o� al� �th� �
use� registers.

Th� �use� ma� optionall� indicat� tha� mor� tha� on� instructio� i� �t� �b� �
execute� �b� �enterin� � valu� greate� tha� � fo� ARG1� Z8� �wil� �transfe� �
contro� �t� �th� use� progra� an� regai� contro� onl� �whe� �th� �specifie� �
numbe� �o� �instruction� �hav� bee� executed� Thi� �featur� �i� �usefu� �i� �
debuggin� smal� loops� i� tha� th� use� ca� se� ARG� equa� t� th� numbe� o� �
instruction� �i� �th� �rang� o� th� loop� Z8� �wil� �displa� �th� �registe� �
content� afte� eac� instructio� o� th� loo� i� execute� an� retur� �contro� �
t� th� use� afte� ever� iteratio� o� th� loop.

Th� �singl� �ste� comman� alway� cause� th� executio� �o� �th� �instructio� �
pointe� �t� b� th� curren� content� o� th� user'� progra� counter� Thi� �i� �
th� instructio� tha� appear� i� di�assemble� for� a� par� o� th� outpu� �o� �
th� "X� comman� (displa� machin� state)� Bea� i� min� tha� ARG� i� no� �th� �
addres� �a� whic� singl� steppin� i� t� begin� i� i� � coun� t� th� �numbe� �
o� �instruction� �t� �execute� I� th� use� desire� t� �singl� �ste� �a� �a� �
addres� �othe� tha� th� on� containe� i� th� progra� counter� the� �th� �P� �
registe� mus� b� modifie� vi� th� � comman� befor� th� singl� ste� �comman� �
i� issue� t� Z8E.

Allowin� �th� convenienc� o� enterin� "S� <cr� t� execut� �on� �instructio� �
ha� �th� �sid� �effec� o� no� allowin� th� use� t� �abor� �th� �comman� �i� �
betwee� �th� �tim� �th� �"S� i� type� an� th� <cr� �i� �entere� �b� �simpl� ��omittin� �a� argumen� an� typin� <cr>� I� yo� chang� you� min� yo� ca� �us� �
^� �t� cance� th� comman� o� yo� ca� typ� i� a� invali� argumen� �a� �ARG1� �
Thi� �wil� caus� � questio� mar� t� b� displayed� however� �n� �instructio� �
wil� b� executed� 

Durin� bloc� tracin� (ARG� greate� tha� 1� th� comman� ma� b� terminate� b� �
hittin� an� ke� o� th� keyboard.

Afte� �a� �� �comman� �ha� �bee� issue� pressin� �th� �<cr� �ke� �alon� �i� �
equivalen� t� issuin� � <cr>.

Th� � comman� doe� no� relocat� instruction� befor� executio� a� doe� th� � �
comman� �(se� � command)� Hence� i� i� no� possibl� t� singl� ste� �throug� �
eac� iteratio� o� � DJN� � instruction.
.pa�.tc     T    Select Debug Terminal ............................. #
T ���Select Debug Terminal�
__________________________________________________________________

Whe� Z8� i� firs� invoked� th� mai� termina� (i.� th� console� i� �enabled� �
Subsequentl� th� � comman� ma� b� use� t� enabl� a� auxiliar� terminal� 

Th� enable� termina� display� al� Z8� outpu� an� i� use� b� th� operato� t� �
ente� �command� �an� �dat� �t� Z8E� I� thi� �way� �enablin� �th� �auxiliar� �
termina� �allow� �th� use� t� debu� � progra� whic� make� us� o� �th� �mai� �
termina� �a� �part� �o� it� functio� withou� fea� tha� �th� �debugge� �wil� �
"walk� o� hi� nic� clea� applicatio� screen� (O� course� th� use� mus� HAV� �
� secon� termina� t� tak� advantag� o� this.�          

The format for the T command is as follows: 

      *T �ARG1 <cr>

          wher� ARG� i� th� lette� � t� enabl� th� auxiliar� �termina� �
����������o� th� lette� C t� r�-enabl� th� console terminal� 

          An� othe� lette� wil� resul� i� a� erro� an� wil� caus� �tw� �
����������questio� mark� t� b� displaye� (termina� selectio� doe� �no� �
����������change).

����������Not� tha� i� th� auxiliar� termina� i� enabled� an� th� use� �
����������type� � CTR�-� o� th� auxiliar� terminal� � war� boo� �(sur� �
����������cur� fo� col� feet� wil� b� performe� an� th� mai� �termina� �
����������wil� �receiv� th� CP/� promp� (n� nee� t� �transfe� �contro� �
����������bac� t� th� mai� termina� vi� "� M� first)�         

                           * * * �CAUTION �* * *

    ------------------------------------------------------------------
�
Th� �use� mus� hav� alread� configure� 18E'� auxiliar� termina� �parameter� �
an� �mus� �hav� � termina� (se� t� th� prope� bau� rate� connecte� �t� �hi� �
auxiliar� �por� befor� executin� � "� A� command� Failur� t� d� �thi� �wil� �
resul� i� � "locke� up� compute� whic� mus� b� r�-booted.

    ------------------------------------------------------------------
.pa�.tc     U    Write Symbol Table to Disk ........................ #
ՠ�� Writ� Symbo� Tabl� t� Disk
________________________________________________________________�


Th� �� comman� allow� th� use� t� writ� th� curren� symbo� tabl� t� � �dis� �
file� Th� forma� o� th� comman� is:

��������� �
���� *ՠ� ARG�

�������������� ARG�� i� th� nam� o� th� fil� t� whic� th� symbo� �
�������������� tabl� i� t� b� written�

Thi� comman� i� usefu� t� sav� an� symbo� name� entere� b� th� use� vi� th� �
� command� Th� entir� symbo� tabl� i� writte� t� dis� usin� th� forma� o� � �
.SY� �fil� �(se� appendi� A)� Th� tabl� ca� b� subsequentl� loade� �a� �th� �
nex� invokatio� o� Z8E.

Not� tha� sinc� th� fil� i� store� a� � .SY� formatte� fil� th� use� shoul� �
us� �� fil� nam� extensio� tha� begi� wit� th� lette� "S"� Thi� i� �du� �t� �
th� fac� tha� th� nex� tim� Z8� load� thi� symbo� fil� i� wil� examin� �th� �
th� �firs� characte� o� th� fil� nam� extension� I� th� firs� characte� �i� �
a� �"S� �th� �forma� i� assume� t� b� .SY� an� th� symbo� �tabl� �i� �buil� �
accordingly� th� appearanc� o� an� othe� lette� i� take� t� indicat� � .PR� �
file� 

I� � fil� wit� th� nam� ARG� alread� exist� o� dis� i� wil� b� deleted� 
.pa�.tc     V    Verify two memory blocks .......................... #
֠�� Verif� tw� memor� blocks
________________________________________________________________�


Th� �� �comman� allow� th� use� t� compar� tw� block� o� memory� �Z8� �wil� �
displa� al� difference� betwee� th� two� Th� forma� o� th� comman� is:

���� *֠� ARG�� ARG�� ARG�

��������� wher� ARG�� �� th� startin� addres� o� memor� bloc� �

���������������� ARG�� �� th� endin� addres� o� memor� bloc� �

���������������� ARG�� �� th� startin� addres� o� memor� bloc� �

Z8� �compare� memor� bloc� � t� memor� bloc� � byt� b� byte� I� � �mismatc� �
occur� Z8� wil� displa� th� addres� i� eac� bloc� a� whic� th� mismatc� wa� �
found� �a� �wel� �a� th� byt� containe� a� �eac� �address� �Th� �compariso� �
continue� unti� th� endin� addres� i� reached.

Th� �use� �ma� hal� th� comman� a� an� tim� b� depressin� an� �ke� �o� �th� �
keyboard.
.pa�.tc     W    Write Memory to a file ............................ #
נ�� Writ� Memor� t� � file
________________________________________________________________�


Th� �� �comman� allow� th� use� t� writ� th� content� o� memor� t� �� �dis� �
file� Th� forma� o� th� comman� is:

��������� *נ arg� [arg�� arg3�

�������������� ARG�� i� th� nam� o� � fil� t� whic� writin� wil� �
�������������� tak� place� 

�������������� ARG� an� ARG� ar� th� optiona� startin� an� endin� �
�������������� addresse� o� th� portio� o� memor� t� b� writte� �
�������������� t� th� disk��� I� th� addresse� omitte� the� th� �
�������������� memor�� bloc� t� b� writte� i� define� b�� th� �
�������������� startin� an� endin� addresse� o� th� las�� fil� �
�������������� loaded��� Thes� addresse� ca� b� redisplaye� b� �
�������������� enterin� th� � comman� wit� n� arguments�


Z8� �alway� delete� an� fil� o� dis� whos� nam� i� th� sam� a� ARG1� I� �n� �
fil� b� thi� nam� exist� the� Z8� wil� automaticall� creat� it.

Z8� wil� ech� th� startin� memor� addres� an� continuall� updat� th� endin� �
memor� addres� a� th� writin� t� dis� take� place.
.pa�.tc     X    Display Machine State.............................. #
ؠ�� Displa� Machin� State
________________________________________________________________�


Th� �� �comman� display� th� curren� content� o� al� �use� �registers� �Th� �
forma� o� th� comman� is:

��������� *ؠ� 

�������������� n� argument� ar� require�

Z8� �display� �display� �al� registers� excep� th� � �registe� �an� �th� �� �
register� o� tw� line� o� th� console� I� addition� th� instructio� pointe� �
t� �b� �th� �user'� progra� counte� i� disassemble� an� �displaye� �o� �th� �
secon� �line� Thin� o� thi� a� th� "o� deck� instruction� �th� �instructio� �
tha� �wil� �b� execute� upo� th� receip� o� th� nex� � (GO� �o� �� �(SINGL� �
STEP� command.

T� inspec� th� � o� � register� us� th� � command�
.pa�.tc     Y    Fill Memory ....................................... #
٠�� Fil� Memory
________________________________________________________________�


Th� � comman� fill� � use� specifie� bloc� o� memor� wit� � use� �specifie� �
patter� �o� �bytes� th� lengt� o� whic� i� limite� onl� b� �th� �lengt� �o� �
Z8E'� inpu� buffe� whic� i� 8� byte� long:

�����*٠ ARG�� ARG�� ARG�� <cr�

�������� where� ARG1� =� th� startin� addres� o� th� bloc�  t� fill

����������������ARG2� =� th� endin� addres� o� th� bloc� t�  fill

����������������ARG3� =� i� th� dat� patter� t� b� writte�  t� memory� �
�������������������������ARG� �i� evaluate� b�  Z8� a� typ� �ARGUMEN�-�
�������������������������STRIN� �whic� � ma� b� o� an� lengt� �i� �th� �
�������������������������rang� � o� �� �throug� th� �numbe� �o� �byte�  �
�������������������������remainin� i� th� inpu� buffe� onc�  ARG� �an� �
�������������������������ARG� hav� bee� input.


Th� �� �comman� give� th� use� th� capabilit� t� initializ� memor� �t� �an� �
dat� �pattern� �Th� capabilit� o� enterin� mult�-byt� string� a� �th� �dat� �
patter� �wit� �whic� �t� fil� memor� allow� th� �use� �t� �stor� �repeatin� �
pattern� �o� dat� i� memor� wit� � singl� command� Fo� exampl� i� th� �use� �
entere� th� command:

��������� *� 100� 127� 'abcd',16,7�

Z8� �woul� begi� writin� th� � byt� patter� (6� 6� 6� 6� 1� 77� entere� �a� �
ARG� �startin� a� addres� 1000� Thi� patter� woul� repea� a� addres� �1006� �
100C� 1012� etc� 

Th� �comman� end� afte� � byt� i� writte� t� th� ARG� addres� eve� i� �thi� �
byt� �doe� �no� �represen� th� las� byt� i� th� ARG� block� �I� �th� �abov� �
exampl� �th� comman� woul� en� whe� � byt� i� writte� t� addres� 127� �eve� �
i� tha� byt� i� no� 77� 
.pa�.tc     Z    Disassemble ....................................... #
ڠ�� Disassembl�
________________________________________________________________�


Th� � comman� allow� th� use� t� disassembl� � bloc� o� data� Z8� �perform� �
disassembly� �whic� �i� th� translatio� o� binar� memor� dat� �int� �sourc� �
cod� �format� usin� th� ful� Z8� instructio� se� an� Zilo� �mnemonics� �Th� �
resultan� sourc� cod� ma� b� directe� t� th� consol� o� t� th� consol� �an� �
� �dis� �fil� �simultaneously� �Z8� als� allow� �th� �use� �t� �disassembl� �
interactivel� whe� ARG� i� equa� t� 1� Th� forma� o� th� comman� is:

���  *ڠ [ARG� [ARG� ARG3�]� <cr�

���������where�ARG1�i� th� addres� a� whic� di�assembl� i� t� begin

���������������ARG2�i� optiona� an� represent� th�  uppe� limi� o� th� �
��������������������disassembl�  proces� (se� detail� below)

���������������ARG3�i� a� optiona� fil� nam� spec�ficatio� fo� �disas�
��������������������sembl� t� disk

�������������� ARG1 ma� b� o� an� argumen� type� 

�������������� ARG2�i� �treate� i� on� o� tw� way� dependin� �o� � it� �
��������������������value� 

���������������� 1) I� �ARG� evaluate� t� � numbe� betwee� � an� � 25� �
��������������������(decimal� �Z8� wil� disassembl� i� �"bloc� � mode� �
��������������������an� �ARG� become� � coun� o� th� numbe� � o� �ins�
��������������������truction� �pe� bloc� t� disassemble�  A� wil� �b� �
��������������������explaine� �below� Z8� pause� afte�  eac� bloc� �i� �
��������������������disassemble� �an� allow� th�  use� t� continu� �o� �
��������������������t� terminat� th� command.

������������������� I� �ARG� �i� omitte� altogethe� �� �defaul� �bloc�  �
��������������������siz� �o� �� �i� used�   Wheneve� �ARG� �equal� �1� �
��������������������eithe� �explicitl� �o� � b� �default� �Z8� �allow� �
��������������������inte�activ� �di�a�sembl� whic� allow� th� use� �t� �
��������������������choos� th� outpu� forma� o� th� data� �Interactiv� �
��������������������di�assembl� i� discusse� below.

���������������� 2) I� ARG� evaluate� t� � numbe� greate� tha�  25� i� �
��������������������i� assume� t� b� a� endin� address�  I� thi� �cas� �
��������������������disassembl� �wil� procee� fro� � startin� �addres� �
��������������������(ARG1� �t� �endin� �addres�  (ARG2� �an� �n� �use� �
��������������������inte�ventio� i� required.

�������������� ARG3�i� �present� i� assume� t� b� th� nam� o� � � dis� �
��������������������fil� �int� whic� th� disassemble� outpu� wil� � b� �
��������������������written� Z8� searche� th� specifie� dis� fo� � th� �
��������������������name� file� I� th� fil� i� found� the� al�  disas�
��������������������semble� outpu� wil� b� writte� t� it� �overwritin� �
��������������������an� dat� tha� existe� there� I� th� fil�  doe� no� �
��������������������exis� �th� �fil� wil� b� create� usin� �th� � nam� �
��������������������specifie� i� ARG3� 

�������������� NOTE� I� ARG� i� presen� ARG� mus� b� explicitl�  spec�
���������������ified� �otherwis� Z8� wil� mistakenl� trea� �th� � fil� �
���������������nam� a� ARG2.

Z8� output� t� th� consol� usin� th� followin� format��
���� ADDRESӠ���� OBJEC� CODŠ���� LABEL��� OPCODŠ�� OPERAN�


Z8� write� t� dis� usin� th� followin� formart��
���������������������������������� �
���������������������������������� LABEL��� OPCODŠ�� OPERAN�

Z8� �disassemble� memor� bloc� b� bloc� i� th� use� specifie� �bloc� �size� �
Afte� �eac� �bloc� i� outpu� Z8� pause� fo� use� input�  � carriag� �retur� �
inpu� �b� �th� �use� �cause� th� nex� �bloc� �t� �b� �disassemble� �(unles� �
interactiv� �mod� i� i� effect)� whil� an� othe� characte� �terminate� �th� �
command� �Perhap� �th� mos� convenien� wa� t� disassembl� i� t� �specif� �� �
coun� o� one� eithe� explicit� o� b� omittin� ARG2� an� t� us� th� carriag� �
retur� �a� a� on/of� switch�  Holdin� dow� th� retu� ke� �produce� �output� �
releasin� th� retur� ke� end� output.

Z8E'� disassemble� i� especiall� powerfu� whe� use� i� conjunctio� wit� th� �
symbo� facility� B� buildin� � symbo� tabl� wit� bot� .PR� an� .SY� �files� �
and/o� �creatin� use� define� symbo� name� vi� th� � command� th� use� �ca� �
virtuall� �recreat� a� assemble� outpu� listin� (minu� th� �comments� �wit� �
Z8� insertin� label� an� symboli� operand� whereve� possible.

I� �Z8� �canno� �matc� �a� operan� i� th� �disassemble� �instructio� �t� �� �
correspondin� symbo� i� th� symbo� table� o� i� n� symbo� tabl� exists� Z8� �
use� th� hexadecima� value.

I� multipl� symbol� i� th� symbo� tabl� ar� equa� t� th� sam� 1� bi� �valu� �
o� address� Z8� disassemble� usin� th� firs� symbo� nam� encountere� i� th� �
searc� o� th� symbo� tabl� whic� i� equate� t� th� 1� bi� operan� specifie� �
i� �th� �instructio� bein� disassembled� Thi� wil� unavoidabl� �produc� �a� �
occasiona� �mi�name� operan� whe� mor� tha� on� symbo� nam� i� �equate� �t� �
th� sam� 1� bi� value� 

Z8� �doe� �no� �substitut� symbo� name� i� �thos� �Z8� �instruction� �whic� �
referenc� � bi� immediat� dat� (ie� L� A,24H)� Eigh� bi� immediat� dat� �i� �
disassemble� �a� � quote� ASCI� characte� i� it'� absolut� valu� i� i� �th� �
rang� 2� he� t� 7� hex� otherwise� i� i� disassemble� a� � he� byte.

Outpu� b� Z8� t� � dis� fil� i� instantl� assemblabl� b� mos� an� assemble� �
whic� �accept� Zilo� mnemonic� withou� an� modification� othe� tha� �addin� �
a� EN� statemen� a� th� en� o� th� file.

Whe� �disassemblin� � bloc� o� memor� (startin� addres� t� endin� �address� �
th� disassembl� proces� ma� b� halte� a� an� tim� b� depressin� an� ke� �o� �
th� keyboard.

Interactiv� disassembl� allow� th� use� t� specif� th� forma� o� th� sourc� �
cod� �produce� �b� disassembl� o� � lin� b� lin� basis� �Interactiv� �mode� �
whic� i� alway� i� effec� wheneve� ARG� i� equa� t� 1� cause� Z8� t� �paus� �
afte� �eac� instructio� i� di�assembled� Thi� paus� fo� inpu� �permit� �th� �
use� �t� ente� on� o� th� followin� command� t� choos� th� �desire� �outpu� �
format:

��� CHARACTEҠ���������� OUTPU� FORMAԠ������� EXAMPL�

���� �
������� ����������������� ASCI� DEF �������� DEF � 'Q�

�������  ���������������� HE� DEF ��������� DEF � 23Ƞ�� 
�������� à������������������ CODŠ����������� Eؠ��� DE,H�

������� Ġ���������������� HE� DEFנ��������� DEFנ� 02FCȠ o򠠠 
��������������������������������������������� DEFנ� LABE�

������� ����������������� ad� COMMENԠ������� ;Thi� i� � Commen����� 

���� carriag堠�������� (terminat� command�
����� retur�
�� 
���� an� othe򠠠������� PROCEE� T� TH�
���� characte򠠠������ NEX� INSTRUCTIOΠ��� 


���� ASCI� DEFB�

���� �����Th� content� o� memor� a� th� curren� disassembl� addres� i� �
����������converte� �t� �� quote� ASCI� character� Value� � les� �tha� �
����������hexadecima� 2� (ASCI� space� o� greate� tha�  hexadecima� 7� �
����������(ASCI� tilde� canno� b� disassemble�  int� thi� format� 

���� HE� DEFB�

���� �����Th� �� �bi� content� o� memor� a� �th� �curren� �disassembl�  �
����������addres� ar� converte� t� � he� byte.

���� CODE�

����������Thi� i� th� norma� defaul� fo� disassembly� A� Z8�  move� o� �
����������t� �� �ne� addres� i� wil� alway� displa� th� � content� �o� �
����������memor� �a� �� �Z8� instruction� Th� "C� i� �onl� �neede� �t� �
����������redispla� �th� content� o� memor� a� a� instructio� ha� �on� �
����������o� th� othe� character� (A� � o� D� alread� bee� entered� 

���� HE� DEFW�

���� �����Th� �content� �o� th� tw� byte� o� memor� �startin� �a� �th�  �
����������loactio� o� th� curren� disassembl� addres� ar� outpu�  a� � �
����������defin� wor� directive� Th� byt� pointe� t�  directl� b� �th� �
����������curren� �disassembl� addres� become� th�  lo� orde� byt� �o� �
����������th� �operand� �Th� �byt� a� disassembl� � addres� �plu� �on� �
����������become� th� hig� orde� byte.

���� NOTE�
����������I� �Z8� ha� jus� disassemble� � mult� byt� Z8� �instructio� �
����������an� th� use� entere� an� o� th� character� liste� abov�  (A� �
����������B� �C� o� D� onl� th� firs� byte� o�  firs� tw� fo� "D"� �o� �
����������th� �instructio� � woul� �b� �converte� �t� �th� ��requeste�  �
����������format� �Th� �remainin� byte� o� th�  instructio� �woul� �b� �
����������treate� �a� � ne�  Z8� instructio� onc� th� �use� �proceede�  �
����������t� th� nex� disassembl� address� 

���� ADDIN� COMMENT�

���� �����Z8� �allow� �th� �use� �t� �ad� �on� �commen� �pe� �lin� �o�  �
����������disassemble� code� I� MAXLE� i� se� t� � the� comment� � ma� �
����������b� �u� t� 2� character� i� length� I� MAXLE� i� se� � t� �1� �
����������the� comment� ma� b� u� t� 1� character� i�  length.


I� �durin� �disassembly� Z8� encounter� dat� whic� canno� �b� �disassemble� ��int� � vali� Z8� instructio� i� wil� displa� th� dat� a� DEFBs.
.pa�.t�     ?��� Evaluate Expression ..............................� #
?��� Evaluate Expression
________________________________________________________________�


          *?   ARG1 <cr>

               where ARG1 is any legal form.

Th� �"?� �comman� �evaluate� an� display� �it� �argument� � Indirectio� �i� �
supporte� s� tha�   *�   (HL�   display� th� wor� a� th� addres� �containe� �
i� HL.

Th� rule� fo� expressio� formatio� ar� describe� befor� th� listin� o� �Z8� �
commands.
.pa�.tc     >    Change user number ................................ #
>��� Change user number
________________________________________________________________�


          *>   ARG1 <cr>

               where evaluates to a legal user number.


Usefu� �i� �preparatio� �fo� �� L(oad� �command� �th� �">� �comman� �allow� �
switchin� use� number� afte� Z8� i� activ� s� tha� yo� ma� the� loa� �file� �
fro� use� area� othe� tha� th� on� fro� whic� Z8� wa� invoked�  
.pa�.tc APPENDI� A � FIL� FORMA� FO� SYMBO� TABLE� ................. #
                APPENDI� A � FIL� FORMA� FO� SYMBO� TABLE�

Z8Š i� currentl� se� u� t� b� abl� t� rea� an� o� th� listin� �
file� whic� appea� below�

��� 1� Microsof��� MACRO-8���� V3.3�� .PR� file� Ma� 8� 198�
��� 2� Microsof��� MACRO-8���� V3.4�� .PR� file� De� 9� 198�
��� 3� Microsof��� LINK-8����� V3.4�� .SY� file� De� 9� 198� 
��� 4� SL� System� Z80AS͠���� V1.0�� .LS� file�
��� 5� SL� System� SLRNˠ����� V1.0�� .SY� file󠠠��� 
��� 6� SL� System� Z80AS͠���� V1.��� .PR� file�

Th� uniqu� characteristic� o� eac� are�

��� MACRO-8� V3.3�

��� ������Z8� searche� fo� th� � byt� strin� "Symbols:� i� th� � file� �
����������Onc� �thi� strin� i� found� Z8� expect� a� �ASCI� � carriag� �
����������retur� characte� an� a� ASCI� lin� fee� characte� t� b� �th� �
����������nex� tw� byte� i� th� file� Th� symbo�  tabl� listin� shoul� �
����������begi� i� th� nex� characte� positio�  i� th� file.

��� ������Eac� lin� o� th� symbo� tabl� listin� contain� fou� � symbo� �
����������name� an� a� associate� address� 

��� ������I� �th� �characte� followin� th� symbol'� he� �valu� �i� �a�  �
����������apostophe� th� symbo� i� considere� t� b� progra� �relative� �
����������I� �th� use� specifie� � bia� i� th� comman� lin�  th� �bia� �
����������wil� b� adde� t� th� symbol'� value.

����������I� th� characte� followin� th� symbol'� he� valu� i� a�  "I� �
����������(meanin� �tha� �th� symbo� i� globall� �defined� �the� � th� �
����������characte� followin� th� "I� i� examined� I� thi� � characte� �
����������i� �a� apostroph� i� i� considere� t� b� �progra� � relativ� �
����������an� th� bias� i� specifie� i� adde� t� th�  value.

��� ������I� th� characte� followin� th� he� symbo� valu� o� th� � "I� �
����������i� �an� �characte� �beside� a� �apostrophe� �th� �symbo� �i�  �
����������considere� absolut� an� th� bia� wil� no� b� added.

��� ������Th� �fil� �shoul� b� terminate� wit� �th� �CP/� �en�-o�-fil�  �
����������characte� (contro� � whic� i� equivalen� t� � he� 1A).

��� ������I� �th� �strin� �"Symbols� i� neve� found� �Z8� �print� �th�  �
����������message� Symbo� Tabl� no� Found
.pa���� MACRO-8�� V3.4�

��� ������Z8� searche� fo� th� � byt� strin� "Symbols:� i� th� � file� �
����������Onc� �thi� strin� i� found� Z8� expect� a� �ASCI� � carriag� �
����������retur� characte� an� a� ASCI� lin� fee� characte� t� b� �th� �
����������nex� tw� byte� i� th� file� Th� symbo�  tabl� listin� shoul� �
����������begi� i� th� nex� characte� positio�  i� th� file.

��� ������I� thi� releas� o� MACR�-8� th� forma� o� th� symbo� � tabl� �
����������i� �completel� �opposit� o� V3.37� Tha� is� th� �he� � valu� �
����������appear� �befor� �th� symbo� name� I� �addition� �thes� � he� �
����������value/symbo� nam� combinatio� appea� thre� pe� line.

��� ������Th� �characte� appearin� afte� th� he� valu� i� �interprete� �
����������a� describe� fo� versio� 3.37� 

��� ������I� �th� �strin� �"Symbols� i� neve� found� �Z8� �print� �th�  �
����������message� Symbo� Tabl� no� Found

��� �
��� LINK-8�� V3.4�

��� ������LIN�-8� ca� optionall� produc� � lin� ma� (.SY� file�  whic� �
����������list� �al� globall� define� symbol� i� th� �use� � specifie� �
����������th� �"Y� �optio� �th� L8� comman� �line� � Z8� � treat� �al� �
����������symbol� �name� loade� fro� � LIN�-8� .SY� fil�  a� �absolut� �
����������(no�-relocatable� �addresses� �Nevertheless� � i� �th� �use� �
����������specifie� �� bias� i� wil� b� adde� t� ever� � symbo� �valu� �
����������rea� i� fro� th� .SY� file.

��� ������Z8� expect� th� firs� symbo� valu� i� � .SY� fil� t� � begi� �
����������i� �th� firs� byt� positio� i� th� file� Eac�  symbo� �valu� �
����������consist� �o� fou� hexadecima� byte� i� ASCI�  followe� b� �� �
����������ta� �character� Immediatel� afte� th� ta�  characte� i� �th� �
����������symbo� �nam� whic� ma� b� betwee� on� an�  si� �alphanumeri� �
����������character� i� length� Th� symbo� nam�  i� followe� b� � �ta� �
����������an� th� sequenc� repeats� Ever�  fourt� symbo� �value/symbo� �
����������nam� pai� shoul� b� followe�  b� � carriag� retur� an� �lin� �
����������feed.

��� ������Th� �fil� �shoul� b� terminate� wit� �th� �CP/� �en�-o�-fil�  �
����������characte� (contro� � whic� i� equivalen� t� � he� 1A).


��� Z80AS�

��� ������Z80AS� ma� b� configure� t� produc� eithe� 8� o� 13�  colum� �
����������output.

��� ������Z8� �searche� fo� th� � byt� strin� "Symbo� Table:� �i� �th�  �
����������file� Thi� strin� nee� no� b� a� th� beginnin� o� th�  file� �
����������Z8� �wil� �sca� th� entir� fil� lookin� fo� it� �Onc� � thi� �
����������strin� �i� �found� �Z8� expect� a� �ASCI� �carriag� � retur� �
����������characte� �an� a� ASCI� lin� fee� characte� t� b�  th� �nex� �
����������tw� byte� i� th� file� Th� symbo� tabl� listin� shoul� begi� �
����������i� th� nex� characte� positio� i� th�  file.

��� ������I� �� �Z80AS� �.LS� fil� th� he� valu� �appear� �befor� �th�  �
����������symbo� �name� �He� �value/symbo� �nam� �combination� �appea�  �
����������thre� �pe� �line� Z80AS� symbo� name� ma� contai� u� �t� �1�  �
����������characters� �Z8� �wil� accep� th� firs� 1� character� �o� ��  ������������symbo� nam� i� MAXLE� i� se� t� 1� o� th� firs� � character� �
����������i� MAXLE� i� se� t� 6� 

��� ������I� �th� �strin� "Symbo� Table:� i� neve� found� �Z8� �print�  �
����������th� message� 

�������������������� Symbo� Tabl� No� Foun�

��� SLRN�

��� ������SLRN� ca� optionall� produc� � lin� ma� (.SY� File�  simila� �
����������t� �th� �on� produce� b� Lin�-80� Z8� �treat� �al� � symbol� �
����������loade� fro� � SLRN� .SY� fil� a� absolut� symbols� �However� �
����������a� �i� �th� �cas� o� Lin�-8� .SY� files� �Z8� � wil� �ad� �� �
����������relocatio� bia� t� eac� symbo� i� on� i�  specified.

��� ������Eac� �symbo� �valu� i� � SLRN� .SY� fil� �consist� �o� �fou�  �
����������hexadecima� �byte� �followe� �b� � �spac� �followe� �b� �th�  �
����������symbo� �name� Th� symbo� nam� i� followe� b� tw� ASCI� � ta� �
����������characters� 

��� ������Us� SLRNK'� /� optio� t� produc� � lin� map.

NOTE�

��� �Whil� �readin� i� � MACR�-8� .PR� file� o� � Z80AS� �.LS� � file� �
�����Z8� i� capabl� o� readin� a� entir� assembl� listin� fil� lookin� �
�����fo� �th� �"Symbols:� �strin� o� "Symbo� � Table:� �string� �Thes� �
�����string� �nee� �no� �b� locate� a� th� � beginnin� �o� �th� �file� �
�����However� �th� �loadin� o� th�  symbo� tabl� wil� �b� �speede� �u� �
�����considerabl� �i� th�  symbo� tabl� i� th� onl� dat� i� th� �file� �
�����Thi� �i�  accomplishe� quit� easil� i� bot� MACR�-8� �b� �turnin� �
�����of� � th� �listin� �durin� a� assembl� throug� �th� �us� �o� �th�  �
�����.XLIS� �directive� Th� listin� ca� the� b� turne� bac� �o� � jus� �
�����prio� t� th� EN� directiv� vi� � .LIS� directiv� t�  ensur� �tha� �
�����th� symbo� tabl� i� writte� t� disk.

��� �I� yo� ar� usin� Z80AS� us� th� /� optio� t� instruc�  Z80AS� �t� �
�����produc� � symbo� file.

�����Z8� i� abl� t� proces� symbo� table� whic� occup� multipl� �page� �
�����i� an� o� th� fil� type� mentione� above� Heading� whic� �preced� �
�����eac� pag� ar� automaticall� ignore� b� Z8E�
.pa�.tc APPENDIX B - ZILOG MNEMONICS ............................... #
                       APPENDI� � � ZILO� MNEMONICS

� 004������������������ NΠ��� EQՠ� 49Ƞ����� ;� BI� OPERAN�
� 123Ơ���������������� NNNΠ� EQՠ� 123FȠ��� ;1� BIԠ� OPERAN�
� 003������������������ INDEؠ EQՠ� 36Ƞ����� ;INDE� REGISTE� INDE�


� 010 �� 8Š����������������� ADà� A,(HL�
� 010à�� D� 8� 3������������� ADà� A,(IX+INDEX�
� 010Ơ�� F� 8� 3������������� ADà� A,(IY+INDEX�
� 011���� 8Ơ����������������� ADà� A,�
� 011���� 8������������������� ADà� A,�
� 011���� 8������������������� ADà� A,�
� 011���� 8������������������� ADà� A,�
� 011���� 8 ����������������� ADà� A,�
� 011���� 8à����������������� ADà� A,�
� 011���� 8Ġ����������������� ADà� A,�
� 011���� C� 4���������������� ADà� A,N�
� 011 �� E� 4���������������� ADà� HL,B�
� 011Ġ�� E� 5���������������� ADà� HL,D�
� 011Ơ�� E� 6���������������� ADà� HL,H�
� 012���� E� 7���������������� ADà� HL,S�


� 012���� 8������������������� ADĠ� A,(HL�
� 012���� D� 8� 3������������� ADĠ� A,(IX+INDEX�
� 012���� F� 8� 3������������� ADĠ� A,(IY+INDEX�
� 012���� 8������������������� ADĠ� A,�
� 012 �� 8������������������� ADĠ� A,�
� 012à�� 8������������������� ADĠ� A,�
� 012Ġ�� 8������������������� ADĠ� A,�
� 012Š�� 8������������������� ADĠ� A,�
� 012Ơ�� 8������������������� ADĠ� A,�
� 013���� 8������������������� ADĠ� A,�
� 013���� C� 4���������������� ADĠ� A,N�
� 013���� 0������������������� ADĠ� HL,B�
� 013���� 1������������������� ADĠ� HL,D�
� 013���� 2������������������� ADĠ� HL,H�
� 013���� 3������������������� ADĠ� HL,S�
� 013���� D� 0���������������� ADĠ� IX,B�
� 013���� D� 1���������������� ADĠ� IX,D�
� 013 �� D� 2���������������� ADĠ� IX,I�
� 013Ġ�� D� 3���������������� ADĠ� IX,S�
� 013Ơ�� F� 0���������������� ADĠ� IY,B�
� 014���� F� 1���������������� ADĠ� IY,D�
� 014���� F� 2���������������� ADĠ� IY,I�
� 014���� F� 3���������������� ADĠ� IY,S�


� 014���� A������������������� ANĠ� (HL�
� 014���� D� A� 3������������� ANĠ� (IX+INDEX�
� 014 �� F� A� 3������������� ANĠ� (IY+INDEX�
� 014Š�� A������������������� ANĠ� A
� 014Ơ�� A������������������� ANĠ� �
� 015���� A������������������� ANĠ� �
� 015���� A������������������� ANĠ� �
� 015���� A������������������� ANĠ� �
� 015���� A������������������� ANĠ� �
� 015���� A������������������� ANĠ� �
� 015���� E� 4���������������� ANĠ� N�
�
� 015���� C� 4���������������� BIԠ� 0,(HL�
� 015���� D� C� 3� 4���������� BIԠ� 0,(IX+INDEX�
� 015Ġ�� F� C� 3� 4���������� BIԠ� 0,(IY+INDEX�
� 016���� C� 4���������������� BIԠ� 0,�
� 016���� C� 4���������������� BIԠ� 0,�
� 016���� C� 4���������������� BIԠ� 0,�
� 016���� C� 4���������������� BIԠ� 0,�
� 016���� C� 4���������������� BIԠ� 0,�
� 016 �� C� 4���������������� BIԠ� 0,�
� 016Ġ�� C� 4���������������� BIԠ� 0,�


� 016Ơ�� C� 4Š�������������� BIԠ� 1,(HL�
� 017���� D� C� 3� 4Š�������� BIԠ� 1,(IX+INDEX�
� 017���� F� C� 3� 4Š�������� BIԠ� 1,(IY+INDEX�
� 017���� C� 4Ơ�������������� BIԠ� 1,�
� 017 �� C� 4���������������� BIԠ� 1,�
� 017Ġ�� C� 4���������������� BIԠ� 1,�
� 017Ơ�� C� 4���������������� BIԠ� 1,�
� 018���� C� 4 �������������� BIԠ� 1,�
� 018���� C� 4à�������������� BIԠ� 1,�
� 018���� C� 4Ġ�������������� BIԠ� 1,�


� 018���� C� 5���������������� BIԠ� 2,(HL�
� 018���� D� C� 3� 5���������� BIԠ� 2,(IX+INDEX�
� 018Ġ�� F� C� 3� 5���������� BIԠ� 2,(IY+INDEX�
� 019���� C� 5���������������� BIԠ� 2,�
� 019���� C� 5���������������� BIԠ� 2,�
� 019���� C� 5���������������� BIԠ� 2,�
� 019���� C� 5���������������� BIԠ� 2,�
� 019���� C� 5���������������� BIԠ� 2,�
� 019 �� C� 5���������������� BIԠ� 2,�
� 019Ġ�� C� 5���������������� BIԠ� 2,�


� 019Ơ�� C� 5Š�������������� BIԠ� 3,(HL�
� 01A���� D� C� 3� 5Š�������� BIԠ� 3,(IX+INDEX�
� 01A���� F� C� 3� 5Š�������� BIԠ� 3,(IY+INDEX�
� 01A���� C� 5Ơ�������������� BIԠ� 3,�
� 01A �� C� 5���������������� BIԠ� 3,�
� 01AĠ�� C� 5���������������� BIԠ� 3,�
� 01AƠ�� C� 5���������������� BIԠ� 3,�
� 01B���� C� 5 �������������� BIԠ� 3,�
� 01B���� C� 5à�������������� BIԠ� 3,�
� 01B���� C� 5Ġ�������������� BIԠ� 3,L


� 01B���� C� 6���������������� BIԠ� 4,(HL�
� 01B���� D� C� 3� 6���������� BIԠ� 4,(IX+INDEX�
� 01BĠ�� F� C� 3� 6���������� BIԠ� 4,(IY+INDEX�
� 01C���� C� 6���������������� BIԠ� 4,�
� 01C���� C� 6���������������� BIԠ� 4,�
� 01C���� C� 6���������������� BIԠ� 4,�
� 01C���� C� 6���������������� BIԠ� 4,�
� 01C���� C� 6���������������� BIԠ� 4,�
� 01C �� C� 6���������������� BIԠ� 4,�
� 01CĠ�� C� 6���������������� BIԠ� 4,�

�� 01CƠ�� C� 6Š�������������� BIԠ� 5,(HL�
� 01D���� D� C� 3� 6Š�������� BIԠ� 5,(IX+INDEX�
� 01D���� F� C� 3� 6Š�������� BIԠ� 5,(IY+INDEX�
� 01D���� C� 6Ơ�������������� BIԠ� 5,�
� 01D �� C� 6���������������� BIԠ� 5,�
� 01DĠ�� C� 6���������������� BIԠ� 5,�
� 01DƠ�� C� 6���������������� BIԠ� 5,�
� 01E���� C� 6 �������������� BIԠ� 5,�
� 01E���� C� 6à�������������� BIԠ� 5,�
� 01E���� C� 6Ġ�������������� BIԠ� 5,�


� 01E���� C� 7���������������� BIԠ� 6,(HL�
� 01E���� D� C� 3� 7���������� BIԠ� 6,(IX+INDEX�
� 01EĠ�� F� C� 3� 7���������� BIԠ� 6,(IY+INDEX�
� 01F���� C� 7���������������� BIԠ� 6,�
� 01F���� C� 7���������������� BIԠ� 6,�
� 01F���� C� 7���������������� BIԠ� 6,�
� 01F���� C� 7���������������� BIԠ� 6,�
� 01F���� C� 7���������������� BIԠ� 6,�
� 01F �� C� 7���������������� BIԠ� 6,�
� 01FĠ�� C� 7���������������� BIԠ� 6,�


� 01FƠ�� C� 7Š�������������� BIԠ� 7,(HL�
� 020���� D� C� 3� 7Š�������� BIԠ� 7,(IX+INDEX�
� 020���� F� C� 3� 7Š�������� BIԠ� 7,(IY+INDEX�
� 020���� C� 7Ơ�������������� BIԠ� 7,�
� 020 �� C� 7���������������� BIԠ� 7,�
� 020Ġ�� C� 7���������������� BIԠ� 7,�
� 020Ơ�� C� 7���������������� BIԠ� 7,�
� 021���� C� 7 �������������� BIԠ� 7,�
� 021���� C� 7à�������������� BIԠ� 7,�
� 021���� C� 7Ġ�������������� BIԠ� 7,�


� 021���� D� 123Ơ������������ CAL̠� C,NNN�
� 021���� F� 123Ơ������������ CAL̠� M,NNN�
� 021Ġ�� D� 123Ơ������������ CAL̠� NC,NNN�
� 022���� C� 123Ơ������������ CAL̠� NNN�
� 022���� C� 123Ơ������������ CAL̠� NZ,NNNN
� 022���� F� 123Ơ������������ CAL̠� P,NNN�
� 022���� E� 123Ơ������������ CAL̠� PE,NNN�
� 022à�� E� 123Ơ������������ CAL̠� PO,NNN�
� 022Ơ�� C� 123Ơ������������ CAL̠� Z,NNN�


� 023���� 3Ơ����������������� CC�


� 023���� BŠ����������������� CР� (HL�
� 023���� D� B� 3������������� CР� (IX+INDEX�
� 023���� F� B� 3������������� CР� (IY+INDEX�
� 023���� BƠ����������������� CР� �
� 023 �� B������������������� CР� �
� 023à�� B������������������� CР� �
� 023Ġ�� B������������������� CР� �
� 023Š�� B ����������������� CР� �
� 023Ơ�� Bà����������������� CР� �
� 024���� BĠ����������������� CР� �
� 024���� F� 4���������������� CР� N��

� 024���� E� A���������������� CP�
� 024���� E� B���������������� CPD�
� 024���� E� A���������������� CP�
� 024���� E� B���������������� CPI�


� 024 �� 2Ơ����������������� CP�


� 024à�� 2������������������� DA�


� 024Ġ�� 3������������������� DEà� (HL�
� 024Š�� D� 3� 3������������� DEà� (IX+INDEX�
� 025���� F� 3� 3������������� DEà� (IY+INDEX�
� 025���� 3Ġ����������������� DEà� �
� 025���� 0������������������� DEà� �
� 025���� 0 ����������������� DEà� B�
� 025���� 0Ġ����������������� DEà� �
� 025���� 1������������������� DEà� �
� 025���� 1 ����������������� DEà� D�
� 025���� 1Ġ����������������� DEà� �
� 025 �� 2������������������� DEà� �
� 025à�� 2 ����������������� DEà� H�
� 025Ġ�� D� 2 �������������� DEà� I�
� 025Ơ�� F� 2 �������������� DEà� I�
� 026���� 2Ġ����������������� DEà� �
� 026���� 3 ����������������� DEà� S�


� 026���� F������������������� D�


� 026���� 1� 0���������������� DJNڠ� $+�


� 026���� F ����������������� E�


� 026���� E������������������� Eؠ� (SP),H�
� 026���� D� E���������������� Eؠ� (SP),I�
� 026���� F� E���������������� Eؠ� (SP),I�
� 026à�� 0������������������� Eؠ� AF,AF���������� 
� 026Ġ�� E ����������������� Eؠ� DE,H�
� 026Š�� D������������������� EX�


� 026Ơ�� 7������������������� HAL�


� 027���� E� 4���������������� I͠� �
� 027���� E� 5���������������� I͠� �
� 027���� E� 5Š�������������� I͠� �


� 027���� E� 7���������������� IΠ� A,(C�
� 027���� D� 4���������������� IΠ� A,(NN�
� 027���� E� 4���������������� IΠ� B,(C�
� 027à�� E� 4���������������� IΠ� C,(C��� 027Š�� E� 5���������������� IΠ� D,(C�
� 028���� E� 5���������������� IΠ� E,(C�
� 028���� E� 6���������������� IΠ� H,(C�
� 028���� E� 6���������������� IΠ� L,(C�


� 028���� 3������������������� INà� (HL�
� 028���� D� 3� 3������������� INà� (IX+INDEX�
� 028à�� F� 3� 3������������� INà� (IY+INDEX�
� 028Ơ�� 3à����������������� INà� �
� 029���� 0������������������� INà� �
� 029���� 0������������������� INà� B�
� 029���� 0à����������������� INà� �
� 029���� 1������������������� INà� �
� 029���� 1������������������� INà� D�
� 029���� 1à����������������� INà� �
� 029���� 2������������������� INà� �
� 029���� 2������������������� INà� H�
� 029���� D� 2���������������� INà� I�
� 029���� F� 2���������������� INà� I�
� 029à�� 2à����������������� INà� �
� 029Ġ�� 3������������������� INà� S�


� 029Š�� E� A���������������� IN�
� 02A���� E� B���������������� IND�
� 02A���� E� A���������������� IN�
� 02A���� E� B���������������� INI�


� 02A���� E������������������� JР� (HL�
� 02A���� D� E���������������� JР� (IX�
� 02A���� F� E���������������� JР� (IY�
� 02A �� D� 123Ơ������������ JР� C,NNN�
� 02AŠ�� F� 123Ơ������������ JР� M,NNN�
� 02B���� D� 123Ơ������������ JР� NC,NNN�
� 02B���� C� 123Ơ������������ JР� NNN�
� 02B���� C� 123Ơ������������ JР� NZ,NNN�
� 02B���� F� 123Ơ������������ JР� P,NNN�
� 02BĠ�� E� 123Ơ������������ JР� PE,NNN�
� 02C���� E� 123Ơ������������ JР� PO,NNN�
� 02C���� C� 123Ơ������������ JР� Z,NNN�


� 02C���� 3� 0���������������� JҠ� C,$+�
� 02C���� 1� 0���������������� JҠ� $+�
� 02C���� 3� 0���������������� JҠ� NC,$+�
� 02Cà�� 2� 0���������������� JҠ� NZ,$+�
� 02CŠ�� 2� 0���������������� JҠ� Z,$+�


� 02D���� 0������������������� LĠ� (BC),�
� 02D���� 1������������������� LĠ� (DE),�
� 02D���� 7������������������� LĠ� (HL),�
� 02D���� 7������������������� LĠ� (HL),�
� 02D���� 7������������������� LĠ� (HL),�
� 02D���� 7������������������� LĠ� (HL),�
� 02D���� 7������������������� LĠ� (HL),�
� 02D���� 7������������������� LĠ� (HL),�
� 02D���� 7������������������� LĠ� (HL),�
� 02D���� 3� 4���������������� LĠ� (HL),N��

� 02D �� D� 7� 3������������� LĠ� (IX+INDEX),�
� 02DŠ�� D� 7� 3������������� LĠ� (IX+INDEX),�
� 02E���� D� 7� 3������������� LĠ� (IX+INDEX),�
� 02E���� D� 7� 3������������� LĠ� (IX+INDEX),�
� 02E���� D� 7� 3������������� LĠ� (IX+INDEX),�
� 02E���� D� 7� 3������������� LĠ� (IX+INDEX),�
� 02EĠ�� D� 7� 3������������� LĠ� (IX+INDEX),�
� 02F���� D� 3� 3� 4���������� LĠ� (IX+INDEX),N�


� 02F���� F� 7� 3������������� LĠ� (IY+INDEX),�
� 02F���� F� 7� 3������������� LĠ� (IY+INDEX),�
� 02F���� F� 7� 3������������� LĠ� (IY+INDEX),�
� 02FĠ�� F� 7� 3������������� LĠ� (IY+INDEX),�
� 030���� F� 7� 3������������� LĠ� (IY+INDEX),�
� 030���� F� 7� 3������������� LĠ� (IY+INDEX),�
� 030���� F� 7� 3������������� LĠ� (IY+INDEX),�
� 030���� F� 3� 3� 4���������� LĠ� (IY+INDEX),N�


� 030Ġ�� 3� 123Ơ������������ LĠ� (NNNN),A
� 031���� E� 4� 123Ơ��������� LĠ� (NNNN),B�
� 031���� E� 5� 123Ơ��������� LĠ� (NNNN),D�
� 031���� 2� 123Ơ������������ LĠ� (NNNN),H�
� 031 �� D� 2� 123Ơ��������� LĠ� (NNNN),I�
� 031Ơ�� F� 2� 123Ơ��������� LĠ� (NNNN),I�
� 032���� E� 7� 123Ơ��������� LĠ� (NNNN),S�


� 032���� 0������������������� LĠ� A,(BC�
� 032���� 1������������������� LĠ� A,(DE�
� 032���� 7Š����������������� LĠ� A,(HL�
� 032���� D� 7� 3������������� LĠ� A,(IX+INDEX�
� 032Ġ�� F� 7� 3������������� LĠ� A,(IY+INDEX�
� 033���� 3� 123Ơ������������ LĠ� A,(NNNN�
� 033���� 7Ơ����������������� LĠ� A,�
� 033���� 7������������������� LĠ� A,�
� 033���� 7������������������� LĠ� A,�
� 033���� 7������������������� LĠ� A,�
� 033���� 7 ����������������� LĠ� A,�
� 033���� 7à����������������� LĠ� A,�
� 033���� E� 5���������������� LĠ� A,�
� 033 �� 7Ġ����������������� LĠ� A,�
� 033à�� 3� 4���������������� LĠ� A,N�
� 033Š�� E� 5Ơ�������������� LĠ� A,�


� 034���� 4������������������� LĠ� B,(HL�
� 034���� D� 4� 3������������� LĠ� B,(IX+INDEX�
� 034���� F� 4� 3������������� LĠ� B,(IY+INDEX�
� 034���� 4������������������� LĠ� B,�
� 034���� 4������������������� LĠ� B,�
� 034���� 4������������������� LĠ� B,�
� 034���� 4������������������� LĠ� B,�
� 034 �� 4������������������� LĠ� B,�
� 034à�� 4������������������� LĠ� B,�
� 034Ġ�� 4������������������� LĠ� B,�
� 034Š�� 0� 4���������������� LĠ� B,N�
�
� 035���� E� 4� 123Ơ��������� LĠ� BC,(NNNN�
� 035���� 0� 123Ơ������������ LĠ� BC,NNN�


� 035���� 4Š����������������� LĠ� C,(HL�
� 035���� D� 4� 3������������� LĠ� C,(IX+INDEX�
� 035 �� F� 4� 3������������� LĠ� C,(IY+INDEX�
� 035Š�� 4Ơ����������������� LĠ� C,�
� 035Ơ�� 4������������������� LĠ� C,�
� 036���� 4������������������� LĠ� C,�
� 036���� 4������������������� LĠ� C,�
� 036���� 4 ����������������� LĠ� C,�
� 036���� 4à����������������� LĠ� C,�
� 036���� 4Ġ����������������� LĠ� C,�
� 036���� 0� 4���������������� LĠ� C,N�


� 036���� 5������������������� LĠ� D,(HL�
� 036���� D� 5� 3������������� LĠ� D,(IX+INDEX�
� 036 �� F� 5� 3������������� LĠ� D,(IY+INDEX�
� 036Š�� 5������������������� LĠ� D,�
� 036Ơ�� 5������������������� LĠ� D,�
� 037���� 5������������������� LĠ� D,�
� 037���� 5������������������� LĠ� D,�
� 037���� 5������������������� LĠ� D,�
� 037���� 5������������������� LĠ� D,�
� 037���� 5������������������� LĠ� D,�
� 037���� 1� 4���������������� LĠ� D,N�


� 037���� E� 5� 123Ơ��������� LĠ� DE,(NNNN�
� 037 �� 1� 123Ơ������������ LĠ� DE,NNN�


� 037Š�� 5Š����������������� LĠ� E,(HL�
� 037Ơ�� D� 5� 3������������� LĠ� E,(IX+INDEX�
� 038���� F� 5� 3������������� LĠ� E,(IY+INDEX�
� 038���� 5Ơ����������������� LĠ� E,�
� 038���� 5������������������� LĠ� E,�
� 038���� 5������������������� LĠ� E,�
� 038���� 5������������������� LĠ� E,�
� 038���� 5 ����������������� LĠ� E,�
� 038���� 5à����������������� LĠ� E,�
� 038 �� 5Ġ����������������� LĠ� E,�
� 038à�� 1� 4���������������� LĠ� E,N�


� 038Š�� 6������������������� LĠ� H,(HL�
� 038Ơ�� D� 6� 3������������� LĠ� H,(IX+INDEX�
� 039���� F� 6� 3������������� LĠ� H,(IY+INDEX�
� 039���� 6������������������� LĠ� H,�
� 039���� 6������������������� LĠ� H,�
� 039���� 6������������������� LĠ� H,�
� 039���� 6������������������� LĠ� H,�
� 039���� 6������������������� LĠ� H,�
� 039���� 6������������������� LĠ� H,�
� 039 �� 6������������������� LĠ� H,�
� 039à�� 2� 4���������������� LĠ� H,N�

�� 039Š�� 2� 123Ơ������������ LĠ� HL,(NNNN�
� 03A���� 2� 123Ơ������������ LĠ� HL,NNN�


� 03A���� E� 4���������������� LĠ� I,�


� 03A���� D� 2� 123Ơ��������� LĠ� IX,(NNNN�
� 03A���� D� 2� 123Ơ��������� LĠ� IX,NNN�


� 03AŠ�� F� 2� 123Ơ��������� LĠ� IY,(NNNN�
� 03B���� F� 2� 123Ơ��������� LĠ� IY,NNN�


� 03B���� 6Š����������������� LĠ� L,(HL�
� 03B���� D� 6� 3������������� LĠ� L,(IX+INDEX�
� 03B���� F� 6� 3������������� LĠ� L,(IY+INDEX�
� 03BĠ�� 6Ơ����������������� LĠ� L,�
� 03BŠ�� 6������������������� LĠ� L,�
� 03BƠ�� 6������������������� LĠ� L,�
� 03C���� 6������������������� LĠ� L,�
� 03C���� 6 ����������������� LĠ� L,�
� 03C���� 6à����������������� LĠ� L,�
� 03C���� 6Ġ����������������� LĠ� L,�
� 03C���� 2� 4���������������� LĠ� L,N�


� 03C���� E� 4Ơ�������������� LĠ� R,�


� 03C���� E� 7� 123Ơ��������� LĠ� SP,(NNNN�
� 03Cà�� F������������������� LĠ� SP,H�
� 03CĠ�� D� F���������������� LĠ� SP,I�
� 03CƠ�� F� F���������������� LĠ� SP,I�
� 03D���� 3� 123Ơ������������ LĠ� SP,NNN�


� 03D���� E� A���������������� LD�
� 03D���� E� B���������������� LDD�
� 03D���� E� A���������������� LD�
� 03D���� E� B���������������� LDI�
����������������������� 
����������������������� 
� 03Dà�� E� 4���������������� NE�


� 03DŠ�� 0������������������� NO�


� 03DƠ�� B������������������� OҠ� (HL�
� 03E���� D� B� 3������������� OҠ� (IX+INDEX�
� 03E���� F� B� 3������������� OҠ� (IY+INDEX�
� 03E���� B������������������� OҠ� �
� 03E���� B������������������� OҠ� �
� 03E���� B������������������� OҠ� �
� 03E���� B������������������� OҠ� �
� 03E���� B������������������� OҠ� �
� 03E �� B������������������� OҠ� �
� 03Eà�� B������������������� OҠ� �
� 03EĠ�� F� 4���������������� OҠ� N��

� 03EƠ�� E� B �������������� OTD�
� 03F���� E� B���������������� OTIR


� 03F���� E� 7���������������� OUԠ� (C),�
� 03F���� E� 4���������������� OUԠ� (C),�
� 03F���� E� 4���������������� OUԠ� (C),�
� 03F���� E� 5���������������� OUԠ� (C),�
� 03F �� E� 5���������������� OUԠ� (C),�
� 03FĠ�� E� 6���������������� OUԠ� (C),�
� 03FƠ�� E� 6���������������� OUԠ� (C),�
� 040���� D� 4���������������� OUԠ� (NN),�


� 040���� E� A �������������� OUT�
� 040���� E� A���������������� OUT�
����������������������� 
����������������������� 
� 040���� F������������������� POР� A�
� 040���� C������������������� POР� B�
� 040���� D������������������� POР� D�
� 040���� E������������������� POР� H�
� 040 �� D� E���������������� POР� I�
� 040Ġ�� F� E���������������� POР� I�


� 040Ơ�� F������������������� PUSȠ� A�
� 041���� C������������������� PUSȠ� B�
� 041���� D������������������� PUSȠ� D�
� 041���� E������������������� PUSȠ� H�
� 041���� D� E���������������� PUSȠ� I�
� 041���� F� E���������������� PUSȠ� I�


� 041���� C� 8���������������� REӠ� 0,(HL�
� 041���� D� C� 3� 8���������� REӠ� 0,(IX+INDEX�
� 041Ġ�� F� C� 3� 8���������� REӠ� 0,(IY+INDEX�
� 042���� C� 8���������������� REӠ� 0,�
� 042���� C� 8���������������� REӠ� 0,�
� 042���� C� 8���������������� REӠ� 0,�
� 042���� C� 8���������������� REӠ� 0,�
� 042���� C� 8���������������� REӠ� 0,�
� 042 �� C� 8���������������� REӠ� 0,�
� 042Ġ�� C� 8���������������� REӠ� 0,�


� 042Ơ�� C� 8Š�������������� REӠ� 1,(HL�
� 043���� D� C� 3� 8Š�������� REӠ� 1,(IX+INDEX�
� 043���� F� C� 3� 8Š�������� REӠ� 1,(IY+INDEX�
� 043���� C� 8Ơ�������������� REӠ� 1,�
� 043 �� C� 8���������������� REӠ� 1,�
� 043Ġ�� C� 8���������������� REӠ� 1,�
� 043Ơ�� C� 8���������������� REӠ� 1,�
� 044���� C� 8 �������������� REӠ� 1,E
� 044���� C� 8à�������������� REӠ� 1,�
� 044���� C� 8Ġ�������������� REӠ� 1,�


� 044���� C� 9���������������� REӠ� 2,(HL��� 044���� D� C� 3� 9���������� REӠ� 2,(IX+INDEX�
� 044Ġ�� F� C� 3� 9���������� REӠ� 2,(IY+INDEX�
� 045���� C� 9���������������� REӠ� 2,�
� 045���� C� 9���������������� REӠ� 2,�
� 045���� C� 9���������������� REӠ� 2,�
� 045���� C� 9���������������� REӠ� 2,�
� 045���� C� 9���������������� REӠ� 2,�
� 045 �� C� 9���������������� REӠ� 2,�
� 045Ġ�� C� 9���������������� REӠ� 2,�


� 045Ơ�� C� 9Š�������������� REӠ� 3,(HL�
� 046���� D� C� 3� 9Š�������� REӠ� 3,(IX+INDEX�
� 046���� F� C� 3� 9Š�������� REӠ� 3,(IY+INDEX�
� 046���� C� 9Ơ�������������� REӠ� 3,�
� 046 �� C� 9���������������� REӠ� 3,�
� 046Ġ�� C� 9���������������� REӠ� 3,�
� 046Ơ�� C� 9���������������� REӠ� 3,�
� 047���� C� 9 �������������� REӠ� 3,�
� 047���� C� 9à�������������� REӠ� 3,�
� 047���� C� 9Ġ�������������� REӠ� 3,�


� 047���� C� A���������������� REӠ� 4,(HL�
� 047���� D� C� 3� A���������� REӠ� 4,(IX+INDEX�
� 047Ġ�� F� C� 3� A���������� REӠ� 4,(IY+INDEX�
� 048���� C� A���������������� REӠ� 4,�
� 048���� C� A���������������� REӠ� 4,�
� 048���� C� A���������������� REӠ� 4,�
� 048���� C� A���������������� REӠ� 4,�
� 048���� C� A���������������� REӠ� 4,�
� 048 �� C� A���������������� REӠ� 4,�
� 048Ġ�� C� A���������������� REӠ� 4,�


� 048Ơ�� C� AŠ�������������� REӠ� 5,(HL�
� 049���� D� C� 3� AŠ�������� REӠ� 5,(IX+INDEX�
� 049���� F� C� 3� AŠ�������� REӠ� 5,(IY+INDEX�
� 049���� C� AƠ�������������� REӠ� 5,�
� 049 �� C� A���������������� REӠ� 5,�
� 049Ġ�� C� A���������������� REӠ� 5,�
� 049Ơ�� C� A���������������� REӠ� 5,�
� 04A���� C� A �������������� REӠ� 5,�
� 04A���� C� Aà�������������� REӠ� 5,�
� 04A���� C� AĠ�������������� REӠ� 5,�


� 04A���� C� B���������������� REӠ� 6,(HL�
� 04A���� D� C� 3� B���������� REӠ� 6,(IX+INDEX�
� 04AĠ�� F� C� 3� B���������� REӠ� 6,(IY+INDEX)
� 04B���� C� B���������������� REӠ� 6,�
� 04B���� C� B���������������� REӠ� 6,�
� 04B���� C� B���������������� REӠ� 6,�
� 04B���� C� B���������������� REӠ� 6,�
� 04B���� C� B���������������� REӠ� 6,�
� 04B �� C� B���������������� REӠ� 6,�
� 04BĠ�� C� B���������������� REӠ� 6,�


� 04BƠ�� C� BŠ�������������� REӠ� 7,(HL�
� 04C���� D� C� 3� BŠ�������� REӠ� 7,(IX+INDEX��� 04C���� F� C� 3� BŠ�������� REӠ� 7,(IY+INDEX�
� 04C���� C� BƠ�������������� REӠ� 7,�
� 04C �� C� B���������������� REӠ� 7,�
� 04CĠ�� C� B���������������� REӠ� 7,�
� 04CƠ�� C� B���������������� REӠ� 7,�
� 04D���� C� B �������������� REӠ� 7,�
� 04D���� C� Bà�������������� REӠ� 7,�
� 04D���� C� BĠ�������������� REӠ� 7,� 


� 04D���� C������������������� RE�
� 04D���� D������������������� REԠ� �
� 04D���� F������������������� REԠ� �
� 04D���� D������������������� REԠ� N�
� 04D �� C������������������� REԠ� N�
� 04Dà�� F������������������� REԠ� �
� 04DĠ�� E������������������� REԠ� P�
� 04DŠ�� E������������������� REԠ� P�
� 04DƠ�� C������������������� REԠ� �


� 04E���� E� 4Ġ�������������� RET�
� 04E���� E� 4���������������� RET�


� 04E���� C� 1���������������� R̠� (HL�
� 04E���� D� C� 3� 1���������� R̠� (IX+INDEX�
� 04E���� F� C� 3� 1���������� R̠� (IY+INDEX�
� 04EŠ�� C� 1���������������� R̠� �
� 04F���� C� 1���������������� R̠� �
� 04F���� C� 1���������������� R̠� �
� 04F���� C� 1���������������� R̠� �
� 04F���� C� 1���������������� R̠� �
� 04F���� C� 1���������������� R̠� �
� 04F���� C� 1���������������� R̠� �


� 04Fà�� 1������������������� RL�


� 04FĠ�� C� 0���������������� RLà� (HL�
� 04FƠ�� D� C� 3� 0���������� RLà� (IX+INDEX�
� 050���� F� C� 3� 0���������� RLà� (IY+INDEX)
� 050���� C� 0���������������� RLà� �
� 050���� C� 0���������������� RLà� �
� 050 �� C� 0���������������� RLà� �
� 050Ġ�� C� 0���������������� RLà� �
� 050Ơ�� C� 0���������������� RLà� �
� 051���� C� 0���������������� RLà� �
� 051���� C� 0���������������� RLà� �


� 051���� 0������������������� RLC�


� 051���� E� 6Ơ�������������� RL�


� 051���� C� 1Š�������������� RҠ� (HL�
� 051���� D� C� 3� 1Š�������� RҠ� (IX+INDEX�
� 051Š�� F� C� 3� 1Š�������� RҠ� (IY+INDEX��� 052���� C� 1Ơ�������������� RҠ� �
� 052���� C� 1���������������� RҠ� �
� 052���� C� 1���������������� RҠ� �
� 052���� C� 1���������������� RҠ� �
� 052���� C� 1 �������������� RҠ� �
� 052à�� C� 1à�������������� RҠ� �
� 052Š�� C� 1Ġ�������������� RҠ� �


� 053���� 1Ơ����������������� RR�


� 053���� C� 0Š�������������� RRà� (HL�
� 053���� D� C� 3� 0Š�������� RRà� (IX+INDEX�
� 053���� F� C� 3� 0Š�������� RRà� (IY+INDEX�
� 053 �� C� 0Ơ�������������� RRà� �
� 053Ġ�� C� 0���������������� RRà� �
� 053Ơ�� C� 0���������������� RRà� �
� 054���� C� 0���������������� RRà� �
� 054���� C� 0 �������������� RRà� �
� 054���� C� 0à�������������� RRà� �
� 054���� C� 0Ġ�������������� RRà� �


� 054���� 0Ơ����������������� RRC�


� 054���� E� 6���������������� RR�


� 054à�� C������������������� RSԠ� �
� 054Ġ�� CƠ����������������� RSԠ� 08�
� 054Š�� D������������������� RSԠ� 10�
� 054Ơ�� DƠ����������������� RSԠ� 18�
� 055���� E������������������� RSԠ� 20�
� 055���� EƠ����������������� RSԠ� 28�
� 055���� F������������������� RSԠ� 30H
� 055���� FƠ����������������� RSԠ� 38�


� 055���� 9Š����������������� SBà� A,(HL�
� 055���� D� 9� 3������������� SBà� A,(IX+INDEX�
� 055���� F� 9� 3������������� SBà� A,(IY+INDEX�
� 055 �� 9Ơ����������������� SBà� A,�
� 055à�� 9������������������� SBà� A,�
� 055Ġ�� 9������������������� SBà� A,�
� 055Š�� 9������������������� SBà� A,�
� 055Ơ�� 9 ����������������� SBà� A,�
� 056���� 9à����������������� SBà� A,�
� 056���� 9Ġ����������������� SBà� A,�
� 056���� D� 4���������������� SBà� A,N�
� 056���� E� 4���������������� SBà� HL,B�
� 056���� E� 5���������������� SBà� HL,D�
� 056���� E� 6���������������� SBà� HL,H�
� 056���� E� 7���������������� SBà� HL,S�


� 056à�� 3������������������� SC�


� 056Ġ�� C� C���������������� SEԠ� 0,(HL��� 056Ơ�� D� C� 3� C���������� SEԠ� 0,(IX+INDEX�
� 057���� F� C� 3� C���������� SEԠ� 0,(IY+INDEX�
� 057���� C� C���������������� SEԠ� 0,�
� 057���� C� C���������������� SEԠ� 0,�
� 057 �� C� C���������������� SEԠ� 0,�
� 057Ġ�� C� C���������������� SEԠ� 0,�
� 057Ơ�� C� C���������������� SEԠ� 0,�
� 058���� C� C���������������� SEԠ� 0,�
� 058���� C� C���������������� SEԠ� 0,�


� 058���� C� CŠ�������������� SEԠ� 1,(HL�
� 058���� D� C� 3� CŠ�������� SEԠ� 1,(IX+INDEX�
� 058 �� F� C� 3� CŠ�������� SEԠ� 1,(IY+INDEX�
� 058Ơ�� C� CƠ�������������� SEԠ� 1,�
� 059���� C� C���������������� SEԠ� 1,�
� 059���� C� C���������������� SEԠ� 1,�
� 059���� C� C���������������� SEԠ� 1,�
� 059���� C� C �������������� SEԠ� 1,�
� 059���� C� Cà�������������� SEԠ� 1,�
� 059 �� C� CĠ�������������� SEԠ� 1,�


� 059Ġ�� C� D���������������� SEԠ� 2,(HL�
� 059Ơ�� D� C� 3� D���������� SEԠ� 2,(IX+INDEX�
� 05A���� F� C� 3� D���������� SEԠ� 2,(IY+INDEX�
� 05A���� C� D���������������� SEԠ� 2,�
� 05A���� C� D���������������� SEԠ� 2,�
� 05A �� C� D���������������� SEԠ� 2,�
� 05AĠ�� C� D���������������� SEԠ� 2,�
� 05AƠ�� C� D���������������� SEԠ� 2,E
� 05B���� C� D���������������� SEԠ� 2,�
� 05B���� C� D���������������� SEԠ� 2,�


� 05B���� C� DŠ�������������� SEԠ� 3,(HL�
� 05B���� D� C� 3� DŠ�������� SEԠ� 3,(IX+INDEX�
� 05B �� F� C� 3� DŠ�������� SEԠ� 3,(IY+INDEX�
� 05BƠ�� C� DƠ�������������� SEԠ� 3,�
� 05C���� C� D���������������� SEԠ� 3,�
� 05C���� C� D���������������� SEԠ� 3,�
� 05C���� C� D���������������� SEԠ� 3,�
� 05C���� C� D �������������� SEԠ� 3,�
� 05C���� C� Dà�������������� SEԠ� 3,�
� 05C �� C� DĠ�������������� SEԠ� 3,�


� 05CĠ�� C� E���������������� SEԠ� 4,(HL�
� 05CƠ�� D� C� 3� E���������� SEԠ� 4,(IX+INDEX�
� 05D���� F� C� 3� E���������� SEԠ� 4,(IY+INDEX�
� 05D���� C� E���������������� SEԠ� 4,�
� 05D���� C� E���������������� SEԠ� 4,�
� 05D �� C� E���������������� SEԠ� 4,�
� 05DĠ�� C� E���������������� SEԠ� 4,�
� 05DƠ�� C� E���������������� SEԠ� 4,�
� 05E���� C� E���������������� SEԠ� 4,�
� 05E���� C� E���������������� SEԠ� 4,�


� 05E���� C� EŠ�������������� SEԠ� 5,(HL�
� 05E���� D� C� 3� EŠ�������� SEԠ� 5,(IX+INDEX��� 05E �� F� C� 3� EŠ�������� SEԠ� 5,(IY+INDEX�
� 05EƠ�� C� EƠ�������������� SEԠ� 5,�
� 05F���� C� E���������������� SEԠ� 5,�
� 05F���� C� E���������������� SEԠ� 5,�
� 05F���� C� E���������������� SEԠ� 5,�
� 05F���� C� E �������������� SEԠ� 5,�
� 05F���� C� Eà�������������� SEԠ� 5,�
� 05F �� C� EĠ�������������� SEԠ� 5,�


� 05FĠ�� C� F���������������� SEԠ� 6,(HL�
� 05FƠ�� D� C� 3� F���������� SEԠ� 6,(IX+INDEX�
� 060���� F� C� 3� F���������� SEԠ� 6,(IY+INDEX�
� 060���� C� F���������������� SEԠ� 6,�
� 060���� C� F���������������� SEԠ� 6,�
� 060 �� C� F���������������� SEԠ� 6,�
� 060Ġ�� C� F���������������� SEԠ� 6,�
� 060Ơ�� C� F���������������� SEԠ� 6,�
� 061���� C� F���������������� SEԠ� 6,�
� 061���� C� F���������������� SEԠ� 6,�


� 061���� C� FŠ�������������� SEԠ� 7,(HL�
� 061���� D� C� 3� FŠ�������� SEԠ� 7,(IX+INDEX�
� 061 �� F� C� 3� FŠ�������� SEԠ� 7,(IY+INDEX)
� 061Ơ�� C� FƠ�������������� SEԠ� 7,�
� 062���� C� F���������������� SEԠ� 7,�
� 062���� C� F���������������� SEԠ� 7,�
� 062���� C� F���������������� SEԠ� 7,�
� 062���� C� F �������������� SEԠ� 7,�
� 062���� C� Fà�������������� SEԠ� 7,�
� 062 �� C� FĠ�������������� SEԠ� 7,�


� 062Ġ�� C� 2���������������� SL��� (HL�
� 062Ơ�� D� C� 3� 2���������� SL��� (IX+INDEX�
� 063���� F� C� 3� 2���������� SL��� (IY+INDEX�
� 063���� C� 2���������������� SL��� �
� 063���� C� 2���������������� SL��� �
� 063 �� C� 2���������������� SL��� �
� 063Ġ�� C� 2���������������� SL��� �
� 063Ơ�� C� 2���������������� SL��� �
� 064���� C� 2���������������� SL��� �
� 064���� C� 2���������������� SL��� �


� 064���� C� 2Š�������������� SR��� (HL�
� 064���� D� C� 3� 2Š�������� SR��� (IX+INDEX�
� 064 �� F� C� 3� 2Š�������� SR��� (IY+INDEX�
� 064Ơ�� C� 2Ơ�������������� SR��� �
� 065���� C� 2���������������� SR��� �
� 065���� C� 2���������������� SR��� �
� 065���� C� 2���������������� SR��� �
� 065���� C� 2 �������������� SR��� �
� 065���� C� 2à�������������� SR��� �
� 065 �� C� 2Ġ�������������� SR��� �


� 065Ġ�� C� 3Š�������������� SR̠� (HL�
� 065Ơ�� D� C� 3� 3Š�������� SR̠� (IX+INDEX�
� 066���� F� C� 3� 3Š�������� SR̠� (IY+INDEX��� 066���� C� 3Ơ�������������� SR̠� �
� 066���� C� 3���������������� SR̠� �
� 066 �� C� 3���������������� SR̠� �
� 066Ġ�� C� 3���������������� SR̠� �
� 066Ơ�� C� 3 �������������� SR̠� �
� 067���� C� 3à�������������� SR̠� �
� 067���� C� 3Ġ�������������� SR̠� �


� 067���� 9������������������� SU � (HL�
� 067���� D� 9� 3������������� SU � (IX+INDEX�
� 067���� F� 9� 3������������� SU � (IY+INDEX�
� 067à�� 9������������������� SU � �
� 067Ġ�� 9������������������� SU � �
� 067Š�� 9������������������� SU � �
� 067Ơ�� 9������������������� SU � �
� 068���� 9������������������� SU � �
� 068���� 9������������������� SU � �
� 068���� 9������������������� SU � �
� 068���� D� 4���������������� SU � N�


� 068���� AŠ����������������� XOҠ� (HL�
� 068���� D� A� 3������������� XOҠ� (IX+INDEX�
� 068���� F� A� 3������������� XOҠ� (IY+INDEX�
� 068à�� AƠ����������������� XOҠ� �
� 068Ġ�� A������������������� XOҠ� �
� 068Š�� A������������������� XOҠ� �
� 068Ơ�� A������������������� XOҠ� �
� 069���� A ����������������� XOҠ� �
� 069���� Aà����������������� XOҠ� �
� 069���� AĠ����������������� XOҠ� �
� 069���� E� 4���������������� XOҠ� N�
.pa�.tc APPENDIX C - Hitachi HD64180 Instructions .................. #
                 APPENDIX C - Hitachi HD64180 Instructions

I� �additio� �t� �th� 6� Z8� mnemonic� an� th� � �pseud�-op� �supporte� �b� �
vanill� Z8E� th� Z18� versio� als� support� th� 1� Hitach� HD6418�-specifi� �
mnemonics� 

Th� �Z8� �mnemonic� ar� al� eithe� 2� � o� � character� lon� �whil� �th� �� �
pseud�-op� ar� eithe� � o� � character� long� Th� Hitach� �HD6418�-specifi� �
mnemonic� d� no� quit� fi� thi� mol� i� tha� thre� o� the� (onl� th� Japan�
es� kno� why� ar� � character� long.

Afte� �carefu� �deliberation� �i� �wa� decide� �t� �implemen� �thes� �thre� �
"rogues� a� � characte� mnemonic� fo� 18E� Th� followin� tabl� show� al� 1� �
Hitach� HD6418�-specifi� mnemonic� an� thei� 18� equivalents� 

                 HITACHI�| �Z8E �| �USAGE�
              -----------+-------+------------------------------�
                  IN0 ���| �IN0 �| �IN0 g,(m)�
                  OUT0 ��| �OUT0 | �OUT0 (m),g�
                  TST ���| �TST �| �TST g or TST (HL) or TST m�
                  SLP ���| �SLP �| �SLP�
                  MLT ���| �MLT �| �MLT ww�
                  OTIM ��| �OTIM | �OTIM�
                  OTDM ��| �OTDM | �OTDM�
                  OTIMR �| �OIMR | �OIMR �����\ ��5 character�
                  OTDMR �| �ODMR | �ODMR ������> �mnemonics�
                  TSTIO �| �TSIO | �TSIO m ���/ ��changed to 4

              Key to parameter symbols in USAGE column:

                  g ����register A, B, C, D, E, � or �
                 ww ����register pair BC, DE, HL or SP
                (m) ����8 bit I/O port address
                  m ����8 bit immediate data

Thre� �tin� macro� ca� accoun� fo� th� truncate�  mnemonic� i� yo� �wan��t� �
assembl� Z18� sourc� file� generate� fro� � Z8� disassembly.

        oim�    macr�        odm�    macr�        tsi�    macr�   m
                otim�                otdm�                tsti�   m
                emd�                 end�                 endm
.pa�.tc APPENDI� � � SYSTE� MEMOR� MAP ............................. #
                      APPENDI� D � SYSTE� MEMOR� MAP

�������������� |||||||||||||||||||||||||||||||||||����� FFF�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |������ CP/� (BDO� an� BIOS������ |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |||||||||||||||||||||||||||||||||||�
�������������� |�������������������������������� |�
�������������� |���� Z8� (Appro� 9.� kBytes)� �� |�
�������������� |�������������������������������� |�
�������������� |||||||||||||||||||||||||||||||||||�
�������������� |�������������������������������� |�
�������������� |����� OPTIONA� SYMBO� TABLŠ���� |�
�������������� |�������������������������������� |�
�������������� |||||||||||||||||||||||||||||||||||�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |��������������� 
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |�������������� TP��������������� |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |�������������������������������� |�
�������������� |||||||||||||||||||||||||||||||||||�� --� 010�
�������������� |�������������������������������� |�
�������������� |������ PAG� ZERϠ RESERVEĠ����� |� 
�������������� |�������������������������������� |� 
�������������� |||||||||||||||||||||||||||||||||||�� __� 000�

Siz� o� residen� Z8� debu� code:

Th� �residen� �siz� o� Z8� depend� o� th� configuration�  Th� �size� �show� �
her� �wer� �obtaine� �fo� a� ANS� console�  Wher� �� �secon� �termina� �wa� �
configure� the� i� wa� eithe� � secon� ANS� scree� o� a� ADM3A.

     Z8� instructions� singl� scree�         9.2� kBytes
     Z8� instructions� dual screen�          9.�� kBytes
     HD64180/Z180� singl� scree�             9.�  kBytes
     HD64180/Z180� dual scree�s              9.�  kBytes

Fo� comparison� ZSI� occupie� 8.� kByte� an� SI� occupie� 6.7� kBytes�  Fo� �
th� extr� .7� kByt� ove� ZSI� yo� ge� th� ful� scree� animate� display� th� �
use of a second display to separate debug output from program output, and�� �
pretty good disassembler which can create a usable source file.  And for a� �
extr� .2� kByte� yo� ca� d� al� o� th� abov� o� � Z180/HD64180.

Non� o� th� number� quote� abov� include� an� spac� occupie� b� symbol� �s� �
th� compariso� i� fair.
.pa�.tc APPENDIX E - COMMAND SUMMARY ............................... #
                       APPENDI� � � COMMAN� SUMMAR�

CMĠ������� Descriptio������������������� Argument�

 �������� Inlin� Assembl������������� StartAdd� 
  ������ Se� Breakpoin��������������� Addr1[,Pas� Countݠ [Addr2..AddrN�
 à������ Clea� Breakpoin������������� Addr��������������� [Addr2..AddrN�
 Ġ������ Dum� Memor������������������ [StartAddrݠ������� [End/Count� 
 Š������ Examin� Memor��������������� StartAdd�
 Ơ������ Fin䠠���������������������� StartAdd򠠠������� MatchDat�
 Ǡ������ G������������������������ ExecutionAdd�
 Ƞ������ Displa� Symbo� Tabl堠������ [FirstSymbol�
 ɠ������ Initializ� comman� lin堠��� [string1..stringN�
 ʠ������ Ful� Screen/Animate� Debu砠 [/� [*� [Addrݠ���� [Timeout�
 ˠ������ Se� Memor� Windo������������ StartAdd򠠠������� [Size�
 ̠������ Loa� Fil堠����������������� FileNam堠��������� [,Loa� Address�
 ͠������ Mov� Memor������������������ SourceStar���� SourceEn䠠� DestStar�
 Π������ Outpu� t� Por� N� Pre-Rea䠠 [(� PortAdd� [)�
 Ϡ������ Outpu� Curren� Breakpoint�
 Р������ Exam/Modif� PS� (Fla� Reg�
 Ѡ������ Quer� I/� Por��������������� [(� PortAdd� [)�
 Ҡ������ Examine/Modif� Register󠠠� RegSpecifie�
 Ӡ������ Single-Ste𠠠�������������� [/ݠ [Count�
��        Selec� debu� termina�        A o� C
 ՠ������ Writ� Symbo� Tabl� T� Dis렠 FileNam堠� 
 ֠������ Verif� Memor���������������� SourceStar����� SourceEn䠠 DestStar�
 נ������ Writ� t� Dis렠������������� FileNam堠����� [StartAddr� [EndAddr� 
 ؠ������ Examin� Machin� Stat�
 ٠������ Fil� Memor������������������ FromAdd򠠠���� ToAdd򠠠��� Dat�
 ڠ������ Disassembl堠��������������� StartAdd򠠠��� End/Coun���� FileNam�
 �        Evaluat� expressio�          Expression
 �        Chang� use� numbe�           UserNumber

[ݠ������ Denote� Optiona� Argumen�
[/ݠ����� D� No� Trac� Subroutin�
[*ݠ����� D� No� Trac� BDO� Cal� 
[(� [)ݠ� I/� Por� Monito� Mod�



�������������� Z8Š� Copyrigh� (c� 198�� AERO-SOF�
