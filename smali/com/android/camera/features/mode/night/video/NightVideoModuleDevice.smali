.class public Lcom/android/camera/features/mode/night/video/NightVideoModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "NightVideoModuleDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperatingMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mode/BaseModuleDevice;->getModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleDeviceParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x8031

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->getFrontOperationModeNotVideo()I

    move-result v0

    return v0
.end method
