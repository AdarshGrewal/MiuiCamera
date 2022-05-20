.class public abstract Lcom/android/camera2/MiCamera2ShotParallel;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotParallel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera2/MiCamera2Shot<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotParallelBase"


# instance fields
.field public final mActiveArraySize:Landroid/graphics/Rect;

.field public mAlgoSize:Lcom/android/camera/CameraSize;

.field public mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

.field public mCaptureId:Ljava/lang/String;

.field public mFirstFrameTimestamp:J

.field public mLockedAlgoSize:Landroid/util/Size;

.field public mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public mSavePath:Ljava/lang/String;

.field public mWaitingFirstFrame:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    .line 5
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getLockedAlgoSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lockedAlgoSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShotParallelBase"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/engine/PreProcessData;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onPreCapture(Lcom/xiaomi/engine/PreProcessData;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    return-void
.end method

.method private hasDualCamera()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

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


# virtual methods
.method public configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;
    .locals 5

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configParallelSession@3: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pictureSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", combinationMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelBase"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->hasDualCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 42
    :goto_0
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, p1, v2, v3, p4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x204

    const/4 v4, 0x0

    if-ne p4, v0, :cond_2

    .line 43
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v4, v2, v3, p4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x202

    if-ne p4, v0, :cond_3

    .line 44
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v4, v2, v3, p4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 45
    :cond_3
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, p1, v3, v3, p4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    .line 46
    :goto_1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 47
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    .line 48
    new-instance p4, Lcom/xiaomi/engine/BufferFormat;

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    const/4 p3, 0x4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParallelSession@3: bufferFormat is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3}, Lcom/android/camera2/MiCamera2;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 51
    invoke-virtual {p3}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/xiaomi/engine/BufferFormat;->setDepthBufferSize(Landroid/util/Size;)V

    .line 52
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 53
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO;

    invoke-direct {v0, p4}, LOooO00o/OooO0O0/OooO0O0/OooO;-><init>(Lcom/xiaomi/engine/BufferFormat;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    const-string p3, "error in zipper handler"

    .line 54
    invoke-static {v1, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_2
    new-instance p3, Lcom/android/camera/CameraSize;

    invoke-direct {p3, p1, p2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    return-object p4
.end method

.method public configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getRoleIdByActualId(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getCameraCombinationMode(I)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->hasDualCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5
    :goto_0
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v4, 0x8002

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v1, 0x8003

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isUltraPixel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v1, 0x80f3

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isMiviNightModeSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v1, 0x800a

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 12
    :cond_4
    new-instance v3, Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v1, 0x0

    invoke-direct {v3, v1, v2, v2, v0}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    .line 13
    :goto_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 15
    new-instance v1, Lcom/xiaomi/engine/BufferFormat;

    invoke-direct {v1, v0, p1, p2, v3}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    .line 16
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 17
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaomi/engine/BufferFormat;->setDepthBufferSize(Landroid/util/Size;)V

    :cond_5
    const/4 p2, 0x4

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParallelSession@1: bufferFormat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShotParallelBase"

    invoke-static {p2, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 20
    new-instance v2, LOooO00o/OooO0O0/OooO0O0/OooO0o;

    invoke-direct {v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o;-><init>(Lcom/xiaomi/engine/BufferFormat;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    const-string p2, "error in zipper handler"

    .line 21
    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_2
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    return-object v1
.end method

.method public configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;
    .locals 4

    .line 23
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 24
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->hasDualCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 25
    :goto_0
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v3, 0x8002

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x204

    const/4 v3, 0x0

    if-ne p3, v0, :cond_2

    .line 26
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x202

    if-ne p3, v0, :cond_3

    .line 27
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    goto :goto_1

    .line 28
    :cond_3
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-direct {v0, v3, v2, v2, p3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZI)V

    .line 29
    :goto_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 30
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 31
    new-instance v1, Lcom/xiaomi/engine/BufferFormat;

    invoke-direct {v1, p3, p1, p2, v0}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    .line 32
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    const/4 v0, 0x4

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParallelSession@2: bufferFormat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShotParallelBase"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 34
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaomi/engine/BufferFormat;->setDepthBufferSize(Landroid/util/Size;)V

    .line 35
    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 36
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0oo;

    invoke-direct {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0oo;-><init>(Lcom/xiaomi/engine/BufferFormat;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    const-string p2, "error in zipper handler"

    .line 37
    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_2
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p3, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    return-object v1
.end method

.method public generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    const-class v1, Landroid/hardware/camera2/CaptureRequest;

    const-string v2, "getNativeCopy"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Parcelable;

    .line 4
    new-instance p1, Lcom/xiaomi/engine/PreProcessData;

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result v4

    .line 5
    invoke-virtual {p2}, Lcom/xiaomi/engine/BufferFormat;->getBufferFormat()I

    move-result v5

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/engine/PreProcessData;-><init>(IIIILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelBase"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "/"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSoundTimeWhenAnchor(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getSoundTimeWhenAnchor()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "original soundTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShotParallelBase"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    and-int/lit8 p1, v0, 0x3

    goto :goto_1

    :cond_1
    shr-int/lit8 p1, v0, 0x4

    goto :goto_0

    :cond_2
    shr-int/lit8 p1, v0, 0x2

    :goto_0
    and-int/2addr p1, v4

    .line 3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final soundTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public isFakeSatEnabled()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->isFakeSatEnable(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAKE_SAT_ENABLED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShotParallelBase"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAKE_SAT_FLASH_NEEDED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAKE_SAT_HDR_NEEDED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAKE_SAT_LLS_NEEDED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    :cond_4
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v3

    .line 11
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4, v3}, Lcom/android/camera2/MiCamera2;->getFakeSatMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 12
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getFakeSatOutputSize()Landroid/util/Size;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_0

    :catch_0
    :cond_5
    move v3, v1

    .line 13
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAKE_SAT_HAS_VALID_SURFACE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_6

    return v1

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v1

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAKE_SAT_ZOOM_RATIO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0
.end method

.method public isIn3OrMoreSatMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    return v0
.end method

.method public isInMultiSurfaceSatMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    return v0
.end method

.method public notifyResultData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onImageReceived(Landroid/media/Image;I)V
    .locals 0

    return-void
.end method

.method public preCapture(Lcom/xiaomi/engine/PreProcessData;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getInstance()Lcom/xiaomi/camera/core/ParallelDataZipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, LOooO00o/OooO0O0/OooO0O0/OooO0oO;

    invoke-direct {v2, v0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0oO;-><init>(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/engine/PreProcessData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p1, "ShotParallelBase"

    const-string v0, "error in zipper handler"

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public processCaptureFail()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->deleteRecordByPath(Ljava/lang/String;)V

    return-void
.end method
