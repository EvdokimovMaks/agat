#component "C_Tune"

// ���� ⠡��� ��� ����� ����䥩ᮢ

  Table Struct TXUsers (
       nRec       : comp,
       userOffice : word,
       FilialNo   : word,
       Obj        : LongInt,
       cUser      : comp,
       cOffice    : comp,
       TypeUser   : word,
       isPick     : word,
       cNode      : comp,
       Flag       : word,
       DesGr      : string [5],
       LoginName  : string[48],
       FullName   : string[50],
       cPerson    : comp,
       cDEPARTMENT: comp,
       cGALDEP    : comp
       )
    With index (
      TXUsers00 = nRec (Unique,Surrogate),
      TXUsers01 = cUser+userOffice,
      TXUsers02 = TypeUser+userOffice,

      TXUsers03 = userOffice+LoginName,   // ��� 䨫��஢
      TXUsers04 = Flag+LoginName,
      TXUsers05 = userOffice+Flag+LoginName,
      TXUsers06 = cNode+userOffice+LoginName,
      TXUsers07 = cNode+Flag+LoginName,
      TXUsers08 = cNode+userOffice+Flag+LoginName,

      TXUsers09 = cNode+cUser,
      TXUsers10 = cNode+LoginName,
      TXUsers11 = cNode+obj+LoginName,

      TXUsers12 = LoginName+Obj,
      TXUsers13 = FullName+Obj,
      TXUsers14 = Obj+cUser,
      TXUsers15 = DesGr+LoginName,
      TXUsers16 = TypeUser+FilialNo
      );


// ������ 䨫����� � ����ࠬ�
  Table Struct mFilials
     (
       atl_nrec : comp,
       FilialNo : word          "����� 䨫����" ,
       cFilial  : comp          "��뫪� �� ������騩 䨫���",
       cOrg     : Comp          "��뫪� �� ��⠫�� ����ࠣ��⮢",
       Name     : String[80]    "�������� 䨫����"
     )

   with index
     (
       mFilials0 = atl_Nrec,
       mFilials1 = cFilial + atl_Nrec,
       mFilials2 = cOrg,
       mFilials3 = FilialNo
     );
