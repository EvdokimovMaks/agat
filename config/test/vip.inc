[HardwareKey]
  SharedPath=\\GALSRV9\hwkey$\hwdir
  CheckPeriod=0

[Database]
  DataBaseName=galpatch
  DataBaseDriver=MS70DRV.DLL
  CheckRepository=Off

[SQLDriver]
  SQLServer=ncacn_ip_tcp:galtest[1997]
  FullLoginName=On
  ForceRights=ON

[login]
  username=argumentnores
  password=argument

[Vip]
  DefaultEnv=GalNet_OAV

[licparam]
  LicFileName='%ConfigDir%%ConfigSubDir%\vip.lic'
