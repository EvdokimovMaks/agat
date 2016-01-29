#declare ConvertAttr(sAttrName,Tbl,Fld,Type,ZeroVal)
  pcAttrNam := ExtAttr_ID(co#Tbl, #sAttrName);

  if ( pcAttrNam <> 0 )
    {
      lCount := 0;

      _Loop AttrVal where (( pcAttrNam == AttrVal.cAttrNam ))
        lCount++;

      StartNewVisual(vtIndicatorVisual, vfTimer, 'Конвертация значений внешнего атрибута'#13#sAttrName, lCount);

      _Loop AttrVal where (( pcAttrNam == AttrVal.cAttrNam ))
        {
          NextVisual;

          if ( GetFirst #Tbl where (( AttrVal.cRec == #Tbl.nRec )) = tsOk )
            if ( #Tbl.#Fld = #ZeroVal )
              update current #Tbl set #Tbl.#Fld := AttrVal.v#Type;
        }

      oSync91_810.DelAttr(co#Tbl, #sAttrName, ExtAttr_Type(co#Tbl, #sAttrName));

      StopVisual('', 0);
    }
#end

#declare ConvertWordAttr(sAttrName,Tbl,Fld)
  pcAttrNam := ExtAttr_ID(co#Tbl, #sAttrName);

  if ( pcAttrNam <> 0 )
    {
      lCount := 0;

      _Loop AttrVal where (( pcAttrNam == AttrVal.cAttrNam ))
        lCount++;

      StartNewVisual(vtIndicatorVisual, vfTimer, 'Конвертация значений внешнего атрибута'#13#sAttrName, lCount);

      _Loop AttrVal where (( pcAttrNam == AttrVal.cAttrNam ))
        {
          NextVisual;

          if ( GetFirst #Tbl where (( AttrVal.cRec == #Tbl.nRec )) = tsOk )
            if ( #Tbl.#Fld = 0 )
              update current #Tbl set #Tbl.#Fld := word(AttrVal.vDouble);
        }

      oSync91_810.DelAttr(co#Tbl, #sAttrName, ExtAttr_Type(co#Tbl, #sAttrName));

      StopVisual('', 0);
    }
#end

#declare ConvertKatOrgAttr(sAttrName,Fld)

  pcAttrNam := ExtAttr_ID(coKatOrg, #sAttrName);

  if ( pcAttrNam <> 0 )
    {
      lCount := 0;

      _Loop AttrVal where (( pcAttrNam == AttrVal.cAttrNam ))
        lCount++;

      StartNewVisual(vtIndicatorVisual, vfTimer, 'Конвертация значений внешнего атрибута'#13#sAttrName, lCount);

      _Loop AttrVal where (( pcAttrNam == AttrVal.cAttrNam ))
        {
          NextVisual;

          if ( GetFirst KatOrg where (( AttrVal.cRec == KatOrg.nRec )) = tsOk )
            if ( KatOrg.#Fld = 0 )
              if ( AttrVal.vString <> '' )
                update current KatOrg set KatOrg.#Fld := comp(AttrVal.vString);
              else
                update current KatOrg set KatOrg.#Fld := AttrVal.vComp;
        }

      oSync91_810.DelAttr(coKatOrg, #sAttrName, ExtAttr_Type(coKatOrg, #sAttrName));

      StopVisual('', 0);
    }
#end
