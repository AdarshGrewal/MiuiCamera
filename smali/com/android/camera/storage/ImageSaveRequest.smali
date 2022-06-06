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

    invoke-direct {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$200(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$300(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$400(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$500(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$600(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$700(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$800(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$900(Lcom/android/camera/storage/ImageSaveRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    return-void
.end method

.method private trackScenarioAbort()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/camera/statistic/ScenarioTrackUtil;->sShotToGalleryTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;Ljava/lang/String;)V

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

    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSize:I

    return v0
.end method

.method public isFinal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    return v0
.end method

.method public onFinish()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->getSize()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V
    .locals 2

    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mData:[B

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mNeedThumbnail:Z

    iput-boolean v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    iget-wide v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mDate:J

    iput-wide v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

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

    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mWidth:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mHeight:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mOrientation:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mAlgorithmName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    instance-of v0, p1, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$200(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$300(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$400(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$500(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$600(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->finalImage:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$700(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$800(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    invoke-static {p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->access$900(Lcom/android/camera/storage/ImageSaveRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->save()V

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 35

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    iget-object v7, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-boolean v5, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v8, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    iget v10, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget v11, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v12, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v13, v0, Lcom/android/camera/storage/ImageSaveRequest;->oldTitle:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    iget-boolean v15, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    move-object/from16 v18, v7

    iget-object v7, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    move-object/from16 v16, v7

    iget-object v7, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    move-object/from16 v17, v7

    move-object/from16 v7, v18

    invoke-static/range {v1 .. v17}, Lcom/android/camera/storage/Storage;->updateImageWithExtraExif(Landroid/content/Context;[BJZLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;ZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_0
    move-object/from16 v18, v7

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "mimoji"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v31, 0x1

    goto :goto_0

    :cond_1
    const/16 v31, 0x0

    :goto_0
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-wide v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    move-wide/from16 v20, v1

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    move-object/from16 v24, v1

    iget-boolean v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    move/from16 v25, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    move/from16 v26, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    move/from16 v27, v1

    const/16 v28, 0x0

    iget-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isHide:Z

    move/from16 v29, v1

    iget-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    move/from16 v30, v1

    iget-boolean v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->isParallelProcess:Z

    move/from16 v32, v1

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    move-object/from16 v34, v1

    invoke-static/range {v18 .. v34}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    move-object/from16 v7, v18

    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    iget-boolean v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaveRequest;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->uri:Landroid/net/Uri;

    const-string v2, "ImageSaveRequest"

    if-eqz v1, :cond_8

    if-eqz v15, :cond_6

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    int-to-double v3, v1

    iget v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    sget v1, Lcom/android/camera/Thumbnail;->THUMBNAIL_SIZE_DEFAULT:I

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const-string v3, "image save try to create thumbnail"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->isMap:Z

    if-eqz v3, :cond_4

    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    invoke-static {v1, v7, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget v4, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget-boolean v5, v0, Lcom/android/camera/storage/ImageSaveRequest;->mirror:Z

    invoke-static {v3, v4, v1, v7, v5}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v1, v3, v7}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    :goto_4
    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v1, v7, v3, v4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToGalleryEnd(ZJ)V

    iget-object v3, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToViewEnd(ZJ)V

    :cond_7
    const-string v1, "image save finished"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->title:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v1, v3, v2, v4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_5

    :cond_9
    const-string v1, "image save failed"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_a

    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    goto :goto_5

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaveRequest;->trackScenarioAbort()V

    const-string/jumbo v1, "set mWaitingForUri is false"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v2, v0, Lcom/android/camera/storage/ImageSaveRequest;->previewThumbnailHash:I

    invoke-interface {v1, v2, v3}, Lcom/android/camera/storage/SaverCallback;->updatePreviewThumbnailUri(ILandroid/net/Uri;)V

    :goto_5
    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_b

    const/16 v2, 0x9

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v1

    if-eq v2, v1, :cond_b

    iget-object v1, v0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_b
    return-void
.end method
