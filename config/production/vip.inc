[HardwareKey]
  SharedPath=\\GALSRV9\hwkey$\hwdir
  CheckPeriod=0

[Database]
  DataBaseName=AGAT910
  DataBaseDriver=MS70DRV.DLL
  CheckRepository=Off

[SQLDriver]
  SQLServer=ncacn_ip_tcp:GALSRV9[1997]
  FullLoginName=On
  ForceRights=ON

[Vip]
  DefaultEnv=GalNet

[login]
  username=argumentnores
  password=argument


[licparam]
  LicFileName='%ConfigDir%%ConfigSubDir%\vip.lic'
