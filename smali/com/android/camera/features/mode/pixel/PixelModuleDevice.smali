.class public Lcom/android/camera/features/mode/pixel/PixelModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "PixelModuleDevice.java"


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

    if-eqz v1, :cond_2

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

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ULTRA_PIXEL_SELF"

    .line 6
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x9009

    goto :goto_0

    :cond_1
    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_HD"

    .line 7
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x9004

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x8005

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x8007

    goto :goto_0

    :cond_3
    const v0, 0x80f3

    :cond_4
    :goto_0
    return v0
.end method
