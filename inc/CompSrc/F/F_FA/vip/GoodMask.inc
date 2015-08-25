  // GoodMaskName
  if (isValid(tnOtMasks),
   if (OtMasks.isLeaf,
    if (OtMasks.MaskSwitch = 0 , 'In: ',
    if (OtMasks.MaskSwitch = 1 , 'Out: ',
    if (OtMasks.MaskSwitch = 2 , 'PAT: ', ''))),''),'') + if(OtMasks.InOperation = 1, 'K: ', '') + OtMasks.MaskName,
  // GoodMaskID
  if (isValid(tnOtMasks),
    if (OtMasks.isLeaf,OtMasks.MaskID,''),''),
