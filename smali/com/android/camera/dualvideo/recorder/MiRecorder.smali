.class public final Lcom/android/camera/dualvideo/recorder/MiRecorder;
.super Ljava/lang/Object;
.source "MiRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/recorder/MiRecorder$InfoListener;,
        Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;,
        Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MiRecorder"


# instance fields
.field public mCurrentVideoFilename:Ljava/lang/String;

.field public mCurrentVideoValues:Landroid/content/ContentValues;

.field public final mId:I

.field public mIsPaused:Z

.field public mIsRecording:Z

.field public final mListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

.field public final mLocation:Landroid/location/Location;

.field public final mMaxFileSize:J

.field public final mOrientation:I

.field public mProfile:Landroid/media/CamcorderProfile;

.field public mRecordDuration:J

.field public mRecordStartTime:J

.field public mRecorder:Landroid/media/MediaRecorder;

.field public mRecorderSurface:Landroid/view/Surface;

.field public mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

.field public final mVideoSize:Lcom/android/camera/CameraSize;


# direct methods
.method public constructor <init>(ILandroid/location/Location;JILcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mId:I

    .line 3
    iput-object p2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mLocation:Landroid/location/Location;

    .line 4
    iput-wide p3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mMaxFileSize:J

    .line 5
    iput p5, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mOrientation:I

    .line 6
    iput-object p6, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    .line 7
    iput-object p7, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    .line 8
    invoke-direct {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->initRecorder()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsRecording:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mListener:Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    return-object p0
.end method

.method private cleanupEmptyFile()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MiRecorder"

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no video file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object v2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete empty video file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-object v2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method private createName(JI)Ljava/lang/String;
    .locals 1

    if-gtz p3, :cond_0

    .line 1
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "\'VID\'_yyyyMMdd_HHmmss"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "mBaseFileName"

    return-object p1
.end method

.method private genContentValues(III)Landroid/content/ContentValues;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->createName(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_%d"

    const/4 v3, 0x1

    if-lez p2, :cond_0

    .line 3
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v1

    invoke-static {p2, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p3}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genContentValues: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiRecorder"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v2, "title"

    .line 12
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_display_name"

    .line 13
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    .line 14
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_data"

    .line 15
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    iget p3, p3, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mVideoSize:Lcom/android/camera/CameraSize;

    iget p3, p3, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "resolution"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double p3, v4, v6

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double p3, v4, v6

    if-eqz p3, :cond_2

    .line 19
    :cond_1
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string v2, "latitude"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 20
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "longitude"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 21
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1e

    if-lt p2, p3, :cond_3

    const-string/jumbo p1, "relative_path"

    const-string p2, "DCIM/Camera/"

    .line 22
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_pending"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p2, "save_cover"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method private getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecorderUtil;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/dualvideo/recorder/RecorderUtil;->HEVC_VIDEO_ENCODER_BITRATE:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no pre-defined bitrate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiRecorder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget p1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_0
    return p1
.end method

.method private initRecorder()V
    .locals 3

    .line 1
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 2
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorderSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 3
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v2

    iput v2, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 5
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mId:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->genContentValues(III)Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/storage/mediastore/VideoFile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/VideoFile;->initialize(ZLandroid/content/Intent;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->setupRecorder()V

    return-void
.end method

.method private setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "setParameterExtra("

    const-string v1, "MiRecorder"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setParameter"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 2
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v7

    .line 4
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") successful!"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") failed:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setupRecorder()V
    .locals 7

    const-string v0, "MiRecorder"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoFrameRate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .line 8
    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoCodec:I

    if-ne v1, v3, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H265 bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H264 bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 16
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 18
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 19
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 21
    :cond_1
    iget-wide v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mMaxFileSize:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxFileSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-wide v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 24
    iget-wide v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mMaxFileSize:J

    const-wide v5, 0xdac00000L

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 25
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const-string/jumbo v3, "param-use-64bit-offset=1"

    invoke-direct {p0, v1, v3}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mOrientation:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 27
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/storage/mediastore/VideoFile;->setMediaRecorderOutput(Landroid/media/MediaRecorder;Z)V

    .line 28
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 29
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 30
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;

    invoke-direct {v2, p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;-><init>(Lcom/android/camera/dualvideo/recorder/MiRecorder;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 31
    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/android/camera/dualvideo/recorder/MiRecorder$InfoListener;

    invoke-direct {v2, p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder$InfoListener;-><init>(Lcom/android/camera/dualvideo/recorder/MiRecorder;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->release()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordDuration:J

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mId:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorderSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsPaused:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsRecording:Z

    return v0
.end method

.method public pause()V
    .locals 6

    const-string v0, "MiRecorder"

    const-string/jumbo v1, "pause: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsPaused:Z

    .line 5
    iget-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordDuration:J

    :cond_0
    return-void
.end method

.method public release()V
    .locals 6

    const-string v0, "MiRecorder"

    const-string/jumbo v1, "release: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset: t1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release: t2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsRecording:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsPaused:Z

    .line 11
    invoke-direct {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->cleanupEmptyFile()V

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "MiRecorder"

    const-string/jumbo v1, "resume:  "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordStartTime:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsPaused:Z

    :cond_0
    return-void
.end method

.method public save(Lcom/android/camera/storage/ImageSaver;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiRecorder"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/storage/mediastore/VideoFile;->setDateTaken(J)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/dualvideo/recorder/RecorderUtil;->saveVideo(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/mediastore/VideoFile;ZZ)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "MiRecorder"

    const-string/jumbo v1, "start:  "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsRecording:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsPaused:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordDuration:J

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordStartTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 6

    const-string v0, "MiRecorder"

    const-string/jumbo v1, "stop: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsRecording:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsRecording:Z

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mIsPaused:Z

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "failed to stop media recorder"

    .line 8
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10
    invoke-static {v0}, Lcom/android/camera/Util;->deleteFile(Ljava/lang/String;)V

    .line 11
    iput-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 12
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mRecordDuration:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiRecorder{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentVideoFilename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
