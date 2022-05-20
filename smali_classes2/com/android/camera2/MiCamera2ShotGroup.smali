.class public Lcom/android/camera2/MiCamera2ShotGroup;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MiCamera2ShotGroup"


# instance fields
.field public final MAX_GROUP_FACE_NUM:I

.field public mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field public mContext:Landroid/content/Context;

.field public mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

.field public mGroupShot:Lcom/android/camera/groupshot/GroupShot;

.field public mGroupShotFolderName:Ljava/lang/String;

.field public mReceivedJpegCallbackNum:I

.field public mTotalJpegCallbackNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/MiCamera2;ILandroid/content/Context;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->MAX_GROUP_FACE_NUM:I

    .line 3
    iput p2, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    .line 4
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mContext:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotGroup;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotGroup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2ShotGroup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    return p0
.end method

.method private getGroupShotMaxImage()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 3
    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    return v0
.end method

.method private getGroupShotNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/Util;->isMemoryRich(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->getGroupShotMaxImage()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initGroupShot(I)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/groupshot/GroupShot;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    new-instance v1, Lcom/android/camera/groupshot/GroupShot;

    invoke-direct {v1}, Lcom/android/camera/groupshot/GroupShot;-><init>()V

    iput-object v1, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 4
    :cond_2
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    .line 6
    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooO00()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/16 v6, 0xa

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    .line 9
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    move/from16 v5, p1

    .line 10
    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    goto :goto_0

    .line 11
    :cond_3
    iget-object v11, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/16 v13, 0xa

    .line 12
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v14

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v15

    .line 13
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v16

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v17

    move/from16 v12, p1

    .line 14
    invoke-virtual/range {v11 .. v17}, Lcom/android/camera/groupshot/GroupShot;->initialize(IIIIII)I

    :goto_0
    return-void
.end method

.method private prepareGroupShot()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->getGroupShotNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2ShotGroup;->initGroupShot(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/groupshot/GroupShot;->attach_start(I)I

    goto :goto_0

    .line 5
    :cond_0
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    :goto_0
    return-void
.end method


# virtual methods
.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotGroup$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotGroup$1;-><init>(Lcom/android/camera2/MiCamera2ShotGroup;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPhotoImageReader()Landroid/media/ImageReader;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    sget-object v2, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isInQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 11
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 12
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotGroup;->notifyResultData([B)V

    return-void
.end method

.method public notifyResultData([B)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    sget-object v1, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v2, "notifyResultData: null parallel callback"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v4

    .line 6
    iget-object v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShotFolderName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShotFolderName:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5, v1}, Lcom/android/camera/groupshot/GroupShot;->attach([B)I

    move-result v5

    .line 9
    sget-boolean v6, Lcom/android/camera/Util;->sIsDumpOrigJpg:Z

    if-eqz v6, :cond_2

    .line 10
    iget v6, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    iget-object v7, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShotFolderName:Ljava/lang/String;

    invoke-static {v1, v6, v7}, Lcom/android/camera/storage/Storage;->saveOriginalPic([BILjava/lang/String;)V

    .line 11
    :cond_2
    sget-object v6, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v3

    const-string v5, "groupShot attach() = 0x%08x index=%d"

    .line 13
    invoke-static {v7, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget v5, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    iget v6, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    if-ge v5, v6, :cond_3

    if-ne v5, v3, :cond_6

    .line 15
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSaveGroushotPrimitiveOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3, v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 17
    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3, v1, v9}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 18
    iget-object v1, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v3, v3}, Lcom/xiaomi/camera/core/ParallelCallback;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 20
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getOutputSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v17

    .line 22
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getJpegRotation()I

    move-result v1

    add-int v1, v1, v17

    .line 23
    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_4

    move v15, v2

    move/from16 v16, v5

    goto :goto_0

    :cond_4
    move/from16 v16, v2

    move v15, v5

    .line 24
    :goto_0
    new-instance v1, Lcom/android/camera/module/SaveOutputImageTask;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/camera/storage/SaverCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 26
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getLocation()Landroid/location/Location;

    move-result-object v14

    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShotFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mGroupShot:Lcom/android/camera/groupshot/GroupShot;

    move-object v10, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-direct/range {v10 .. v19}, Lcom/android/camera/module/SaveOutputImageTask;-><init>(Lcom/android/camera/storage/SaverCallback;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/groupshot/GroupShot;)V

    .line 27
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 29
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJ)V

    goto :goto_1

    .line 30
    :cond_5
    sget-object v1, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v2, "notifyResultData: null picture callback"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public onImageReceived(Landroid/media/Image;I)V
    .locals 6

    .line 1
    sget-object p2, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    .line 3
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v4, v2

    if-nez p2, :cond_0

    .line 4
    sget-object p2, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v2, "onImageReceived: image arrived first"

    invoke-static {p2, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->setTimestamp(J)V

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/camera/Util;->getFirstPlane(Landroid/media/Image;)[B

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/camera2/MiCamera2ShotGroup;->notifyResultData([B)V

    .line 9
    iget p1, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mReceivedJpegCallbackNum:I

    iget p2, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mTotalJpegCallbackNum:I

    if-ge p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mDeparted:Z

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->startSessionCapture()V

    :cond_1
    return-void
.end method

.method public prepare()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->prepareGroupShot()V

    return-void
.end method

.method public startSessionCapture()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera2/MiCamera2Shot;->generateParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotGroup;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v1, "startSessionCapture: null task data"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotGroup;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 7
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v2, "Failed to capture a still picture, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 11
    sget-object v1, Lcom/android/camera2/MiCamera2ShotGroup;->TAG:Ljava/lang/String;

    const-string v2, "Cannot capture a still picture"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method
