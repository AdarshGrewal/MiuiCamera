.class public Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
.super Ljava/lang/Object;
.source "Camera2DataContainer.java"

# interfaces
.implements Lcom/android/camera/module/loader/camera2/Camera2Compat;


# static fields
.field public static final BOGUS_CAMERA_ID_BACK:I = 0x0

.field public static final BOGUS_CAMERA_ID_FRONT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Camera2DataContainer"

.field public static final sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;


# instance fields
.field public mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooooo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterCommon;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterCommon;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
    .locals 2

    .line 9
    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-virtual {v1, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-object p0

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getVideoModeCameraId(II)I
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    const/16 v1, 0xa2

    if-ne p2, v1, :cond_2

    .line 2
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->is8KSupportedByAllPhysicalCamerasInVideoSat()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p1

    return p1

    .line 8
    :cond_1
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when #1"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1

    return p1

    .line 10
    :cond_2
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne p2, v1, :cond_4

    .line 11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oo()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    .line 14
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when 8KOpen and (zoomRatio < UltraTeleMinZoomRatio)"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1

    return p1

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    return p1

    .line 17
    :cond_4
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when 8KOpen"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1

    return p1

    .line 19
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraSatEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOo0()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 20
    :cond_6
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 21
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when no supportVideoSATForVideoQuality"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1

    return p1

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result p1

    return p1

    .line 24
    :cond_8
    :goto_0
    sget-object p2, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v0, "Use main camera when no supportVideoSAT"

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static final isAuxCamera(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isCurrentFaceFront()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontCamera(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStandaloneMacroCamera(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isUltraTeleCamera(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUltraWideBackCamera(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized getActualOpenCameraId(II)I
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p2, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v0, "Warning: getActualOpenCameraId(): #init() failed."

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return p1

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0xa2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez p1, :cond_3d

    .line 6
    :try_start_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedNonSatUWPortrait()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isForceMainBackCamera()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    const/16 v5, 0xa7

    if-nez v4, :cond_4

    if-eq p2, v5, :cond_4

    .line 9
    monitor-exit p0

    return p1

    .line 10
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    .line 11
    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCapabilities()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :cond_5
    const/16 v4, 0xa6

    if-eq p2, v4, :cond_38

    if-eq p2, v5, :cond_38

    const/16 v4, 0xa9

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq p2, v4, :cond_27

    const/16 v4, 0xaf

    if-eq p2, v4, :cond_1e

    const/16 v4, 0xba

    if-eq p2, v4, :cond_14

    const/16 v4, 0xbc

    if-eq p2, v4, :cond_14

    const/16 v4, 0xb3

    if-eq p2, v4, :cond_12

    const/16 v4, 0xb4

    if-eq p2, v4, :cond_38

    const/16 v4, 0xb6

    if-eq p2, v4, :cond_24

    const/16 v4, 0xb7

    if-eq p2, v4, :cond_f

    const/16 v4, 0xcc

    if-eq p2, v4, :cond_e

    const/16 v4, 0xcd

    if-eq p2, v4, :cond_14

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_3

    .line 13
    :pswitch_0
    :try_start_4
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 15
    :cond_6
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 17
    :cond_7
    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_42

    .line 18
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    .line 19
    sget-object v4, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Currently user selected zoom ratio is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v4, v1, v5

    if-gez v4, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 21
    :cond_8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0oo()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 22
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/device/Common;->o00ooOo()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 23
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_9

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 25
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v4

    if-eq v4, v3, :cond_a

    .line 26
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/device/Common;->o00ooOo0()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 27
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_a

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 29
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 30
    :pswitch_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0Oo0()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 32
    :pswitch_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v4, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v1

    if-eq v1, v3, :cond_b

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 35
    :cond_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedNonSatUWPortrait()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 37
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v1

    if-eq v1, v3, :cond_d

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 39
    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 40
    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_4

    .line 41
    :cond_f
    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_42

    .line 42
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    .line 43
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currently user selected zoom ratio is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v1, v5

    if-gez v3, :cond_10

    .line 44
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 46
    :cond_10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOo()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 47
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_11

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    .line 49
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->isSupportVideoQuality(II)Z

    move-result v3

    if-nez v3, :cond_43

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 51
    :cond_11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 52
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_42

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    .line 54
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->isSupportVideoQuality(II)Z

    move-result v3

    if-nez v3, :cond_43

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 56
    :cond_12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoOOo()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 58
    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 59
    :cond_14
    :pswitch_3
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 60
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0oO()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 62
    :cond_15
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oO()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 64
    :cond_16
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 65
    :cond_17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto :goto_1

    .line 67
    :cond_18
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraSatEnable()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 68
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000O()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 69
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto :goto_1

    .line 71
    :cond_19
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v1

    goto :goto_1

    .line 72
    :cond_1a
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto :goto_1

    .line 74
    :cond_1b
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    .line 75
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_1c
    sget-boolean v3, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v3, :cond_43

    .line 76
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v3

    if-nez v3, :cond_43

    .line 77
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v3

    .line 78
    sget-object v4, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Currently user selected zoom ratio is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1d

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 80
    :cond_1d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 82
    :cond_1e
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00o0()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 83
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 84
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraTele()Z

    move-result v1

    if-nez v1, :cond_20

    .line 85
    :cond_1f
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByTele()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 86
    :cond_20
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    .line 87
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currently user selected zoom ratio is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v1, v5

    if-gez v3, :cond_21

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 89
    :cond_21
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_22

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 91
    :cond_22
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_23

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 93
    :cond_23
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 94
    :cond_24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isZoomByCameraSwitchingSupported()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v1

    if-nez v1, :cond_26

    .line 95
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wide"

    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    :cond_25
    const-string v3, "Standalone"

    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 100
    :cond_26
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 101
    :cond_27
    :pswitch_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O0o0()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 102
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 104
    :cond_28
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 105
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0oO()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0:Z

    if-nez v1, :cond_29

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 107
    :cond_29
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oO()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 109
    :cond_2a
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 110
    :cond_2b
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 112
    :cond_2c
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoModeCameraId(II)I

    move-result v1

    goto/16 :goto_4

    .line 114
    :cond_2d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    if-ne p2, v1, :cond_2e

    if-eqz v3, :cond_2e

    const-string v1, "normal"

    .line 115
    invoke-virtual {v3, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getPersistValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    .line 117
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when video HDR is on"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 118
    :cond_2e
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 119
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "pro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 121
    :cond_2f
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "normal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 122
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v3, "Use main camera when SuperEISProValue is normal"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 124
    :cond_30
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0Oo()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto :goto_2

    :cond_31
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    .line 126
    :goto_2
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when SuperEisUseWideCamera"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 127
    :cond_32
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 129
    :cond_33
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 130
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    .line 132
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when 4K120Fps on"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 133
    :cond_34
    sget-boolean v1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v1, :cond_37

    .line 134
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    .line 135
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currently user selected zoom ratio is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v1, v5

    if-gez v3, :cond_35

    .line 136
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    if-nez v3, :cond_35

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto/16 :goto_4

    .line 138
    :cond_35
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOo()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 139
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_36

    .line 140
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 141
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    .line 142
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(II)Z

    move-result v3

    if-nez v3, :cond_43

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    .line 144
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when VideoToTele no supportVideoQuality"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 145
    :cond_36
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 146
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_37

    .line 147
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    .line 149
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(II)Z

    move-result v3

    if-nez v3, :cond_43

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    .line 151
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when VideoToUltraTele no supportVideoQuality"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 152
    :cond_37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoModeCameraId(II)I

    move-result v1

    goto/16 :goto_4

    .line 153
    :cond_38
    invoke-static {}, Lcom/android/camera/CameraSettings;->isZoomByCameraSwitchingSupported()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 154
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wide"

    .line 155
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 156
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    goto/16 :goto_4

    :cond_39
    const-string/jumbo v3, "tele"

    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    goto/16 :goto_4

    :cond_3a
    const-string/jumbo v3, "ultra"

    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    goto :goto_4

    :cond_3b
    const-string v3, "macro"

    .line 161
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v1

    goto :goto_4

    :cond_3c
    const-string v3, "Standalone"

    .line 163
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 164
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    goto :goto_4

    :cond_3d
    if-ne p1, v2, :cond_42

    const/16 v4, 0xa1

    if-eq p2, v4, :cond_41

    if-eq p2, v1, :cond_41

    const/16 v1, 0xab

    if-eq p2, v1, :cond_3e

    goto :goto_3

    .line 165
    :cond_3e
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    if-ne v1, v3, :cond_3f

    goto :goto_3

    .line 166
    :cond_3f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v1

    .line 167
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v3

    if-eqz v3, :cond_40

    if-eqz v1, :cond_42

    .line 168
    :cond_40
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    goto :goto_4

    .line 169
    :cond_41
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    if-eq v1, v3, :cond_42

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    goto :goto_4

    :cond_42
    :goto_3
    move v1, p1

    .line 172
    :cond_43
    :goto_4
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "getActualOpenCameraId: mode=%x, id=%d->%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 173
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    const/4 p1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    .line 174
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getAuxCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getAuxCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuxFrontCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getAuxFrontCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getBokehCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehDepthCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getBokehDepthCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehFrontCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getBokehFrontCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCapabilities()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/CameraCapabilities;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCapabilities()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCapabilities(I)Lcom/android/camera2/CameraCapabilities;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const-string v1, "camera.dualvideo.firstid"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "camera.dualvideo.secondid"

    .line 2
    invoke-static {v2, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v0, :cond_0

    if-eq v2, v0, :cond_0

    if-eq v1, v2, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFrontCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getFrontCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMainBackCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getMainBackCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxJpegSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getMaxJpegSize()I

    move-result v0

    return v0
.end method

.method public getParallelVirtualCameraId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getParallelVirtualCameraId()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getRoleIdByActualId(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getRoleIdByActualId(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSATCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getSATCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSATFrontCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getSATFrontCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandaloneMacroCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getStandaloneMacroCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraTeleCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getUltraTeleCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideBokehCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getUltraWideBokehCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getUltraWideCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoSATCameraId()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getVideoSATCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVirtualBackCameraId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getVirtualBackCameraId()I

    move-result v0

    return v0
.end method

.method public getVirtualFrontCameraId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getVirtualFrontCameraId()I

    move-result v0

    return v0
.end method

.method public declared-synchronized hasBokehCamera()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasBokehCamera()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasPortraitCamera()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasPortraitCamera()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized hasSATCamera()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasSATCamera()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasTeleCamera()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasTeleCamera()Z

    move-result v0

    return v0
.end method

.method public hasUWPortraitCamera()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasUWPortraitCamera()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/hardware/camera2/CameraManager;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->init(Landroid/hardware/camera2/CameraManager;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized isFrontCameraId(I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: isFrontCameraId(): #init() failed."

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isPartSAT()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->isPartSAT()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mapSatCameraIdToFrameworkCameraId(I)I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 1
    sget-object v2, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid satMasterCameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    .line 7
    :goto_0
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string/jumbo p1, "satCameraId: %d -> cameraId: %d"

    .line 9
    invoke-static {v4, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentOpenedCameraId(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->setCurrentOpenedCameraId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
