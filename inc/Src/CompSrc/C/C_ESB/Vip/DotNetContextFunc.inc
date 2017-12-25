#ifndef __DotNetContextFunc_inc__
#define __DotNetContextFunc_inc__

procedure DotNet_GetType(TypeFullName:string, var ResultDotNetType:AnyType); external 'G_DotNet4Vip.dll';
procedure DotNet_CreateInstance(var DotNetType:AnyType, var ResultDotNetObject:AnyType); external 'G_DotNet4Vip.dll';

function  DotNet_Release(var Handle:AnyType):longint; external 'G_DotNet4Vip.dll';
function  DotNet_AddRef(var Handle:AnyType):longint; external 'G_DotNet4Vip.dll';

procedure DotNet_Method_Create(var DotNetType:AnyType, MethodName:string, var ResultDotNetMethod:AnyType); external 'G_DotNet4Vip.dll';
procedure DotNet_Method_Create_Ext(var DotNetType:AnyType, MethodName:string, var ResultDotNetMethod:AnyType, MethodKind: longint, FirstArgParams:longint); external 'G_DotNet4Vip.dll';

procedure DotNet_Method_BindParam(var MethodContextHandle:AnyType, ParamIndex:longint, var Fld:AnyType, KindOfParam:longint); external 'G_DotNet4Vip.dll';
procedure DotNet_Method_BindParam_Type(var MethodContextHandle:AnyType, ParamIndex:longint, var Fld:AnyType, KindOfParam:longint, var ParamTypeFld:AnyType); external 'G_DotNet4Vip.dll';

procedure DotNet_Method_Invoke(var MethodContextHandle:AnyType, var InstanceHandle:AnyType); external 'G_DotNet4Vip.dll';
procedure DotNet_Method_InvokeStatic(var MethodContextHandle:AnyType); external 'G_DotNet4Vip.dll';

// Not implemented
// procedure DotNet_NewContext(var ResultContextHandle:AnyType); external 'G_DotNet4Vip.dll';
// procedure DotNet_DropContext(var ContextHandle:AnyType); external 'G_DotNet4Vip.dll';

function DotNet_ToString(var Handle:AnyType):string; external 'G_DotNet4Vip.dll';

#endif
