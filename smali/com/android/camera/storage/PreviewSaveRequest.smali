.class public final Lcom/android/camera/storage/PreviewSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "PreviewSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/PreviewSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PreviewSaveRequest"


# instance fields
.field public mFinalImage:Z

.field public mIsParallelProcess:Z

.field public mNoGaussian:Z

.field public mSavePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$000(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$100(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mFinalImage:Z

    .line 5
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$200(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mIsParallelProcess:Z

    .line 6
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$300(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mNoGaussian:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/PreviewSaveRequest$Builder;Lcom/android/camera/storage/PreviewSaveRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/PreviewSaveRequest;-><init>(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSize:I

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mFinalImage:Z

    return v0
.end method

.method public onFinish()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 2
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 4
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->getSize()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mData:[B

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 2
    iget-boolean v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mNeedThumbnail:Z

    iput-boolean v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    .line 3
    iget-wide v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mDate:J

    iput-wide v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    .line 4
    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    .line 5
    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mWidth:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    .line 6
    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mHeight:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    .line 7
    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mOrientation:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    .line 8
    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mAlgorithmName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    .line 10
    instance-of v0, p1, Lcom/android/camera/storage/PreviewSaveRequest$Builder;

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Lcom/android/camera/storage/PreviewSaveRequest$Builder;

    .line 12
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$000(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$100(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mFinalImage:Z

    .line 14
    invoke-static {p1}, Lcom/android/camera/storage/PreviewSaveRequest$Builder;->access$200(Lcom/android/camera/storage/PreviewSaveRequest$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/storage/PreviewSaveRequest;->mIsParallelProcess:Z

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/PreviewSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 2
    iget-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    iget-object v3, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "PreviewSaveRequest"

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "save preview: task existed! isValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, v1, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil$ParallelProvider;->deleteInProvider(Landroid/content/Context;J)V

    .line 8
    :cond_1
    monitor-exit v2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    iget-wide v3, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/db/item/DbItemBase;->generateItem(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/db/element/SaveTask;

    .line 10
    iget-object v3, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/camera/db/element/SaveTask;->setPath(Ljava/lang/String;)V

    .line 11
    iget-boolean v3, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mNoGaussian:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/camera/db/element/SaveTask;->setNoGaussian(I)V

    .line 12
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/db/element/SaveTask;->setApplicationId(I)V

    .line 13
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/camera/db/item/DbItemBase;->endItemAndInsert(Ljava/lang/Object;J)J

    const-string v0, "PreviewSaveRequest"

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert preview picture: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-boolean v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/PreviewSaveRequest;->isFinal()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 16
    iget v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    int-to-double v8, v0

    iget v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    int-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    sget v0, Lcom/android/camera/Thumbnail;->THUMBNAIL_SIZE_DEFAULT:I

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    const/4 v8, 0x4

    const-string v9, "PreviewSaveRequest"

    const-string v10, "image save try to create thumbnail"

    .line 18
    invoke-static {v8, v9, v10}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v8, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget v9, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    invoke-static {v8, v9, v0, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 20
    invoke-virtual {v3}, Lcom/android/camera/Thumbnail;->startWaitingForUri()V

    .line 21
    iget-object v0, v1, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0, v3, v5}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_2

    .line 22
    :cond_5
    iget-object v0, v1, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    .line 23
    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-boolean v4, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v4, :cond_7

    .line 25
    iget-object v8, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v9, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-boolean v11, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mIsParallelProcess:Z

    iget-object v12, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v14, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget v15, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v4, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v5, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move/from16 v16, v4

    move-object/from16 v17, v5

    invoke-static/range {v8 .. v17}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 26
    :cond_7
    iget-object v8, v1, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-wide v10, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v12, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    iget v13, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget-object v14, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v15, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    iget v4, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v5, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-boolean v9, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mIsParallelProcess:Z

    iget-boolean v6, v1, Lcom/android/camera/storage/PreviewSaveRequest;->mNoGaussian:Z

    move v7, v9

    move-object v9, v0

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v20, v7

    move/from16 v21, v6

    invoke-static/range {v8 .. v21}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;

    move-result-object v4

    if-eqz v3, :cond_8

    .line 27
    invoke-virtual {v3, v4}, Lcom/android/camera/Thumbnail;->setUri(Landroid/net/Uri;)V

    .line 28
    :cond_8
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string/jumbo v5, "shot_thumbnail_gap"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    if-eqz v4, :cond_a

    .line 30
    iget-object v3, v1, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v5, 0x2

    invoke-interface {v3, v4, v0, v5}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 31
    iget-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_9

    .line 32
    iget-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-static {v0, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToGalleryEnd(ZJ)V

    :cond_9
    const-string v0, "PreviewSaveRequest"

    const-string v3, "image save finished"

    .line 33
    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 34
    :cond_a
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sShotToGalleryTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    iget-object v3, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V

    const-string v0, "PreviewSaveRequest"

    const-string v3, "image save failed"

    .line 35
    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_b
    :goto_4
    return-void
.end method
