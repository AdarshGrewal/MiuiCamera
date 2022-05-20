.class public final Lcom/android/camera/storage/ParallelSaveRequest;
.super Lcom/android/camera/storage/AbstractSaveRequest;
.source "ParallelSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ParallelSaveRequest$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mSavePath:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/storage/ParallelSaveRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/storage/AbstractSaveRequest;-><init>(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V

    .line 3
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    .line 4
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;Lcom/android/camera/storage/ParallelSaveRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ParallelSaveRequest;-><init>(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)V

    return-void
.end method

.method private parseDocAndSave(IILjava/lang/String;Lcom/android/zxing/PreviewImage;[FLjava/lang/String;Landroid/net/Uri;)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v13, p2

    move-object/from16 v2, p3

    move-object/from16 v14, p6

    .line 1
    iget-object v3, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2
    sget-object v4, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse document E: shootOrientation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", orientation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", photo bitmap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", documentValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", previewImage data length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", previewImage size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", previewPoints = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getData()[B

    move-result-object v7

    .line 8
    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getWidth()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Lcom/android/zxing/PreviewImage;->getHeight()I

    move-result v10

    .line 9
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    move-result-object v4

    invoke-virtual {v4, v0, v13}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getRotateYUVWithBitmap(II)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    move-result-object v12

    move-object v8, v3

    move-object/from16 v11, p5

    .line 10
    invoke-virtual/range {v6 .. v12}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doAlginDocument([BLandroid/graphics/Bitmap;II[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F

    move-result-object v4

    .line 11
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse document: points = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    move-result-object v9

    .line 13
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    move-result-object v6

    sget-object v10, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->PPT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    const/4 v11, 0x0

    move-object v7, v3

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_0
    new-instance v6, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v6}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 16
    :try_start_0
    iget-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 17
    invoke-virtual {v6}, Lcom/android/gallery3d/exif/ExifInterface;->removeCompressedThumbnail()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    sget-object v7, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readExif: error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    .line 19
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiDocPhotoVersion(B)Z

    .line 20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v6

    .line 22
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v3, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 24
    iget-object v6, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v6, v6

    int-to-long v6, v6

    invoke-static {v0, v6, v7, v4, v2}, Lcom/android/camera/storage/Storage;->addXmpData([BJ[FLjava/lang/String;)[B

    move-result-object v0

    .line 25
    array-length v2, v0

    iget-object v4, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v4, v4

    add-int/2addr v2, v4

    new-array v15, v2, [B

    .line 26
    array-length v2, v0

    invoke-static {v0, v5, v15, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v2, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v5, v15, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parse document X: "

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-boolean v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v0, :cond_1

    .line 30
    iget-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v4, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    const/16 v19, 0x0

    iget-object v2, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v7, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    iget v8, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v9, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v10, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    move-object/from16 v20, v2

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    invoke-static/range {v16 .. v25}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 31
    :cond_1
    iget-object v2, v1, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v8, v1, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    move-object v3, v15

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    move/from16 v9, p2

    .line 34
    invoke-static/range {v2 .. v12}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object/from16 v2, p7

    .line 35
    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 36
    invoke-direct {v1, v13, v14, v0, v15}, Lcom/android/camera/storage/ParallelSaveRequest;->refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V

    :cond_2
    return-void

    .line 37
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseDocAndSave: save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but doCropAndEnhance bitmap is null!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4080000000000000L    # 512.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 3
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri changed, so must try to create thumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    invoke-static {p4, p1, v0, p3, v1}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p4, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {p4, p1, v1}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 p4, 0x2

    invoke-interface {p1, p3, p2, p4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

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

    const/4 v0, 0x1

    return v0
.end method

.method public onFinish()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCaptureTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackShotToViewEnd(ZJ)V

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "algo_capture_total_"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algo_image_save_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 4
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "shot_2_view"

    aput-object v4, v2, v3

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction([Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    const/4 v0, 0x4

    .line 7
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    const-string v2, "image save onFinish"

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v1

    .line 9
    invoke-static {}, Lcom/android/gallery3d/exif/ExifHelper;->clearCacheMap()V

    .line 10
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saved image finished, timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ParallelTaskData;->getSavePath()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 13
    iget-object v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->releaseImageData()V

    .line 15
    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget v1, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public reFillSaveRequest(Lcom/android/camera/storage/AbstractSaveRequest$Builder;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mData:[B

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 2
    iget-wide v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mDate:J

    iput-wide v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    .line 3
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

    .line 4
    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mOrientation:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    .line 5
    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mWidth:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    .line 6
    iget v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mHeight:I

    iput v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    .line 7
    iget-boolean v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mNeedThumbnail:Z

    iput-boolean v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    .line 8
    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mAlgorithmName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iput-object v0, p0, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    .line 10
    instance-of v0, p1, Lcom/android/camera/storage/ParallelSaveRequest$Builder;

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Lcom/android/camera/storage/ParallelSaveRequest$Builder;

    .line 12
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$000(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    .line 13
    invoke-static {p1}, Lcom/android/camera/storage/ParallelSaveRequest$Builder;->access$100(Lcom/android/camera/storage/ParallelSaveRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/storage/ParallelSaveRequest;->save()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/storage/ParallelSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 26

    move-object/from16 v9, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/AbstractSaveRequest;->parserParallelTaskData()V

    .line 2
    sget-object v0, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    monitor-enter v10

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    iget-object v1, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v1, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/db/item/DbItemBase;->generateItem(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/db/element/SaveTask;

    .line 8
    iget-object v2, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/db/element/SaveTask;->setPath(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/db/element/SaveTask;->setStartTime(Ljava/lang/Long;)V

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/db/element/SaveTask;->setApplicationId(I)V

    .line 11
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/camera/db/item/DbItemBase;->endItemAndInsert(Ljava/lang/Object;J)J

    .line 12
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert full size picture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget v1, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    .line 14
    iget v2, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    .line 15
    iget-object v3, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v3

    .line 16
    iget v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    add-int/2addr v4, v3

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v25, v2

    move v2, v1

    move/from16 v1, v25

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 18
    :cond_2
    iget-object v5, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->getResultUri(J)Landroid/net/Uri;

    move-result-object v5

    .line 20
    sget-object v6, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "algo mark: uri: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v5, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "algo mark: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mOrientation:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v5, v9, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v6, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/db/element/SaveTask;->getMediaStoreId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 23
    iget-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v4, :cond_3

    iget-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDocumentBean()Lcom/android/zxing/DocumentDecoder$DocumentBean;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 24
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 25
    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->getCurrentModuleIndex()I

    move-result v4

    const/16 v5, 0xba

    if-ne v4, v5, :cond_3

    .line 26
    iget-object v1, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->getShootOrientation()I

    move-result v2

    .line 27
    iget-object v1, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDocumentBean()Lcom/android/zxing/DocumentDecoder$DocumentBean;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/zxing/DocumentDecoder$DocumentBean;->getDocValue()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v1}, Lcom/android/zxing/DocumentDecoder$DocumentBean;->getImage()Lcom/android/zxing/PreviewImage;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/zxing/DocumentDecoder$DocumentBean;->getPoints()[F

    move-result-object v6

    move-object/from16 v1, p0

    .line 30
    invoke-direct/range {v1 .. v8}, Lcom/android/camera/storage/ParallelSaveRequest;->parseDocAndSave(IILjava/lang/String;Lcom/android/zxing/PreviewImage;[FLjava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 31
    :cond_3
    iget-boolean v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v4, :cond_4

    .line 32
    iget-object v11, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v12, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v15, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v5, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v6, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v14, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move-object/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v16, v4

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-static/range {v11 .. v20}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v4

    iput-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 33
    :cond_4
    iget-object v11, v9, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v12, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v13, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    const/4 v14, 0x0

    iget-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    const/16 v21, 0x0

    move-object v15, v8

    move-object/from16 v16, v7

    move-object/from16 v17, v4

    move/from16 v18, v3

    move/from16 v19, v1

    move/from16 v20, v2

    invoke-static/range {v11 .. v21}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {v1, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 35
    iget-object v2, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    invoke-direct {v9, v3, v7, v1, v2}, Lcom/android/camera/storage/ParallelSaveRequest;->refreshThumbnail(ILjava/lang/String;Landroid/net/Uri;[B)V

    .line 36
    :cond_5
    :goto_1
    iget-object v1, v9, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    goto/16 :goto_8

    .line 37
    :cond_6
    :goto_2
    iget-object v5, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/Util;->getFileTitleFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    iget-wide v5, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    invoke-static {v5, v6}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    .line 38
    :goto_3
    iget-boolean v6, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mExifUpdated:Z

    if-nez v6, :cond_9

    .line 39
    iget-object v11, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-wide v12, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    if-eqz v0, :cond_8

    const/4 v14, 0x1

    goto :goto_4

    :cond_8
    move v14, v4

    :goto_4
    iget-object v15, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mAlgorithmName:Ljava/lang/String;

    iget-object v6, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v8, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mWidth:I

    iget v7, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mHeight:I

    iget-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v6

    move/from16 v17, v3

    move/from16 v18, v8

    move/from16 v19, v7

    move-object/from16 v20, v4

    invoke-static/range {v11 .. v20}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v4

    iput-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    .line 40
    :cond_9
    iget-object v11, v9, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-wide v13, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mDate:J

    iget-object v15, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mLocation:Landroid/location/Location;

    iget-object v4, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    iget-boolean v6, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mIsHeic:Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    if-eqz v0, :cond_a

    const/16 v23, 0x1

    goto :goto_5

    :cond_a
    const/16 v23, 0x0

    :goto_5
    if-eqz v0, :cond_b

    const/16 v24, 0x1

    goto :goto_6

    :cond_b
    const/16 v24, 0x0

    :goto_6
    move-object v12, v5

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v1

    move/from16 v20, v2

    invoke-static/range {v11 .. v24}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 41
    invoke-static {v5}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 42
    iget-boolean v6, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mNeedThumbnail:Z

    if-eqz v6, :cond_d

    int-to-double v6, v1

    int-to-double v11, v2

    .line 43
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    sget v8, Lcom/android/camera/Thumbnail;->THUMBNAIL_SIZE_DEFAULT:I

    int-to-double v11, v8

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    .line 45
    iget-object v7, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    const/4 v8, 0x0

    invoke-static {v7, v3, v6, v4, v8}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 46
    iget-object v7, v9, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v8, 0x1

    invoke-interface {v7, v6, v8}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    const/4 v8, 0x1

    goto :goto_7

    .line 47
    :cond_c
    iget-object v6, v9, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v6}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_d
    const/4 v8, 0x0

    .line 48
    :goto_7
    iget-object v6, v9, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v7, 0x2

    invoke-interface {v6, v4, v5, v7}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    if-eqz v0, :cond_e

    .line 49
    sget-object v1, Lcom/android/camera/storage/ParallelSaveRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo mark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/db/element/SaveTask;->setMediaStoreId(Ljava/lang/Long;)V

    .line 52
    iget-object v1, v9, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    goto :goto_8

    :cond_e
    if-nez v8, :cond_11

    int-to-double v0, v1

    int-to-double v5, v2

    .line 53
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sget v2, Lcom/android/camera/Thumbnail;->THUMBNAIL_SIZE_DEFAULT:I

    int-to-double v5, v2

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 55
    iget-object v1, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mData:[B

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 56
    iget-object v1, v9, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 57
    :cond_f
    iget-object v0, v9, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iget-object v3, v9, Lcom/android/camera/storage/ParallelSaveRequest;->mSavePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->insertImageToParallelService(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_8

    .line 58
    :cond_10
    invoke-static {v5}, Lcom/android/camera/storage/Storage;->isSaveToHidenFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    iget-object v0, v9, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    const/4 v1, 0x3

    invoke-interface {v0, v4, v5, v1}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 60
    :cond_11
    :goto_8
    iget-object v0, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-eqz v0, :cond_12

    const/16 v0, 0x9

    iget-object v1, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getParallelType()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 61
    iget-object v0, v9, Lcom/android/camera/storage/AbstractSaveRequest;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 62
    :cond_12
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
