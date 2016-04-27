//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - логистика
// Макроопределения обработчика событий
//******************************************************************************

!!!  ФАЙЛ НЕ РЕДАКТИРУЕТСЯ
// файл содержит исключительно вызовы панельных событий родителя
// нужен для того, чтобы сократить код наследника


#ifndef _BaseSoprDoc_inc_
#define _BaseSoprDoc_inc_

//--------------------------------------------------------------------------------
#declare HEAbort(Command)
if (inherited :: HandleEvent(#Command) = heAbort)
{
  Abort; Exit
}
#end


//--------------------------------------------------------------------------------
#declare HEStop(Command)
if (inherited :: HandleEvent(#Command) = heStop)
{
  Stop; Exit
}
#end


//--------------------------------------------------------------------------------
#declare HEAbortStop(Command)
{
  var tRes: word;

  tRes := inherited :: HandleEvent(#Command);

  case tRes of
    heAbort: { Abort; Stop; Exit }
    heStop : { Stop; Exit }
  end;
}
#end

#end // _BaseSoprDoc_inc_