/*

 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2002 ��牆���罔� ���������                    �
 � ��痰ガ�       : ���������                                                 �
 � 蹍オ�        : �む�                                                      �
 � �ム瓱�        : 5.85.02                                                   �
 � ��Л�腑�┘    : ��ヨ�┘ �牀罐ゃ琺 � 粃��罔� ├ G_Val.dll                  �
 � �癶モ痰▲��覃 : �ム��� �爬� �ゃ�爐�※�                                    �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

//------------------------------------------------------------------------------
// ValFunc.pas
#doc
  <brief>
    ���罔��├�罔� �♀オ�� �ムメ腑�� ���鈞.
  </brief>

  <h3>��Б����ガ�� Л�腑�┘:</h3>
  <p>
    �甎ヨ��痰� ┃�罔��├�罔� �♀オ�� �ムメ腑�� ���鈞.
  </p>
#end
function InitGetCur: Boolean; external 'G_Val.dll';
#doc
  <brief>
    ���罔��├�罔� �♀オ�� �ムメ腑�� ���鈞 ．� ※с��├�罔�.
  </brief>

  <h3>��Б����ガ�� Л�腑�┘:</h3>
  <p>
    �甎ヨ��痰� ┃�罔��├�罔� �♀オ�� �ムメ腑�� ���鈞.
  </p>
#end
function InitGetCurNoVisual: Boolean; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ 痺��� � ���鈞� �砒モ��.
  </brief>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>ValSrc</code> - ���鈞� か� ���▲珀┬;</li>
    <li><code>SumSrc</code> - ���▲珥�珮ガ�� 痺���;</li>
    <li><code>dCourse</code> - ���� か� ���竍キ�� �窶��.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘:</h3>
  <p>
    �祠�� ��甄� ���▲珥�罔�.
  </p>
#end
function PGetCurrency(ValSrc: Comp, SumSrc: Double, dCourse: Date): Double; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ 痺��� � ��М〓� ���鈞�.
  </brief>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>ValSrc</code> - ���鈞� か� ���▲珀┬;</li>
    <li><code>SumSrc</code> - ���▲珥�珮ガ�� 痺���;</li>
    <li><code>dCourse</code> - ���� か� ���竍キ�� �窶��.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘:</h3>
  <p>
    �祠�� ��甄� ���▲珥�罔�.
  </p>
#end
function PGetBaseCurrency(ValSrc: Comp, SumSrc: Double, dCourse: Date): Double; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ 痺��� � 礫������� ���鈞�.
  </brief>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>ValSrc</code> - ���鈞� か� ���▲珀┬;</li>
    <li><code>SumSrc</code> - ���▲珥�珮ガ�� 痺���;</li>
    <li><code>dCourse</code> - ���� か� ���竍キ�� �窶��;</li>
    <li><code>target</code> - �ギ≦�え��� ���鈞�.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘:</h3>
  <p>
    �祠�� ��甄� ���▲珥�罔�.
  </p>
#end
function PGetAnyCurrency(ValSrc: Comp, SumSrc: Double, dCourse: Date, target: Comp): Double; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ 痺��� � ��罔����讚�� ���鈞�.
  </brief>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>ValSrc</code> - ���鈞� か� ���▲珀┬;</li>
    <li><code>SumSrc</code> - ���▲珥�珮ガ�� 痺���;</li>
    <li><code>dCourse</code> - ���� か� ���竍キ�� �窶��.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘:</h3>
  <p>
    �祠�� ��甄� ���▲珥�罔�.
  </p>
#end
function PGetNatCurrency(ValSrc: Comp, SumSrc: Double, dCourse: Date): Double; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ ��━キ����┘ 礫������� ���鈞�.
  </brief>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>ValSrc</code> - ���ム ���鈞�.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘:</h3>
  <p>
    ��━キ����┘ ���鈞�.
  </p>
#end
function PGetNameCurrency(ValSrc: Comp): String; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ ��━キ����┘ 礫������� ���鈞� � �爛か�Ν�� ��ぅΕ.<br>
    ���爬�ム: "� ぎ������ ���"
  </brief>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>cVal</code> - ���ム ���鈞�.</li>
  </ul>

  <h3>��Б����ガ�� Л�腑�┘:</h3>
  <p>
    ��━キ����┘ ���鈞�.
  </p>
#end
function PGetNameAhCurrency (cVal: Comp): String; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ 瓱�〓� 礫������� ���鈞�.
  </brief>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>ValSrc</code> - ���ム ���鈞�.</li>
  </ul>
#end
function PGetSimvCurrency(ValSrc: Comp): String; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ 瓱�〓� ��М〓� ���鈞�.
  </brief>
#end
function PGetSimvBaseCurrency: String; external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ 瓱�〓� ���鈞� �砒モ��.
  </brief>
#end
function PGetSimvTarCurrency: String;  external 'G_Val.dll';
#doc
  <brief>
    ��Б����モ ��爿ア竡 �謌メ皰濶竡 ���鈞� か� 礫������� ���鈞�. <br>
    ��, � ��皰牀� cNode = 0.
  </brief>

  <h3>�����モ琺</h3>
  <ul>
    <li><code>cVal</code> - ���ム ���鈞�.</li>
  </ul>
#end
function PGetMainVal(cVal: Comp): Comp; external 'G_Val.dll';
#doc
  <brief>
    �瓣�｀Δキ┘ �♀オ�� �ムメ腑�� ���鈞.
  </brief>
#end
procedure DoneGetCur; external 'G_Val.dll';
//------------------------------------------------------------------------------
