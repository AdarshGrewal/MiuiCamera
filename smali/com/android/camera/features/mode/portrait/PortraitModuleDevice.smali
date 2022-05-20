.class public Lcom/android/camera/features/mode/portrait/PortraitModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "PortraitModuleDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatingMode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;->getModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleDeviceParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isParallelEnabled()Z

    move-result v1

    const v2, 0x8002

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isInQcfaMode()Z

    move-result v1

    const-string v2, "ModuleDevice"

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_QCFA"

    .line 4
    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v2, 0x9001

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_SINGLE_BOKEH"

    .line 6
    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v2, 0x9003

    goto :goto_0

    :cond_1
    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_DUAL_BOKEH"

    .line 7
    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v2, 0x9000

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->oo0OOoo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isBokehFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const v2, 0x80f1

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isBokehFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const v2, 0x8005

    :cond_6
    :goto_0
    return v2
.end method
