/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                           บ
 บ ฅเแจ๏        : 5.83                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ                                                     บ
 บ โขฅโแโขฅญญ๋ฉ : ฎฃฎแแชจฉ ฎญแโ ญโจญ ซ คจฌจเฎขจ็                         บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
โ็ฅโ
#end
.set name='Kazxml'
.hide
.{ AllDocLoop CheckEnter
.fields
Encoding
.endfields
<?xml version="1.0" encoding="^"?>
<document type="d201.00" version ="1" id="">
.{ DocPart1 CheckEnter
.fields
RNN_1
quarter_1
Yea_1
XarName1 XarName2 XarName3
VidRasch1 VidRasch2 VidRasch3 VidRasch4 VidRasch5
OKONH
//201.00.001
SummDohNach_a SummDohNach_b SummDohNach_c SummDohNach_d SummDohNach_e
//201.00.002
SummDohNebl_a SummDohNebl_b SummDohNebl_c SummDohNebl_d SummDohNebl_e
//201.00.003
SummNalog_a SummNalog_b SummNalog_c SummNalog_d SummNalog_e
//201.00.004
Zadolg
.endfields
^
^
^
^^^
^^^^^
^
//201.00.001
^^^^^
//201.00.002
^^^^^
//201.00.003
^^^^^
//201.00.004
^
.}
.{ DocPart2 CheckEnter
.fields
//201.00.005
DohodVyplach_a DohodVyplach_b DohodVyplach_c DohodVyplach_d DohodVyplach_e
//201.00.006
NalogPodlPerech_a NalogPodlPerech_b NalogPodlPerech_c NalogPodlPerech_d NalogPodlPerech_e
//201.00.007
DoxUderPens_a DoxUderPens_b DoxUderPens_c DoxUderPens_d DoxUderPens_e
//201.00.008
VzPodlPerech_a VzPodlPerech_b VzPodlPerech_c VzPodlPerech_d VzPodlPerech_e
FioRuk FioGBuh
fio_isp_3
DataOtch
CodeGni
.endfields
//201.00.005
^^^^^
//201.00.006
^^^^^
//201.00.007
^^^^^
//201.00.008
^^^^^
^^
^
^
^
.}
.{ DocPart4 CheckEnter
.fields
NomerStr
Nomer
AllDoh
.endfields
^^^
.{ Part4Pers CheckEnter
.fields
LineNum_4
PersonFIO
PersonInn
PersonCode
PersonStatus
PersonDohod
.endfields
^^^^^^
.}
.fields
PersAllDohNeobl
PersAllNalVichet
PersAllPensVz
PersAllDobrPensVznos
PersAllDobrProfVznos
PersAllStraxPremii
.endfields
^^^^^^
.{ Part5Pers CheckEnter
.fields
LineNum_5
PersDohNeobl
PersNalVichet
PersPensVz
PersDobrPensVznos
PersDobrProfVznos
PersStraxPremii
.endfields
^^^^^^^
.}
.fields
PersAllPensNal
PersAllDohodVypl
PersAllViplatNeOblSocNal
PersAllViplatOblSocNal
PersAllSocNal
.endfields
^^^^^
.{ Part6Pers CheckEnter
.fields
LineNum_6
PersPensNal
PersDohodVypl
PersViplatNeOblSocNal
PersViplatOblSocNal
PersSocNal
.endfields
^^^^^^
.}
.}
.}
.endForm
.Linkform 'Kazxml_link1' prototype 'Kazxml'
.nameinlist 'แฏฎฌฎฃ โฅซ์ญ๋ฉ ไ ฉซ ข ไฎเฌ โฅ xml'
.var
  OutStr : string;
  CCount : word;
.endvar
.{ AllDocLoop CheckEnter
.fields
Encoding
.endfields
<?xml version="1.0" encoding="^"?>
<document type="d201.00" version ="3" id="">
.{ DocPart1 CheckEnter
.fields
if ((oem2utf8(RNN_1, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,RNN_1)
quarter_1
Yea_1
if ((oem2utf8(XarName1, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,XarName1)
if ((oem2utf8(XarName2, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,XarName2)
if ((oem2utf8(XarName3, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,XarName3)
if ((oem2utf8(OKONH, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,OKONH)
if ((oem2utf8(VidRasch1, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,VidRasch1)
if ((oem2utf8(VidRasch2, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,VidRasch2)
if ((oem2utf8(VidRasch3, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,VidRasch3)
if ((oem2utf8(VidRasch4, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,VidRasch4)
if ((oem2utf8(VidRasch5, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,VidRasch5)
//201.00.001
SummDohNach_a SummDohNach_b SummDohNach_c SummDohNach_d SummDohNach_e
//201.00.002
SummDohNebl_a SummDohNebl_b SummDohNebl_c SummDohNebl_d SummDohNebl_e
//201.00.003
SummNalog_a SummNalog_b SummNalog_c SummNalog_d SummNalog_e
//201.00.004
Zadolg
.endfields
<form_201000100005>
<page_201000100005>
<rnn>^</rnn>
<np_quarter>^</np_quarter>
<np_year>^</np_year>
<fio1>^</fio1>
<fio2>^</fio2>
<fio3>^</fio3>
<oked1>^</oked1>
<oked2></oked2>
<oked3></oked3>
<unit_weight1>0</unit_weight1>
<unit_weight2>0</unit_weight2>
<unit_weight3>0</unit_weight3>
<vd_p>^</vd_p>
<vd_o>^</vd_o>
<vd_l>^</vd_l>
<vd_d>^</vd_d>
<vd_u>^</vd_u>
<number_uved></number_uved>
<date_extract></date_extract>
<a_201.00.001>^</a_201.00.001>
<b_201.00.001>^</b_201.00.001>
<c_201.00.001>^</c_201.00.001>
<d_201.00.001>^</d_201.00.001>
<e_201.00.001>^</e_201.00.001>
<a_201.00.002>^</a_201.00.002>
<b_201.00.002>^</b_201.00.002>
<c_201.00.002>^</c_201.00.002>
<d_201.00.002>^</d_201.00.002>
<e_201.00.002>^</e_201.00.002>
<a_201.00.003>^</a_201.00.003>
<b_201.00.003>^</b_201.00.003>
<c_201.00.003>^</c_201.00.003>
<d_201.00.003>^</d_201.00.003>
<e_201.00.003>^</e_201.00.003>
<_201.00.004>^</_201.00.004>
</page_201000100005>
.}
.{ DocPart2 CheckEnter
.fields
if ((oem2utf8(RNN_1, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,RNN_1)
quarter_1
Yea_1
//201.00.005
DohodVyplach_a DohodVyplach_b DohodVyplach_c DohodVyplach_d DohodVyplach_e
//201.00.006
NalogPodlPerech_a NalogPodlPerech_b NalogPodlPerech_c NalogPodlPerech_d NalogPodlPerech_e
//201.00.007
DoxUderPens_a DoxUderPens_b DoxUderPens_c DoxUderPens_d DoxUderPens_e
//201.00.008
VzPodlPerech_a VzPodlPerech_b VzPodlPerech_c VzPodlPerech_d VzPodlPerech_e
if ((oem2utf8(FioRuk, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,FioRuk)
if ((oem2utf8(FioGBuh, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,FioGBuh)
if ((oem2utf8(fio_isp_3, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,fio_isp_3)
DataOtch
if ((oem2utf8(CodeGni, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,CodeGni)
.endfields
<page_201000200002>
<rnn>^</rnn>
<np_quarter>^</np_quarter>
<np_year>^</np_year>
<a_201.00.005>^</a_201.00.005>
<b_201.00.005>^</b_201.00.005>
<c_201.00.005>^</c_201.00.005>
<d_201.00.005>^</d_201.00.005>
<e_201.00.005>^</e_201.00.005>
<a_201.00.006>^</a_201.00.006>
<b_201.00.006>^</b_201.00.006>
<c_201.00.006>^</c_201.00.006>
<d_201.00.006>^</d_201.00.006>
<e_201.00.006>^</e_201.00.006>
<a_201.00.007>^</a_201.00.007>
<b_201.00.007>^</b_201.00.007>
<c_201.00.007>^</c_201.00.007>
<d_201.00.007>^</d_201.00.007>
<e_201.00.007>^</e_201.00.007>
<a_201.00.008>^</a_201.00.008>
<b_201.00.008>^</b_201.00.008>
<c_201.00.008>^</c_201.00.008>
<d_201.00.008>^</d_201.00.008>
<e_201.00.008>^</e_201.00.008>
<fio_head>^</fio_head>
<fio_count>^</fio_count>
<fio_dl>^</fio_dl>
<fio_pr></fio_pr>
<d_p>^</d_p>
<nvh></nvh>
<kno>^</kno>
<d_pr></d_pr>
<d_post></d_post>
</page_201000200002>
.}
</form_201000100005>
! ”ฎเฌ  201.00€
<form_201000000114>
.{ DocPart4 CheckEnter
.fields
NomerStr
if ((oem2utf8(RNN_1, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,RNN_1)
Yea_1
Nomer
AllDoh
.endfields
<sheet>
<page_201000000114>
<n_s>^</n_s>
<rnn>^</rnn>
<np_year>^</np_year>
<a_n>^</a_n>
<e_nod_itog>^</e_nod_itog>
<rowset>
.begin CCount := 0; end.
.{ Part4Pers CheckEnter
.fields
LineNum_4
if ((oem2utf8(PersonFIO, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,PersonFIO)
if ((oem2utf8(PersonInn, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,PersonInn)
PersonCode
PersonStatus
PersonDohod
.endfields
.begin
  CCount := CCount + 1;
  if CCount > 10 CCount := 1;
end.
<row>
<a_n>^</a_n>
<b_fio>^</b_fio>
<c_rnn>^</c_rnn>
<gr>^</gr>
<e_nd>^</e_nd>
<f_nod>^</f_nod>
</row>
.}
.{WHILE CCount < 10
.begin CCount := CCount + 1 end.
<row>
<a_n>0</a_n>
<b_fio></b_fio>
<c_rnn></c_rnn>
<gr></gr>
<e_nd></e_nd>
<f_nod>0</f_nod>
</row>
.}
</rowset>
.fields
if ((oem2utf8(fio_isp_3, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,fio_isp_3)
.endfields
<fio_dl>^</fio_dl>
</page_201000000114>
! ”ฎเฌ  201.00
.fields
NomerStr
if ((oem2utf8(RNN_1, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,RNN_1)
Yea_1
PersAllDohNeobl
PersAllNalVichet
PersAllPensVz
PersAllDobrPensVznos
PersAllDobrProfVznos
PersAllStraxPremii
.endfields
<page_201000000121>
<n_s>^</n_s>
<rnn>^</rnn>
<np_year>^</np_year>
<g_i_itog>^</g_i_itog>
<h_i_itog>^</h_i_itog>
<i_i_itog>^</i_i_itog>
<j_i_itog>^</j_i_itog>
<k_i_itog>^</k_i_itog>
<l_i_itog>^</l_i_itog>
<rowset>
.begin CCount := 0 end.
.{ Part5Pers CheckEnter
.fields
LineNum_5
PersDohNeobl
PersNalVichet
PersPensVz
PersDobrPensVznos
PersDobrProfVznos
PersStraxPremii
.endfields
.begin
  CCount := CCount + 1
  if CCount > 10 CCount := 1
end.
<row>
<a_n>^</a_n>
<g_sum>^</g_sum>
<h_nalvich>^</h_nalvich>
<i_opv>^</i_opv>
<j_dpv>^</j_dpv>
<k_prof>^</k_prof>
<l_sp>^</l_sp>
</row>
.}
.{WHILE CCount < 10
.begin CCount := CCount + 1 end.
<row>
<a_n></a_n>
<g_sum>0</g_sum>
<h_nalvich>0</h_nalvich>
<i_opv>0</i_opv>
<j_dpv>0</j_dpv>
<k_prof>0</k_prof>
<l_sp>0</l_sp>
</row>
.}
</rowset>
.fields
if ((oem2utf8(fio_isp_3, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,fio_isp_3)
.endfields
<fio_dl>^</fio_dl>
</page_201000000121>
! ”ฎเฌ  201.00C
.fields
NomerStr
if ((oem2utf8(RNN_1, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,RNN_1)
Yea_1
PersAllPensNal
PersAllDohodVypl
PersAllViplatNeOblSocNal
PersAllViplatOblSocNal
PersAllSocNal
.endfields
<page_201000000138>
<n_s>^</n_s>
<rnn>^</rnn>
<np_year>^</np_year>
<m_i_itog>^</m_i_itog>
<n_i_itog>^</n_i_itog>
<o_i_itog>^</o_i_itog>
<p_i_itog>^</p_i_itog>
<q_i_itog>^</q_i_itog>
<rowset>
.begin CCount := 0 end.
.{ Part6Pers CheckEnter
.fields
LineNum_6
PersPensNal
PersDohodVypl
PersViplatNeOblSocNal
PersViplatOblSocNal
PersSocNal
.endfields
.begin
  CCount := CCount + 1
  if CCount > 10 CCount := 1
end.
<row>
<a_n>^</a_n>
<m_ipn>^</m_ipn>
<n_vipl>^</n_vipl>
<o_vypl>^</o_vypl>
<p_vypl>^</p_vypl>
<q_nalog>^</q_nalog>
</row>
.}
.{WHILE CCount < 10
.begin CCount := CCount + 1 end.
<row>
<a_n></a_n>
<m_ipn>0</m_ipn>
<n_vipl>0</n_vipl>
<o_vypl>0</o_vypl>
<p_vypl>0</p_vypl>
<q_nalog>0</q_nalog>
</row>
.}
</rowset>
.fields
if ((oem2utf8(fio_isp_3, OutStr)<> 0)and(Encoding = 'UTF-8'),OutStr,fio_isp_3)
.endfields
<fio_dl>^</fio_dl>
</page_201000000138>
</sheet>
.}
</form_201000000114>
</document>
.}
.endForm
