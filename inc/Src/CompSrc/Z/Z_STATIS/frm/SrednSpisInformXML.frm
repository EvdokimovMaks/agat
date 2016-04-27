//******************************************************************************
// ƒ « ªâ¨ª  8.1
// „ã¤ à¥¢ €.‚.
//******************************************************************************
#doc
ä®à¬  XML ¯® áà¥¤­¥á¯¨á®ç­®©
#end
.set name='SrednSpisInformXML'
.hide
.fields
XSDName IDFile KOLdoc DoljnOtv Tel Email
fioOtv NameOtv OtchvOtv IdDoc BukvYA
NaimOrg InnUl KPP RukFio RukName RukOtchv NaimDocPred FioPred NamePred OtchPred NaimOrgPred //žà¨¤¨ç¥áª®¥ «¨æ®
INNIP FIOIP NameIp OtchIp NaimDocPredIP FioPredIP NamePredIP OtchPredIP  NaimOrgPredIP //ˆ­¤¨¢¨¤ã «ì­ë© ¯à¥¤¯à¨­¨¬ â¥«ì
DateDoc
DateSrSPchisl KolMen
.endfields
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^
.if UridicalPredp
^
^ ^
.if OtchRuk
^ ^ ^
.else
^
.if OtchLastName
^
^ ^
.else
 ^
.end
.end
.else
^ ^
^
^ ^
.if IPOtchLastName
^ ^ ^
.else
^
.end
.end
^ ^ ^
.endform

.linkform 'SrednSpisInformXML_401' prototype 'SrednSpisInformXML'
.nameinlist '‘¢¥¤¥­¨ï ® áà¥¤­¥á¯¨á®ç­®© §  £®¤(XML)'
.fields
XSDName IDFile KOLdoc DoljnOtv Tel Email
BukvYA fioOtv BukvYA NameOtv OtchvOtv IdDoc
NaimOrg InnUl KPP BukvYA RukFio BukvYA RukName RukOtchv NaimDocPred BukvYA FioPred BukvYA NamePred
OtchPred NaimOrgPred //žà¨¤¨ç¥áª®¥ «¨æ®
INNIP BukvYA FIOIP BukvYA NameIp OtchIp NaimDocPredIP BukvYA FioPredIP
 BukvYA NamePredIP OtchPredIP  NaimOrgPredIP //ˆ­¤¨¢¨¤ã «ì­ë© ¯à¥¤¯à¨­¨¬ â¥«ì
DateDoc
DateSrSPchisl KolMen
.endfields
<?xml version="1.0" encoding="windows-1251"?>
<Ôàéë xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:noNamespaceSchemaLocation="^.xsd" ÈäÔàéë="^" ÂåðñÔîðì="4.01" ÒèïÈíô="ÑÂÅÄÑÐÑÏÈÑ×ÈÑË"
ÊîëÄîê="^">
<ÈäÎòïð ÄîëæÎòâ="^" Òëô="^" E-mail="^">
	<ÔÈÎÎòâ Ôàìèëè^="^" Èì^="^" Îò÷åñòâî="^"/>
</ÈäÎòïð>
<Äîêóìåíò ÈäÄîê="^">
	<ÑâÍÏ>
.if UridicalPredp
		<ÍÏÞË ÍàèìÎðã="^" ÈÍÍÞË="^" ÊÏÏ="^">
.if OtchRuk
			<ÑâÐóêÎðã Ôàìèëè^="^" Èì^="^" Îò÷åñòâî="^"/>
.else
			<ÑâÏðåä ÍàèìÄîêÏðåä="^">
.if OtchLastName
				<ÔÈÎÏðåä Ôàìèëè^="^" Èì^="^" Îò÷åñòâî="^">
				</ÔÈÎÏðåä>
.else
				<ÍàèìÎðãÏðåä>
				^
				</ÍàèìÎðãÏðåä>
.end
			</ÑâÏðåä>
.end
		</ÍÏÞË>
.else
		<ÍÏÈÏ ÈÍÍÈÏ="^">
			<ÔÈÎÈÏ Ôàìèëè^="^" Èì^="^" Îò÷åñòâî="^">
			</ÔÈÎÈÏ>
			<ÑâÏðåä ÍàèìÄîêÏðåä="^">
.if IPOtchLastName
				<ÔÈÎÏðåä Ôàìèëè^="^" Èì^="^" Îò÷åñòâî="^">
				</ÔÈÎÏðåä>
.else
				<ÍàèìÎðãÏðåä>
				^
				</ÍàèìÎðãÏðåä>
.end
			</ÑâÏðåä>
		</ÍÏÈÏ>
.end
	</ÑâÍÏ>
	<ÎïèñÏåðÑâåä ÊÍÄ="1110018" ÄàòàÄîê="^"/>
	<ÑîäÏåðÑâåä ÄàòàÑðåäÑï×èñë="^" Êîë×åë="^"/>
</Äîêóìåíò>
</Ôàéë>
.endform