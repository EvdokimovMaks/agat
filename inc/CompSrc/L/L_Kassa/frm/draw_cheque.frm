#doc
Œï£ª¨© ç¥ª
#end
.set name = 'draw_cheque'
.NameInList ' §®¢ ï ä®à¬ '
.hide
.fields

!.{
 direction : string
 org       : string
 dt        : date
 section   : string
 cheqnum   : integer

!.{
 barcode     : string
 mcname      : string
 kontr       : string
 cost        : double
 cnt         : double
 summ        : double
 section_Tov : string
 usenka      : word
!.}

 itog:double
!.}

.endfields

.{
^
^
^
^
^
.{
^
^
^
^
^
^
^
^
.}
^
.}

.endform

/*.linkform 'draw_cheque1' prototype is 'draw_cheque'
.nameinlist '1. Œï£ª¨© ç¥ª'
.fields

 direction
 org
 section
 dt
 cheqnum

 mcname
 cost
 cnt
 summ
 kontr

 itog

.endfields
.{
                      ^
          ‹€—…›‰ —…Š „…‰‘’‚ˆ’…‹… 1 ‘“’Šˆ
  ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                Œˆˆ‘’‘’‚ ’ƒ‚‹ˆ 
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  Œ £ §¨­ ü    ‘…Š–ˆŸ @@@@@@@@@@@@@@@@      @@@@@@@@@@
  ’®¢ à­ë© ç¥ª @@@@@@                     Š áá®¢ë© ç¥ª
  ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄ
      €ˆŒ…‚€ˆ…    ³    –…€   ³ Š-‚ ³    ‘“ŒŒ€
  ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄ
.{
  @@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&& &&&&&& &&&&&&&&&&&&
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

  ˆ’ƒ ‘“ŒŒ€: @@@@@@@@@@@@@@@

  ®¤¯¨áì ____________

  ’‚€ ‘Œ’…  ®¤¯¨áì _____________

  - - - - - - - - - - - - - - - - - - - - - - - - - - -
.}
.endform
*/