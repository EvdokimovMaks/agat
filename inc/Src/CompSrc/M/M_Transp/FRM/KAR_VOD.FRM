/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����࠭ᯮ��                                             �
 � �����        : 5.00                                                      �
 � �����祭��    : ����⥪� ����⥫��                                       �
 � �⢥��⢥��� : ���� ��⠫�� ��堩�����                                 �
 ���������������������������������������������������������������������������ͼ
*/
.set name='Kar_Vod'
.hide
!.p 60
.fields
 Podraz  Data_Now
 KolName0
 KolName1
 KolName2
 KolName3
 Tabn Fio Sosto
 d1 dw1 d2 dw2 d3 dw3 d4 dw4 d5 dw5 d6 dw6 d7 dw7 d8 dw8 d9 dw9 d10 dw10 d11 dw11 d12 dw12 d13 dw13 d14 dw14 d15 dw15
 d16 dw16 d17 dw17 d18 dw18 d19 dw19 d20 dw20 d21 dw21 d22 dw22 d23 dw23 d24 dw24 d25 dw25 d26 dw26
 d27  dw27 d28  dw28  d29 dw29 d30 dw30 d31 dw31
 Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
 StagVd NomUdov
 All_time PlanAll_time Razn_Time Higth_Time Low_Time Holiday_time KalendDn
 Kol_name
.endfields
.{
^ ^
 .{.?stColumnNameVod0;^ .}
 .{.?stColumnNameVod1;^ .}
 .{.?stColumnNameVod2;^ .}
 .{.?stColumnNameVod3;^ .}
---------------------------------
.{
^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ .{.?stColumnDataVod; ^.}
.}
.}
.endform
.linkform 'Kar_Vod_01' prototype is 'Kar_Vod'
.NameInList '����⥪� ����⥫��'
.Group 'Kar_VodGr1'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
 StagVd NomUdov
.endfields
^
.{
                           ����⥪� ����⥫��
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
������������������������������������������������������������������������������������������������������������������Ŀ
� ���.���.�         � � �         �����᳀�B�C�D�E�F�BE�CE�DE�Tm�Tb�A1�B1�C1�D1�C1E�D1E�M �  �⠦    � ����� �.   �
��������������������������������������������������������������������������������������������������������������������
.]h
�@@@@@@@@ �@@@@@@@@@@@@@@@@@@@@@@@�&&#& �@�@�@�@�@�@�@ �@ �@ �@ �@ �@ �@ �@ �@ �@  �@  �@ �@@@@@@@@@@�@@@@@@@@@@@@@�.{.?stColumnDataVod;.}
.[f
��������������������������������������������������������������������������������������������������������������������
.]f
.}
.}
.endform
.linkform 'Kar_Vod_02' prototype is 'Kar_Vod'
.NameInList '����� � ����⥫��'
.Group 'Kar_VodGr2'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio Sosto Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
.endfields
^
.{
                    ���ଠ��  � ����⥫��
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
����������������������������������������������������������������������������������������������������������Ŀ
� ���.���.�         � � �         �  ����ﭨ�     �����᳀�B�C�D�E�F�BE�CE�DE�Tm�Tb�A1�B1�C1�D1�C1E�D1E�M �
������������������������������������������������������������������������������������������������������������
.]h
�@@@@@@@@ �@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@�&&#& �@�@�@�@�@�@� @� @� @�@ �@ �@ �@ �@ �@ �@  �@  �@ �.{.?stColumnDataVod;.}
.[f
������������������������������������������������������������������������������������������������������������
.]f
.}
.}
.endform

.linkform 'Kar_Vod_03' prototype is 'Kar_Vod'
.NameInList '������ ����⥫��'
.Group 'Kar_VodGr3'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio
 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15
 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31
.endfields
^
.{
                    ���ଠ��  � ����⥫��
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
�����������������������������������������������������������������������������������������������Ŀ
� ���.���.�         � � �         �1�2�3�4�5�6�7�8�9�0�1�2�3�4�5�6�7�8�9�0�1�2�3�4�5�6�7�8�9�0�1�
�������������������������������������������������������������������������������������������������
.]h
�@@@@@@@@ �@@@@@@@@@@@@@@@@@@@@@@@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�.{.?stColumnDataVod;.}
.[f
�������������������������������������������������������������������������������������������������
 1 - �� �������  2 - ������         3 - ����
 4 - ���쭨��   5 - ��室���       6 - �ண�
.]f
.}
.}
.endform

.linkform 'Kar_Vod_01vib' prototype is 'Kar_Vod'
.NameInList '����⥪� ����� ����⥫��'
.Group 'Kar_VodGr1vib'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
 StagVd NomUdov
.endfields
^
.{
                           ����⥪� ����� ����⥫��
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
������������������������������������������������������������������������������������������������������������������Ŀ
� ���.���.�         � � �         �����᳀�B�C�D�E�F�BE�CE�DE�Tm�Tb�A1�B1�C1�D1�C1E�D1E�M �  �⠦    � ����� �.   �
��������������������������������������������������������������������������������������������������������������������
.]h
�@@@@@@@@ �@@@@@@@@@@@@@@@@@@@@@@@�&&#& �@�@�@�@�@�@�@ �@ �@ �@ �@ �@ �@ �@ �@ �@  �@  �@ �@@@@@@@@@@�@@@@@@@@@@@@@�.{.?stColumnDataVod;.}
.[f
��������������������������������������������������������������������������������������������������������������������
.]f
.}
.}
.endform
.linkform 'Kar_Vod_02vib' prototype is 'Kar_Vod'
.NameInList '����� � ����� ����⥫��'
.Group 'Kar_VodGr2vib'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio Sosto Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
.endfields
^
.{
                    ���ଠ�� � ����� ����⥫��
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
����������������������������������������������������������������������������������������������������������Ŀ
� ���.���.�         � � �         �  ����ﭨ�     �����᳀�B�C�D�E�F�BE�CE�DE�Tm�Tb�A1�B1�C1�D1�C1E�D1E�M �
������������������������������������������������������������������������������������������������������������
.]h
�@@@@@@@@ �@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@�&&#& �@�@�@�@�@�@� @� @� @�@ �@ �@ �@ �@ �@ �@  �@  �@ �.{.?stColumnDataVod;.}
.[f
������������������������������������������������������������������������������������������������������������
.]f
.}
.}
.endform

.linkform 'Kar_Vod_03vib' prototype is 'Kar_Vod'
.NameInList '������ ����� ����⥫��'
.Group 'Kar_VodGr3vib'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio
 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15
 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31
.endfields
^
.{
                    ���ଠ�� � ����� ����⥫��
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
�����������������������������������������������������������������������������������������������Ŀ
� ���.���.�         � � �         �1�2�3�4�5�6�7�8�9�0�1�2�3�4�5�6�7�8�9�0�1�2�3�4�5�6�7�8�9�0�1�
�������������������������������������������������������������������������������������������������
.]h
�@@@@@@@@ �@@@@@@@@@@@@@@@@@@@@@@@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�.{.?stColumnDataVod;.}
.[f
�������������������������������������������������������������������������������������������������
 1 - �� �������  2 - ������         3 - ����
 4 - ���쭨��   5 - ��室���       6 - �ண�
.]f
.}
.}
.endform