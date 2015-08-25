//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Управление бюджетом"
// Интерфейс редактирования : "Настройка параметров работы с агрегатами"
//------------------------------------------------------------------------------

// константы параметров запуска интерфейса
const
  cgiEditFpAgrSet_ParamRule = 0;
  cgiEditFpAgrSet_TFormRule = 1;
  cgiEditFpAgrSet_VCubeRule = 2;
end; // const

// константы режимов распределения агрегата
const
  lc_AgrRaspMode_AgrToOther      = 0;  // 'А - на "прочие", П - равномерно'               
  lc_AgrRaspMode_AgrByNewOld     = 1;  // 'А, П - пропорционально прежнему'                           
  lc_AgrRaspMode_AgrByBaseCoeff  = 2;  // 'А - согласно весам другого агрегата'           
  lc_AgrRaspMode_AgrByUserCoeff  = 3;  // 'А - согласно заданным весам'                   
  lc_AgrRaspMode_OtherByNewOld   = 4;  // 'А - "прочие" согласно текущему уровню аналитик'
  lc_AgrRaspMode_OtherUserCoeff  = 5;  // 'А - "прочие" согласно заданным весам'          
                                                                                          

  lc_AgrRaspName_AgrToOther      = 'А - на "прочие", П - равномерно'               ;
  lc_AgrRaspName_AgrByNewOld     = 'А, П - пропорционально прежнему'               ;
  lc_AgrRaspName_AgrByBaseCoeff  = 'А - согласно весам другого агрегата'           ;
  lc_AgrRaspName_AgrByUserCoeff  = 'А - согласно заданным весам'                   ;
  lc_AgrRaspName_OtherByNewOld   = 'А - "прочие" согласно текущему уровню аналитик';
  lc_AgrRaspName_OtherUserCoeff  = 'А - "прочие" согласно заданным весам'          ;
end; // const

// константы режимов распределения агрегата по иерархии
const
  lc_HierRaspMode_AgrToFirst      = 0;  // 'На первый подчиненный'    
  lc_HierRaspMode_AgrByNewOld     = 1;  // 'Пропорционально прежнему' 
  lc_HierRaspMode_AgrByEqual      = 2;  // 'Равномерно по подчиненным'
                                                                                          
  lc_HierRaspName_AgrToFirst      =        'На первый подчиненный'     ;
  lc_HierRaspName_AgrByNewOld     =        'Пропорционально прежнему'  ;
  lc_HierRaspName_AgrByEqual      =        'Равномерно по подчиненным' ;


  lc_HierRaspMode_LeafAsLeaf : word   = word(-1);
  lc_HierRaspName_LeafAsLeaf : string = 'не распределять, т.к. это "лист"';

end; // const

