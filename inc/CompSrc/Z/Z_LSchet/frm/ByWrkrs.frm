/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ����｀皚�� �����                                          �
 � �ム瓱�        : 5.70                                                      �
 � �癶モ痰▲��覃 : ��爭遞 �����┤ ����罐※�                                  �
 � ��Л�腑�┘    : �砒モ �� 甌↑メ皋皀�鍖                                    �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�

*/
#doc
�砒モ �� 甌↑メ皋皀�鍖
#end
.FORM 'ByWorkerListForm'
.HIDE
.FIELDS
  CurrentDate
  CurrentTime
.ENDFIELDS
^ ^
.if ByWorkerListPortrait
.{
.FIELDS
  ��｀皚┴1
  ��．�讚覃_���ム1
  ��む�Гカキ┘1
  ���Ν�痰�1
.ENDFIELDS
^
.{
^ ^ ^
.}
.}
.ELSE
.{
.FIELDS
  ��｀皚┴2
  ��．�讚覃_���ム2
  ��む�Гカキ┘2
  ���Ν�痰�2
.ENDFIELDS
^
堕陳陳陳陳陳陳�.{.?ClockNumbers1;堕陳陳陳陳陳陳陳陳陳陳.}�
崖���.���ム     .{.?ClockNumbers2;�@@@@@@@@@@           .}�
団陳陳陳陳陳陳�.{.?ClockNumbers3;田陳陳陳陳陳陳陳陳陳陳.}�
���む�Гカキ┘ .{.?Departments1;�@@@@@@@@@@@@@@@@@@@@ .}�
団陳陳陳陳陳陳�.{.?Departments2;田陳陳陳陳陳陳陳陳陳陳.}�
����Ν�痰�     .{.?Posts1;�@@@@@@@@@@@@@@@@@@@@ .}�
祖陳陳陳陳陳陳�.{.?Posts2;祖陳陳陳陳陳陳陳陳陳陳.}�
.}
.END
.ENDFORM

!-------------------------------------------------------------------------------
.LINKFORM 'ByWorkerListLinkForm' PROTOTYPE IS 'ByWorkerListForm'
.NAMEINLIST '�砒モ �� 甌↑メ皋皀�鍖'
.[H OVERWRITE
.FIELDS
  CurrentDate
  CurrentTime
.ENDFIELDS
^ ^
.]H

                            ������� �� ���������������

.if ByWorkerListPortrait
.{
.FIELDS
  ��｀皚┴1
  ��．�讚覃_���ム1
  ��む�Гカキ┘1
  ���Ν�痰�1
.ENDFIELDS
��^��
敖陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳朕
������. ���.�� �����む�Гカキ┘       ��������Ν�痰�           ���
団陳陳陳陳津陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳調
.{
�@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�
.}
青陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳潰


.}
.ELSE
.{
.FIELDS
  ��｀皚┴2
  ��．�讚覃_���ム2
  ��む�Гカキ┘2
  ���Ν�痰�2
.ENDFIELDS
��^��
敖陳陳陳陳陳陳�.{.?ClockNumbers1;堕陳陳陳陳陳陳陳陳陳陳陳陳�.}�
������.���ム��     .{.?ClockNumbers2;�@@@@@@@@@@                .}�
団陳陳陳陳陳陳�.{.?ClockNumbers3;田陳陳陳陳陳陳陳陳陳陳陳陳�.}�
�����む�Гカキ┘�� .{.?Departments1;�@@@@@@@@@@@@@@@@@@@@@@@@@@.}�
団陳陳陳陳陳陳�.{.?Departments2;田陳陳陳陳陳陳陳陳陳陳陳陳�.}�
������Ν�痰���     .{.?Posts1;�@@@@@@@@@@@@@@@@@@@@@@@@@@.}�
青陳陳陳陳陳陳�.{.?Posts2;祖陳陳陳陳陳陳陳陳陳陳陳陳�.}�


.}
.END
.ENDFORM