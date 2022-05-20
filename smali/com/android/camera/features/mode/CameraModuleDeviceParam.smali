.class public Lcom/android/camera/features/mode/CameraModuleDeviceParam;
.super Lcom/android/camera/features/mode/ModuleDeviceParam;
.source "CameraModuleDeviceParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;
    }
.end annotation


# instance fields
.field public isImageCaptureIntent:Z

.field public isParallelEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;-><init>()V

    return-void
.end method

.method private getDefaultParallelOpModeOnce()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v0

    const v1, 0x9005

    const-string v2, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_NORMAL"

    const-string v3, "ModuleDevice"

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v5

    .line 7
    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_SAT"

    .line 9
    invoke-static {v4, v3, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v1, 0x9002

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method


# virtual methods
.method public getCaptureOpModeNotParallel()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const v2, 0x80f3

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraSatEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OOoO()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0O0:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const v2, 0x8001

    :cond_4
    :goto_0
    return v2
.end method

.method public getDefaultParallelOpMode()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    const-string v1, "ModuleDevice"

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ULTRA_PIXEL_SELF"

    .line 3
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x9009

    goto :goto_0

    :cond_0
    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_HD"

    .line 4
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x9004

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "getOperatingMode: SESSION_OPERATION_MODE_ALGO_UP_NORMAL"

    .line 6
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x9005

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->getDefaultParallelOpModeOnce()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final isBokehFrontCamera()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDualFrontCamera()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getActualId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isImageCaptureIntent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isImageCaptureIntent:Z

    return v0
.end method

.method public isInQcfaMode()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa3

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xba

    if-eq v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xb6

    if-eq v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportedQcfa()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo0O()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isParallelEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isParallelEnabled:Z

    return v0
.end method

.method public setImageCaptureIntent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isImageCaptureIntent:Z

    return-void
.end method

.method public setParallelEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->isParallelEnabled:Z

    return-void
.end method
