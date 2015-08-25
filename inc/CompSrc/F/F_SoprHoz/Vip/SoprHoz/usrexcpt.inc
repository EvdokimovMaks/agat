/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ  งญ ็ฅญจฅ    : Used defined exceptions.                                  บ
 บ โขฅโแโขฅญญ๋ฉ :  ซฅฉชฎ €ซฅชแฅฉ ‘ฅเฃฅฅขจ็                                 บ
 บ  เ ฌฅโเ๋     : ญฅโ                                                       บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#ifNdef _usrexcpt_inc_
#define _usrexcpt_inc_

 exception ExUserDef;
  exception ExTableNotFound(ExUserDef);
  exception ExUserTableNotFound(ExUserDef);
  exception ExSysTableNotFound(ExUserDef);
  exception ExUserEscape(ExUserDef);
  exception ExInterfaceNotFound(ExUserDef);

#endif //_usrexcpt_inc_