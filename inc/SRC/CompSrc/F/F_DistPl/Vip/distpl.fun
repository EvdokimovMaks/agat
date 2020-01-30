function _GetDocNames(var hMarker: longint) : string;
var TiDk : longint;
{
  case GetMarkerCount(hMarker) of
    0:{
        _GetDocNames := 'все документы';
      }
    1:{
        if GetMarker(hMarker, 0, TiDk)
          _GetDocNames := GetTiDkGalName(TiDk);
        else
          _GetDocNames := 'ошибка при работе с маркером';
      }
    else
      _GetDocNames := 'по выбранным типам документов('+string(GetMarkerCount(hMarker))+')'
  end;
}