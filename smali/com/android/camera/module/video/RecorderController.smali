.class public Lcom/android/camera/module/video/RecorderController;
.super Ljava/lang/Object;
.source "RecorderController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video/RecorderController$RecorderStateListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "RecorderController"


# instance fields
.field public mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

.field public final mLock:Ljava/lang/Object;

.field public mMediaRecorder:Landroid/media/MediaRecorder;

.field public mRecorderSurface:Landroid/view/Surface;

.field public mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

.field public mSplitWhenReachMaxSize:Z

.field public mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

.field public mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

.field public mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

.field public mVideoBase:Lcom/android/camera/module/VideoBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/video/RecorderController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/video/UserRecordSetting;Lcom/android/camera/module/video/RecordRuntimeInfo;Lcom/android/camera/module/VideoBase;Lcom/android/camera/module/video/VideoTrackInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/VideoBase;

    iput-object p4, p0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/video/RecorderController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/module/video/RecorderController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/UserRecordSetting;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/video/RecorderController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/video/RecorderController;)Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/VideoBase;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/VideoBase;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$RecorderStateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    return-object p0
.end method

.method private createRecorder()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_0

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    sget-boolean v3, Lcom/android/camera/module/video/RecorderController;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "RecorderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeRecorder: t1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private prepareRecorder()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    sget-boolean v2, Lcom/android/camera/module/video/RecorderController;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: t2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecorderController"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private setupRecorder(Landroid/content/Context;)V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->recordAudio()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0x3a5

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isSupportBluetoothSco(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v6, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v5

    const-string/jumbo v6, "setVideoFrameRate: "

    const-string v7, "RecorderController"

    if-lez v5, :cond_2

    iget-object v8, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v8, p0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {v8, v5}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v8, p0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-object v9, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v8, v9}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v9, 0x1

    const/16 v10, 0x1000

    if-ne v3, v8, :cond_7

    invoke-static {v6}, Lcom/android/camera/module/video/VideoUtil;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "H265 bitrate: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v6}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v6

    if-nez v6, :cond_3

    const/high16 v6, 0x40000

    goto :goto_2

    :cond_3
    const/high16 v6, 0x100000

    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v8

    invoke-virtual {v8}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooOOo()I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v8, v6}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v9

    const-string/jumbo v6, "setupRecorder: setVideoEncodingProfileLevel profile %s level %s"

    invoke-static {v7, v6, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v10, v6}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupRecorder: HEVCProfileMain10HDR10 & "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v2, v6}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupRecorder: HEVCProfileMain10 & "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iget v3, v6, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooOOO()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Lcom/android/camera/module/video/RecorderController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    iget-object v6, v6, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v8, v6

    move v11, v4

    :goto_3
    if-ge v11, v8, :cond_9

    aget-object v12, v6, v11

    iget v13, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ne v10, v13, :cond_8

    iget v12, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v13, 0x8

    if-ne v13, v12, :cond_8

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v13, v10}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    goto :goto_4

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "H264 bitrate: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_b
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v8, v6, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_f

    const/16 v1, 0xd0

    const-string v2, " mTimeLapseDuration "

    const/16 v3, 0xa0

    if-ne v0, v1, :cond_c

    const-string v1, "10000"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    iput-wide v5, v3, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODE_FILM_EXPOSUREDELAY setupRecorder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OOO0()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OOO0O()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pref_new_video_time_lapse_frame_interval_key"

    invoke-virtual {v1, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "pref_new_video_time_lapse_duration_key"

    invoke-virtual {v1, v5, v3}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    iput-wide v5, v3, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupRecorder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v2, 0x408f400000000000L    # 1000.0

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v5, v5

    div-double/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    goto/16 :goto_9

    :cond_f
    invoke-virtual {v6}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v6

    const/16 v8, 0x1c

    if-nez v6, :cond_13

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0000o0()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v8, :cond_10

    int-to-long v1, v3

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-long v5, v5

    mul-long/2addr v1, v5

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v3

    int-to-long v5, v3

    div-long/2addr v1, v5

    long-to-int v1, v1

    goto :goto_7

    :cond_10
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v1

    div-int/2addr v5, v1

    div-int/2addr v5, v2

    mul-int v1, v3, v5

    :goto_7
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v2, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v5, 0x1e0

    if-ne v3, v5, :cond_11

    iget v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_11

    const v2, 0x7270e00

    const-string v3, "camcorder.480fps.bitrate.max"

    invoke-static {v3, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-string v2, "Set enc-entropy-mode to CAVLC: E"

    invoke-static {v7, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string/jumbo v3, "vendor.qti-ext-enc-entropy-mode.value=0"

    invoke-static {v2, v3}, Lcom/android/camera/module/video/VideoUtil;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    const-string v2, "Set enc-entropy-mode to CAVLC: X"

    invoke-static {v7, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoEncodingBitRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :cond_12
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    goto :goto_9

    :cond_13
    if-lez v5, :cond_15

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    int-to-double v10, v5

    invoke-virtual {v6, v10, v11}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    const/16 v5, 0xa2

    if-ne v0, v5, :cond_15

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v5, v1}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v8, :cond_14

    int-to-long v1, v3

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-long v5, v5

    mul-long/2addr v1, v5

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v3

    int-to-long v5, v3

    div-long/2addr v1, v5

    long-to-int v1, v1

    goto :goto_8

    :cond_14
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v1, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v1

    div-int/2addr v5, v1

    div-int/2addr v5, v2

    mul-int v1, v3, v5

    :goto_8
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :cond_15
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupRecorder mMaxVideoDurationInMs -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    const/4 v1, 0x0

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    :cond_16
    if-eqz v1, :cond_17

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v1, v5

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :cond_17
    const-string p1, "camera.debug.video_max_size"

    invoke-static {p1, v4}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mIntentRequestSize:J

    invoke-static {p1, v1, v2}, Lcom/android/camera/module/video/VideoUtil;->getRecorderMaxFileSize(IJ)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    const-wide v5, 0xdac00000L

    if-lez v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxFileSize="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    cmp-long v3, v1, v5

    if-lez v3, :cond_18

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string/jumbo v7, "param-use-64bit-offset=1"

    invoke-static {v3, v7}, Lcom/android/camera/module/video/VideoUtil;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :cond_18
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->oo00o()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-gtz p1, :cond_19

    cmp-long p1, v1, v5

    if-nez p1, :cond_1a

    :cond_19
    iput-boolean v9, p0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    goto :goto_a

    :cond_1a
    iput-boolean v4, p0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    :goto_a
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->isFPS240(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->isFPS480Direct(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1b
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0000o0()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string/jumbo v0, "video-param-i-frames-interval=0.033"

    invoke-static {p1, v0}, Lcom/android/camera/module/video/VideoUtil;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :cond_1c
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mOrientationHint:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    return-void
.end method

.method private waitLastStopDone()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: waitTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecorderController"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderReleased(Z)V

    return-void
.end method

.method public createVideoSurface()V
    .locals 1

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    return-void
.end method

.method public getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method public getRecordSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public initializeRecorder(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;)Z
    .locals 12

    const-string v0, "RecorderController"

    const-string v1, "initializeRecorder>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/camera/module/video/RecorderController;->waitLastStopDone()V

    invoke-direct {p0}, Lcom/android/camera/module/video/RecorderController;->createRecorder()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v4

    invoke-virtual {p2, p1, p3, v4}, Lcom/android/camera/module/video/AiAudioController;->initAiAudio(ZLandroid/content/Context;Landroid/media/MediaRecorder;)V

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/camera/module/video/RecorderController;->setupRecorder(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V

    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p2}, Lcom/android/camera/storage/mediastore/VideoFile;->isThirdPartyUri()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {p2, p3, v5, v6}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, p3, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v6, p3, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, p3, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v8, p3, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p3}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v9

    const/4 v11, 0x1

    move v10, p1

    invoke-static/range {v4 .. v11}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object p3

    iput-object p3, p2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p3, p3, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {p2, p3}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/camera/storage/mediastore/VideoFile;->setMediaRecorderOutput(Landroid/media/MediaRecorder;Z)V

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/video/RecorderController;->setInputSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/android/camera/module/video/RecorderController;->prepareRecorder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    instance-of p2, p1, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p2}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/Util;->getFilesState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare failed for "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v3}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    :goto_1
    if-eqz v3, :cond_3

    sget-boolean p1, Lcom/android/camera/module/video/RecorderController;->DEBUG:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-static {p1}, Lcom/android/camera/Util;->showSurfaceInfo(Landroid/view/Surface;)V

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initializeRecorder<<time="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    const-string p3, "MediaRecorder error. what=%d extra=%d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    const-string v0, "RecorderController"

    invoke-static {p3, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1, p2}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderError(I)V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 9

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean p1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    const-string p3, "RecorderController"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onInfo: ignore event "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onInfo what : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo p1, "next output file started"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onNextFileStarted()V

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    iput-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    goto/16 :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "max file size is approaching. split: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, v1, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget v3, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, p1, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "_data"

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nextVideoPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {p2, p3}, Lcom/android/camera/module/video/VideoUtil;->setNextOutputFile(Ljava/lang/String;Landroid/media/MediaRecorder;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-object p1, p2, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onMaxFileSizeReached()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onMaxDurationReached()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideoRecording()V
    .locals 6

    const-string v0, "RecorderController"

    const-string/jumbo v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v1}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "failed to pause media recorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v4, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v1, v4

    iput-wide v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {v0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderPaused()V

    :cond_0
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 6

    const-string v0, "RecorderController"

    const-string/jumbo v1, "releaseRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->cleanupEmptyFile()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseRecorder: t1="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecorderController"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseRecorder: t2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecorderController"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseRecordSurface()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

.method public resumeVideoRecording(Lcom/android/camera/protocol/ModeProtocol$RecordState;Lcom/android/camera/module/video/RecordRuntimeInfo;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    iput-boolean v0, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    const-string v1, ""

    iput-object v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    const-string v1, "RecorderController"

    const-string v2, "failed to resume media recorder"

    invoke-static {v1, v2, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    return v0
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setStateListener(Lcom/android/camera/module/video/RecorderController$RecorderStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    return-void
.end method

.method public startRecorder(Lcom/android/camera/module/video/UserRecordSetting;ILcom/android/camera/module/video/AiAudioController;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/camera/module/video/RecorderController;->initializeRecorder(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return p4

    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p3

    invoke-virtual {p3}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00Ooo0O()Z

    move-result p3

    const-string v1, "RecorderController"

    if-eqz p3, :cond_2

    iget p3, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {p3}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result p2

    if-gtz p2, :cond_1

    iget-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :cond_1
    iget p3, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {p3, p2}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStart(II)V

    const-string/jumbo p2, "notifyThermalRecordStart"

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mVideoFile = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " path = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p3}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " uri ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v0, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderWorking:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const/4 p2, 0x6

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    const-string p1, "could not start recorder: %s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/VideoBase;

    const p2, 0x7f1202fa

    const p3, 0x7f1202f9

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/module/BaseModule;->showConfirmMessage(II)V

    return p4
.end method

.method public stopRecorder(I)V
    .locals 2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00Ooo0O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v1, v0}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStop(II)V

    :cond_1
    new-instance v0, Lcom/android/camera/module/video/RecorderController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/video/RecorderController$1;-><init>(Lcom/android/camera/module/video/RecorderController;I)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0O;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000o0/OooOO0O;-><init>(Lcom/android/camera/module/video/RecorderController;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
