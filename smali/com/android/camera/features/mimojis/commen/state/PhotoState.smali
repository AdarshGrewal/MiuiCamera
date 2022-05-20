.class public Lcom/android/camera/features/mimojis/commen/state/PhotoState;
.super Ljava/lang/Object;
.source "PhotoState.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/state/IMiState;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Lcom/android/camera/ActivityBase;

.field public mIsNeedCapture:Z

.field public final mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

.field public final mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public final mTextureId:[I

.field public final mUiHandler:Landroid/os/Handler;

.field public mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mTextureId:[I

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getContext()Lcom/android/camera/ActivityBase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    .line 5
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mUiHandler:Landroid/os/Handler;

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-void
.end method

.method public static synthetic OooO00o(I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v1, 0x7f1204ea

    .line 3
    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMimojiFaceDetect(ZI)V

    :cond_1
    return-void
.end method

.method private dealCaptureData(Lcom/android/camera/Camera;[BLandroid/graphics/Rect;)V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->TAG:Ljava/lang/String;

    const-string v2, "dealCaptureData: "

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3
    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 4
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    iget-object v0, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v0

    const/16 v3, 0x5a

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v11, 0x10e

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result v0

    if-ne v0, v11, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {v9, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v9, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    :goto_1
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 9
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getDrawSize()Landroid/util/Size;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 10
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v5, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result v5

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result v5

    add-int/lit16 v5, v5, 0xb4

    rem-int/lit16 v5, v5, 0x168

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result v5

    :goto_2
    if-eqz p1, :cond_9

    .line 12
    invoke-static {v14}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v6

    .line 13
    iget-object v7, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v2

    goto :goto_3

    :cond_4
    move-object v7, v4

    :goto_3
    iget-object v8, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v8}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v8

    invoke-static {v13, v7, v5, v8}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v7

    invoke-virtual {v7, v5, v12, v12}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v5, :cond_5

    .line 17
    invoke-virtual {v5}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v5

    move/from16 v16, v5

    goto :goto_4

    :cond_5
    move/from16 v16, v14

    .line 18
    :goto_4
    new-instance v5, Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, -0x4

    const/16 v20, 0x0

    move-object v15, v5

    invoke-direct/range {v15 .. v20}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;)V

    .line 20
    invoke-virtual {v5, v6, v14}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillJpegData([BI)V

    .line 21
    iget-object v6, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v12

    goto :goto_5

    :cond_6
    move v6, v14

    :goto_5
    iget-object v7, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 22
    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getOrientation()I

    move-result v7

    .line 23
    invoke-static {v6, v7}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v6

    add-int/2addr v6, v11

    .line 24
    rem-int/lit16 v6, v6, 0x168

    .line 25
    new-instance v7, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    const/16 v8, 0x100

    invoke-direct {v7, v0, v0, v0, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    .line 26
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v7

    .line 28
    invoke-virtual {v7, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v6

    .line 29
    invoke-static {v14}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v6

    sget v7, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 30
    invoke-virtual {v6, v7}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v6

    .line 31
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v11

    :cond_7
    invoke-virtual {v6, v3}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/camera/Util;->getTimeWatermark(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_8
    move-object v6, v13

    :goto_6
    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v3

    .line 35
    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v0

    .line 37
    invoke-virtual {v5, v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v5, v13, v13, v13}, Lcom/android/camera/storage/ImageSaver;->onParallelProcessFinish(Lcom/xiaomi/camera/core/ParallelTaskData;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    if-eqz v4, :cond_b

    .line 41
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    :cond_b
    iget-object v0, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v0, v14}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 45
    instance-of v2, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v2, :cond_e

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v13, v4

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v13, v4

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    .line 46
    :goto_7
    :try_start_2
    sget-object v3, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimoji void CaptureCallback[byteBuffer] exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    if-eqz v13, :cond_d

    .line 49
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 50
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_d
    iget-object v0, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v0, v14}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 53
    instance-of v2, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v2, :cond_e

    .line 54
    :goto_8
    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 55
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCaptureCallback()V

    .line 56
    :cond_e
    iput-boolean v14, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mIsNeedCapture:Z

    .line 57
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    return-void

    .line 58
    :goto_9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 59
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    if-eqz v13, :cond_10

    .line 60
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_10

    .line 61
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    :cond_10
    iget-object v2, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v2, v14}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setActionState(I)V

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    .line 64
    instance-of v3, v2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v3, :cond_11

    .line 65
    check-cast v2, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 66
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->onMimojiCaptureCallback()V

    .line 67
    :cond_11
    iput-boolean v14, v1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mIsNeedCapture:Z

    .line 68
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    .line 69
    throw v0
.end method

.method private getDeviceWaterMarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCameraWaterMarkOpen()Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v2

    .line 4
    new-instance v3, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkFilePathVendor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;-><init>(ZZZLjava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isLTR()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setLTR(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object v1

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCustomWatermark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->setCustomText(Ljava/lang/String;)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->build()Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    return-object v0
.end method

.method private getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/PictureInfo;

    invoke-direct {v0}, Lcom/xiaomi/camera/core/PictureInfo;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->isFrontMirror()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setFrontMirror(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setSensorType(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const-string/jumbo v1, "off"

    .line 5
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setHdrType(Ljava/lang/String;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    const v1, 0x800b

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PictureInfo;->setOpMode(I)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->end()V

    return-object v0
.end method

.method private isFrontMirror()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result v0

    return v0
.end method

.method private readPreviewPixels(Lcom/android/camera/Camera;Landroid/graphics/Rect;)[B
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p1, v0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 3
    iget v3, p2, Landroid/graphics/Rect;->right:I

    mul-int p1, v3, v4

    mul-int/lit8 p1, p1, 0x4

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, p1

    .line 5
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic OooO00o([BLandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->dealCaptureData(Lcom/android/camera/Camera;[BLandroid/graphics/Rect;)V

    return-void
.end method

.method public initModeState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZZ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDrawFrame: mimojiControl is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 3
    :cond_0
    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mTextureId:[I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->drawPreview(Landroid/graphics/Rect;IIZ[IZ)Z

    move-result p2

    if-eqz p4, :cond_1

    return p2

    .line 4
    :cond_1
    iget-boolean p3, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mIsNeedCapture:Z

    if-eqz p3, :cond_3

    .line 5
    iput-boolean v7, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mIsNeedCapture:Z

    .line 6
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    if-nez p3, :cond_2

    return v7

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p3

    invoke-virtual {p3, v7}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpTakePicture(I)V

    .line 8
    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    check-cast p3, Lcom/android/camera/Camera;

    invoke-direct {p0, p3, p1}, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->readPreviewPixels(Lcom/android/camera/Camera;Landroid/graphics/Rect;)[B

    move-result-object p3

    .line 9
    iget-object p4, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {p4}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    new-instance p5, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0Oo;

    invoke-direct {p5, p0, p3, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/commen/state/PhotoState;[BLandroid/graphics/Rect;)V

    invoke-interface {p4, p5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return p2
.end method

.method public onModeStateBack(IZ)V
    .locals 0

    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onFaceDetectResult(Landroid/media/Image;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mUiHandler:Landroid/os/Handler;

    new-instance p3, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0OO;

    invoke-direct {p3, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0Oo/OooO0OO;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    return-void

    .line 5
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDrawFrame: mimojiControl is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 3

    .line 1
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCaptureImage: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDrawFrame: mimojiControl is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mIsNeedCapture:Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashMode(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-interface {v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->getMimojiPara()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2CaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZ)V

    return-void

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/PhotoState;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCaptureImage:is currentModule alive ? "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
