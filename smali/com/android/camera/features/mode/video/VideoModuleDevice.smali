.class public Lcom/android/camera/features/mode/video/VideoModuleDevice;
.super Lcom/android/camera/features/mode/BaseModuleDevice;
.source "VideoModuleDevice.java"


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
    invoke-virtual {v0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->isEisOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/device/Common;->o0O0000o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mode/ModuleDeviceParam;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0xf002

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->getOperatingModeNotVideo()I

    move-result v0

    :goto_0
    return v0
.end method
