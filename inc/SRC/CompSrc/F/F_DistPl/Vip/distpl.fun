function _GetDocNames(var hMarker: longint) : string;
var TiDk : longint;
{
  case GetMarkerCount(hMarker) of
    0:{
        _GetDocNames := '�� ���㬥���';
      }
    1:{
        if GetMarker(hMarker, 0, TiDk)
          _GetDocNames := GetTiDkGalName(TiDk);
        else
          _GetDocNames := '�訡�� �� ࠡ�� � ��થ஬';
      }
    else
      _GetDocNames := '�� ��࠭�� ⨯�� ���㬥�⮢('+string(GetMarkerCount(hMarker))+')'
  end;
}