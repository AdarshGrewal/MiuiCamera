.class public Lcom/android/camera/module/video/UserRecordSetting;
.super Ljava/lang/Object;
.source "UserRecordSetting.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UserRecordSetting"


# instance fields
.field public mBaseFileName:Ljava/lang/String;

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCaptureTimeLapse:Z

.field public mContext:Landroid/content/Context;

.field public volatile mCurrentFileNumber:I

.field public mCurrentVideoFilePath:Ljava/lang/String;

.field public mCurrentVideoValues:Landroid/content/ContentValues;

.field public mFrameRate:I

.field public mHfrFPSRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIntentRequestSize:J

.field public mMaxVideoDurationInMs:I

.field public mNextVideoValues:Landroid/content/ContentValues;

.field public mOrientationHint:I

.field public mOutputFormat:I

.field public mProfile:Landroid/media/CamcorderProfile;

.field public mQuality:I

.field public mSlowModeFps:Ljava/lang/String;

.field public mSpeed:Ljava/lang/String;

.field public mTimeBetweenTimeLapseFrameCaptureMs:I

.field public mTimeLapseDuration:J

.field public mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

.field public mVideoSize:Lcom/android/camera/CameraSize;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const-string v0, "normal"

    .line 3
    iput-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    .line 5
    iput v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    return-void
.end method

.method private fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->fetchCamcorderProfile(Landroid/content/Context;II)Landroid/media/CamcorderProfile;

    move-result-object p1

    return-object p1
.end method

.method private forceToNormalMode()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "normal"

    const-string/jumbo v2, "pref_video_speed_key"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    return-void
.end method

.method private getBogusCameraId(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p1

    return p1
.end method

.method private initVideoSize(III)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 2
    const-class v0, Landroid/media/MediaRecorder;

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    int-to-double v0, p2

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 4
    invoke-static {p1, v0, v1, p2, p3}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initVideoSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UserRecordSetting"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private is1080P60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->is1080P60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    return p1
.end method

.method private updateHfrFPSRange(Landroid/util/Size;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraCapabilities;->getSupportedHighSpeedVideoFPSRange(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_1

    :cond_0
    move-object v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iput-object v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public cleanupEmptyFile()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "UserRecordSetting"

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no video file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object v2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/FileCompat;->deleteFile(Ljava/lang/String;)Z

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete empty video file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-object v2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public deleteInvalidFile()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/video/VideoUtil;->deleteVideoFile(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->cleanResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UserRecordSetting"

    const-string v1, "delete invalid file fail"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getNormalVideoFrameRate()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public getQuality(IILcom/android/camera/CameraIntentManager;I)I
    .locals 6

    const/4 p4, 0x6

    const/16 v0, 0xac

    if-eq p2, v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQuality: quality = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserRecordSetting"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v1, p4

    .line 3
    :goto_0
    invoke-virtual {p3}, Lcom/android/camera/CameraIntentManager;->getVideoQuality()I

    move-result p3

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le p3, v2, :cond_3

    if-ne p3, v3, :cond_1

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result v1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    move v1, p3

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(Ljava/lang/String;II)I

    move-result v1

    .line 6
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getVideoSpeed()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const/16 p3, 0xd0

    const-string v2, "film_exposuredelay"

    if-ne p2, p3, :cond_4

    .line 8
    iput-object v2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne p2, v0, :cond_5

    const-string p3, "fps960"

    .line 9
    iput-object p3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    .line 10
    iput-object p3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    :goto_2
    const/4 p3, 0x0

    .line 11
    iput p3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 12
    iput-boolean p3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    .line 13
    iget-object v4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const-string v5, "fast"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x78

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    :cond_6
    if-ne p2, v0, :cond_e

    .line 14
    iput p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 15
    sget-object p3, Lcom/android/camera/module/video/VideoConfig;->SIZE_1080:Landroid/util/Size;

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object p4

    .line 17
    invoke-virtual {p4, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p4

    .line 18
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 p4, 0x5

    if-ne v1, p4, :cond_7

    .line 19
    sget-object p3, Lcom/android/camera/module/video/VideoConfig;->SIZE_720:Landroid/util/Size;

    .line 20
    iput v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    :cond_7
    const/16 p4, 0x8

    if-ne v1, p4, :cond_8

    .line 21
    sget-object p3, Lcom/android/camera/module/video/VideoConfig;->SIZE_2160:Landroid/util/Size;

    .line 22
    iput v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 23
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p4

    .line 24
    invoke-virtual {p4, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 25
    invoke-static {p4}, Lcom/android/camera/module/video/VideoUtil;->isFPS120(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_d

    iget-object p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/camera/module/video/VideoUtil;->isFPS480(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    goto :goto_4

    .line 26
    :cond_9
    iget-object p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/camera/module/video/VideoUtil;->isFPS240(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_c

    iget-object p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/camera/module/video/VideoUtil;->isFPS960(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    goto :goto_3

    .line 27
    :cond_a
    iget-object p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/camera/module/video/VideoUtil;->isFPS480Direct(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_b

    iget-object p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/camera/module/video/VideoUtil;->isFPS1920(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_16

    :cond_b
    const/16 p4, 0x1e0

    .line 28
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/video/UserRecordSetting;->updateHfrFPSRange(Landroid/util/Size;I)V

    goto/16 :goto_9

    :cond_c
    :goto_3
    const/16 p4, 0xf0

    .line 29
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/video/UserRecordSetting;->updateHfrFPSRange(Landroid/util/Size;I)V

    goto/16 :goto_9

    .line 30
    :cond_d
    :goto_4
    invoke-direct {p0, p3, v5}, Lcom/android/camera/module/video/UserRecordSetting;->updateHfrFPSRange(Landroid/util/Size;I)V

    goto/16 :goto_9

    .line 31
    :cond_e
    iput v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    goto/16 :goto_9

    .line 32
    :cond_f
    :goto_5
    iget-object p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    const-string p4, "10000"

    .line 33
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    goto :goto_7

    .line 34
    :cond_10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p4

    invoke-virtual {p4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result p4

    if-nez p4, :cond_12

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p4

    invoke-virtual {p4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result p4

    if-eqz p4, :cond_11

    goto :goto_6

    .line 35
    :cond_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p4

    const v0, 0x7f12088c

    .line 36
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pref_video_time_lapse_frame_interval_key"

    .line 37
    invoke-virtual {p4, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    goto :goto_7

    .line 39
    :cond_12
    :goto_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p4

    .line 40
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pref_new_video_time_lapse_frame_interval_key"

    .line 41
    invoke-virtual {p4, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 42
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 43
    :goto_7
    iget p4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz p4, :cond_13

    goto :goto_8

    :cond_13
    move v3, p3

    :goto_8
    iput-boolean v3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_15

    add-int/lit16 v1, v1, 0x3e8

    const/16 p4, 0x3e8

    if-lt v1, p4, :cond_14

    const/16 p4, 0x3f0

    if-le v1, p4, :cond_15

    :cond_14
    add-int/lit16 v1, v1, -0x3e8

    .line 44
    iput-boolean p3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    .line 45
    invoke-direct {p0}, Lcom/android/camera/module/video/UserRecordSetting;->forceToNormalMode()V

    .line 46
    :cond_15
    rem-int/lit16 p3, v1, 0x3e8

    iput p3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    :cond_16
    :goto_9
    const/16 p3, 0xa2

    if-ne p2, p3, :cond_17

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 48
    sget-object p1, Lcom/android/camera/module/video/VideoConfig;->SIZE_2160:Landroid/util/Size;

    invoke-direct {p0, p1, v5}, Lcom/android/camera/module/video/UserRecordSetting;->updateHfrFPSRange(Landroid/util/Size;I)V

    :cond_17
    return v1
.end method

.method public getTimeForShow(J)J
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const v3, 0xea60

    sub-int/2addr v0, v3

    int-to-long v3, v0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    iget-wide v3, p0, Lcom/android/camera/module/video/UserRecordSetting;->mIntentRequestSize:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/32 v5, 0xf4240

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    int-to-long v3, v0

    sub-long/2addr v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e7

    add-long/2addr p1, v0

    :cond_2
    return-wide p1
.end method

.method public initBeautyValues(Lcom/android/camera2/CameraCapabilities;I)Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa2

    if-eq p2, p1, :cond_1

    const/16 p1, 0xa1

    if-eq p2, p1, :cond_1

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez p1, :cond_2

    .line 4
    new-instance p1, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {p1}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->initBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p1

    .line 7
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object v0
.end method

.method public initVideoDuration(ILcom/android/camera/CameraIntentManager;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7d0

    .line 2
    iput p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    goto :goto_1

    :cond_0
    const/16 v0, 0x3e8

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/android/camera/CameraIntentManager;->getVideoDurationTime()I

    move-result p2

    mul-int/2addr p2, v0

    iput p2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget p2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-nez p2, :cond_3

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOOo()Z

    move-result p2

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0o0()Z

    move-result v1

    const v2, 0x57e40

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iput v2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->is4KHDR10OrProP(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iput v2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->is4KCamcorder()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x75300

    .line 12
    iput p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    .line 14
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    if-eqz p1, :cond_5

    if-ge p1, v0, :cond_5

    .line 15
    iput v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    :cond_5
    :goto_1
    return-void
.end method

.method public initVideoOrientation(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/Util;->getVideoRotation(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mOrientationHint:I

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initVideoOrientation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mOrientationHint:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UserRecordSetting"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public is4K120FpsCamcorder(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->is4KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result p1

    const/16 v0, 0x78

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public is4K60FpsCamcorder(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->is4KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result p1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public is4KCamcorder()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iget-object v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public is8KCamcorder()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0, v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->is8KProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x1e00

    const/16 v2, 0x10e0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iget-object v1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isEisOn(IIZ)Z
    .locals 6

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->oo0o0Oo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraWideBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v0

    if-ne p2, v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v0

    const-string v3, "UserRecordSetting"

    if-eqz v0, :cond_3

    const-string p1, "ai enhanced video enable EIS"

    .line 6
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "videoStabilization: disabled EIS and OIS when AutoZoom is opened"

    .line 8
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 10
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoEisBeautyMeanwhileEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 11
    :cond_6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 14
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    .line 15
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->isFastMode()Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    if-eqz p3, :cond_a

    return v1

    .line 16
    :cond_a
    iget p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    if-nez p1, :cond_b

    return v1

    .line 17
    :cond_b
    invoke-static {p2}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result p1

    if-nez p1, :cond_c

    move p1, v2

    goto :goto_0

    :cond_c
    move p1, v1

    :goto_0
    const-string p3, "isEisOn: "

    if-eqz p1, :cond_d

    .line 18
    iget p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/16 v4, 0x1e

    invoke-virtual {v0, p1, v4}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "@30Fps"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 20
    :cond_d
    invoke-static {p2}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result p1

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_e

    move p1, v2

    goto :goto_1

    :cond_e
    move p1, v1

    :goto_1
    if-eqz p1, :cond_f

    .line 21
    iget v5, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-virtual {v0, v5, v4}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "@60Fps"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 23
    :cond_f
    invoke-static {p2}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_10

    move v4, v2

    goto :goto_2

    :cond_10
    move v4, v1

    :goto_2
    if-eqz v4, :cond_11

    .line 24
    iget v4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-virtual {v0, v4, v5}, Lcom/android/camera2/CameraCapabilities;->isCurrentQualitySupportEis(II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "@120Fps"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 26
    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 27
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result p1

    const-string p2, "3001"

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x18

    invoke-static {p2, p3, v0}, Lcom/android/camera/CameraSettings;->isCurrentQualitySupportEis(IILcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    return v2

    :cond_12
    return v1

    :cond_13
    if-eqz p1, :cond_14

    .line 29
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->is4K60FpsEISSupported()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-direct {p0, v0}, Lcom/android/camera/module/video/UserRecordSetting;->is1080P60FpsEISSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_15

    return v1

    .line 30
    :cond_14
    iget p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/android/camera/module/video/VideoUtil;->is4K30FpsEISSupported()Z

    move-result p1

    if-nez p1, :cond_15

    return v1

    .line 31
    :cond_15
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p1

    if-eqz p1, :cond_16

    return v1

    :cond_16
    return v2
.end method

.method public isFastMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const-string v1, "fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNormalMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSpeed:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needChooseVideoBeauty(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public readVideoPreferences(IILcom/android/camera/CameraIntentManager;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/module/video/UserRecordSetting;->getQuality(IILcom/android/camera/CameraIntentManager;I)I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/module/video/UserRecordSetting;->getBogusCameraId(I)I

    move-result v1

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/video/UserRecordSetting;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x5

    :goto_1
    iput v2, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    iput v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    .line 9
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 10
    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v4

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "frameRate=%d profileSize=%dx%d codec=%d"

    .line 13
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UserRecordSetting"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa2

    if-ne p2, v0, :cond_3

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    goto :goto_3

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    .line 19
    :goto_3
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/module/video/UserRecordSetting;->initVideoDuration(ILcom/android/camera/CameraIntentManager;)V

    .line 20
    iget-object p2, p0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget p3, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/module/video/UserRecordSetting;->initVideoSize(III)V

    .line 21
    invoke-virtual {p0, v1, p4}, Lcom/android/camera/module/video/UserRecordSetting;->initVideoOrientation(II)V

    return-void
.end method

.method public recordAudio()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/video/VideoUtil;->isFPS120(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/video/VideoUtil;->isFPS240(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/video/VideoUtil;->isFPS480Direct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2
    :goto_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v3

    xor-int/2addr v3, v2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mContext:Landroid/content/Context;

    return-void
.end method
