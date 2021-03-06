//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪�
// ���ம�।������ ��� ��������� ��������� (��ࠨ��)
//******************************************************************************

#ifNdef __NNMACROS_INC
#define __NNMACROS_INC

//******************************************************************************

#declare getFast(Table_)
GetFirst FastFirstRow #Table_ = tsOk
#end

//******************************************************************************

#declare getFast_NRec(Table_, NRec_)
GetFirst FastFirstRow #Table_ where (( #nRec_ == #Table_.NRec )) = tsOk
#end

//******************************************************************************

#declare getFastWhere(Table_, where_)
GetFirst FastFirstRow #Table_ where (( #where_ )) = tsOk
#end

//******************************************************************************

#declare IsClosedPeriod(dReg, bMes = TRUE)
  if ( NOT boGetTune('Nalog.Ukr.CloseBook')
     , FALSE
     , if ( dGetTune('Dat_M_Ot') <= #dReg
          , FALSE
          , if ( #bMes
               , Message('����� ��ਮ� ������.'#13'��� ����饭� �������� ��� ���㬥��.'#13+
                         GetTuneName('Nalog.Ukr.CloseBook')) >= 0
               , TRUE
               )
          )
  )
#end

//******************************************************************************

#end
