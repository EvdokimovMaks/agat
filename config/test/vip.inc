[HardwareKey]
  SharedPath=\\GALSRV9\hwkey$\hwdir
  CheckPeriod=0

[Database]
  DataBaseName=teach910
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
  //DefaultEnv=galnet_galpatch
  DefaultEnv=galnet_galtest

[licparam]
  LicFileName='%ConfigDir%%ConfigSubDir%\vip.lic'
