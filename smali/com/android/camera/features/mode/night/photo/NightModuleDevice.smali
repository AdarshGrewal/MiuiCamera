.class public Lcom/android/camera/features/mode/night/photo/NightModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "NightModuleDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatingMode()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;->getModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleDeviceParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isParallelEnabled()Z

    move-result v1

    const v2, 0x800a

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isInQcfaMode()Z

    move-result v1

    const-string v3, "ModuleDevice"

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_QCFA"

    .line 4
    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v2, 0x9001

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightHalfAlgoUp()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xad

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v5

    if-ne v1, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isMiviNightModeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->getDefaultParallelOpMode()I

    move-result v2

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_SUPER_NIGHT"

    .line 9
    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x8005

    .line 11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00OOO()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    :cond_5
    :goto_1
    return v2
.end method
