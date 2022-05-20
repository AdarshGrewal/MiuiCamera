.class public Lcom/android/camera/features/mode/idcard/IDCardModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "IDCardModuleDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatingMode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;->getModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleDeviceParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isParallelEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isInQcfaMode()Z

    move-result v0

    const-string v1, "ModuleDevice"

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_QCFA"

    .line 4
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x9001

    goto :goto_0

    :cond_0
    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_NORMAL"

    .line 5
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x9005

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x8005

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->getCaptureOpModeNotParallel()I

    move-result v0

    :goto_0
    return v0
.end method
