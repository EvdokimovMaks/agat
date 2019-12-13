#ifndef _MailConst_inc_INCLUDED_
#define _MailConst_inc_INCLUDED_

const
  ttEmailTemplate = 1; // список email для шаблона
  ttEmailQUEUE    = 2; // список email для готовой рассылки (для повторной рассылки)

  ttMemoTemplate     = 1; // тело письма для шаблона
  ttMemoQUEUE        = 2; // тело письма для готовой рассылки (для повторной рассылки)
  ttMemoQUEUEAttach  = 3; // описание ошибки при отправке
  ttMemoHistoryError = 5; // описание ошибки при отправке

  ccFictMail     = 0000800000000000h;
  ccFictTemplate = 0000800000000000h;

  ttMailQUEUEBeg = 1; // рассылка начало отправки
  ttMailQUEUENeedRepeat = 2; // рассылка флаг повторной отправки
  ttMailQUEUEFinishWithError = 5; // рассылка завершено отправка с  ошибкой
  ttMailQUEUEFinish = 6; // рассылка завершено успешно

  ttMailQUEUESetupObjectWithTemplate = 10; // это не рассылка а настройка на сущности

  tsMailQUEUEBeg = 'Отправка начата'; // рассылка начало отправки
  tsMailQUEUENeedRepeat = 'Требуется повторная отправка '; // рассылка флаг повторной отправки
  tsMailQUEUEFinishWithError = 'Завершена с ошибками'; // рассылка завершено отправка с  ошибкой
  tsMailQUEUEFinish = 'Завершена'; // рассылка завершено успешно

  ttMailHistroySendFinish          = 1; // история успешно
  ttMailHistroySendFinishWithError = 3; // история с ошибкой
  tsMailHistroySendFinish = 'Отправка завершена'; // рассылка начало отправки
  tsMailHistroySendFinishWithError = 'Завершена с ошибками'; // рассылка завершено отправка с  ошибкой
end;

#endif
