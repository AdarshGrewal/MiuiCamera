.class public Lcom/android/camera/storage/ImageSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "ImageSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageSaveRequest"


# instance fields
.field public exif:Lcom/android/gallery3d/exif/ExifInterface;

.field public finalImage:Z

.field public isHide:Z

.field public isMap:Z

.field public isParallelProcess:Z

.field public mirror:Z

.field public oldTitle:Ljava/lang/String;

.field public previewThumbnailHash:I

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaveRequest$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$200(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$300(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 6
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$400(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    .line 7
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$500(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    .line 8
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$600(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    .line 9
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$700(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    .line 10
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$800(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    .line 11
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$900(Lcom/android/camera/storage/ImageSaveRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    return-void
.end method

.method private trackScenarioAbort()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera/statistic/ScenarioTrackUtil;->sShotToGalleryTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/android/camera/statistic/ScenarioTrackUtil;->sShotToViewTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V

    :cond_0
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
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    return v0
.end method

.method public onFinish()V
    .locals 7

    const/4 v0, 0x4

    const-string v1, "ImageSaveRequest"

    const-string v2, "image save onFinish"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 3
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 5
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "algo_capture_total_"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algo_image_save_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 6
    invoke-virtual {v5}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "shot_2_view"

    aput-object v4, v2, v3

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction([Ljava/lang/String;)V

    .line 8
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->getSize()I

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
    instance-of v0, p1, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 12
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    .line 13
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$200(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$300(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 16
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$400(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    .line 17
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$500(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    .line 18
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$600(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    .line 19
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$700(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    .line 20
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$800(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    .line 21
    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$900(Lcom/android/camera/storage/ImageSaveRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 2
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    .line 3
    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v5, "mimoji"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v16, v3

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 4
    :goto_0
    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    const-string v15, "ImageSaveRequest"

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-eqz v2, :cond_1

    if-eqz v16, :cond_2

    .line 5
    :cond_1
    iget-object v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-boolean v8, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    iget-object v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v11, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget v12, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v13, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v14, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    const/4 v2, 0x0

    move-object v4, v15

    move-object v15, v2

    invoke-static/range {v5 .. v16}, Lcom/android/camera/ExifTool;->updateExif([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;Landroid/hardware/camera2/impl/CameraMetadataNative;Z)[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    goto :goto_1

    :cond_2
    move-object v4, v15

    const-string/jumbo v2, "save with null jpeg data!"

    .line 6
    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_1
    iget-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 8
    iget-object v5, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v7, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    if-eqz v2, :cond_3

    move v8, v3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v9, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    iget-object v10, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    iget v12, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget v13, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v14, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v15, v0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    invoke-static/range {v5 .. v15}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v1, v2

    goto :goto_3

    .line 9
    :cond_4
    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-eqz v2, :cond_5

    .line 10
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v8, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    iget v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget-boolean v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    iget v11, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v12, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    const/16 v27, 0x0

    iget-boolean v13, v0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    iget-boolean v14, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    iget-boolean v15, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    move-wide/from16 v19, v6

    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v2

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    invoke-static/range {v17 .. v30}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    .line 11
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    .line 12
    iget-boolean v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaveRequest;->isFinal()Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 13
    :goto_4
    iget-object v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v5, :cond_b

    if-eqz v2, :cond_9

    .line 14
    iget v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    int-to-double v5, v2

    iget v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    sget v2, Lcom/android/camera/Thumbnail;->THUMBNAIL_SIZE_DEFAULT:I

    int-to-double v7, v2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    const-string v5, "image save try to create thumbnail"

    .line 16
    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-boolean v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    if-eqz v5, :cond_7

    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-boolean v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    .line 18
    invoke-static {v2, v1, v5}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    goto :goto_5

    :cond_7
    iget-object v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget v6, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget-boolean v7, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    .line 19
    invoke-static {v5, v6, v2, v1, v7}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_8

    .line 20
    iget-object v5, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v5, v2, v3}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_6

    .line 21
    :cond_8
    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v2}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_6

    .line 22
    :cond_9
    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v2, v3, v1}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    .line 23
    :goto_6
    iget-object v2, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v2, v1, v3, v5}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 24
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_a

    .line 25
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToGalleryEnd(ZJ)V

    .line 26
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v1

    invoke-static {v3, v1, v2}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToViewEnd(ZJ)V

    :cond_a
    const-string v1, "image save finished"

    .line 27
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 28
    :cond_b
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    .line 29
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v1, v3, v2, v4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_7

    :cond_c
    const-string v1, "image save failed"

    .line 30
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_d

    .line 31
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_7

    .line 32
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaveRequest;->trackScenarioAbort()V

    const-string/jumbo v1, "set mWaitingForUri is false"

    .line 33
    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v1, v2, v3}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    .line 35
    :goto_7
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_e

    const/16 v2, 0x9

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v1

    if-eq v2, v1, :cond_e

    .line 36
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_e
    return-void
.end method
