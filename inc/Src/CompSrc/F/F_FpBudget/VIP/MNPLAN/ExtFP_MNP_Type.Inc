//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ����䥩� ����������⢨� � ���㫥� "��ࠢ����� ��⮬"
//------------------------------------------------------------------------------

#ifndef __FpBudgetToMnPlan_Type_Included__
#define __FpBudgetToMnPlan_Type_Included__

#ifdef  ComponentVersion
#component "F_FpBudget"
#endif//ComponentVersion

// ������� "��� ������ �㭪樨/��楤���"
#undef   mMNPFP_AddRetInfo 
#declare mMNPFP_AddRetInfo(_varPrefix,varType) 
  #(_varPrefix)Value1   : #(varType);
  #(_varPrefix)Value2   : #(varType);
  #(_varPrefix)Value3   : #(varType);
  #(_varPrefix)Value4   : #(varType);
  #(_varPrefix)Value5   : #(varType);
  #(_varPrefix)Value6   : #(varType);
  #(_varPrefix)Value7   : #(varType);
  #(_varPrefix)Value8   : #(varType);
  #(_varPrefix)Value9   : #(varType);
  #(_varPrefix)Value10  : #(varType);
#end//   mMNPFP_AddRetInfo 

Type TReturnInfo = Record
  Code         : Word;               // ��� ������
  Name         : String;             // ������������ ���� ������
  #mMNPFP_AddRetInfo(w,   Word)      // ���७�� ⨯� Word
  #mMNPFP_AddRetInfo(li,  LongInt)   // ���७�� ⨯� LongInt
  #mMNPFP_AddRetInfo(dbl, Double)    // ���७�� ⨯� Double
  #mMNPFP_AddRetInfo(d,   Date)      // ���७�� ⨯� Date
  #mMNPFP_AddRetInfo(s,   String)    // ���७�� ⨯� String
  #mMNPFP_AddRetInfo(c,   Comp)      // ���७�� ⨯� Comp
End;
#undef   mMNPFP_AddRetInfo 

#endif //__FpBudgetToMnPlan_Type_Included__ 

