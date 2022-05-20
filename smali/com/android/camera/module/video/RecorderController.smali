.class public Lcom/android/camera/module/video/RecorderController;
.super Ljava/lang/Object;
.source "RecorderController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video/RecorderController$ModuleCallback;,
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

.field public mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isDebugOsBuild()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/video/RecorderController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/video/UserRecordSetting;Lcom/android/camera/module/video/RecordRuntimeInfo;Lcom/android/camera/module/video/VideoTrackInfo$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 4
    iput-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    .line 5
    iput-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/camera/module/video/Boost;->stopBoost()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/video/RecorderController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/module/video/RecorderController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/UserRecordSetting;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/video/RecorderController;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/video/RecorderController;)Landroid/media/MediaRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$ModuleCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$RecorderStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    return-object p0
.end method

.method private createRecorder()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v1, "RecorderController"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    const-string v3, "RecorderController"

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeRecorder: reset cost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private prepareRecorder()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: prepare cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecorderController"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 5
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 6
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

.method private setInputSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private waitLastStopDone()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
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

    .line 4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
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

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderReleased(Z)V

    return-void
.end method

.method public createRecordSurface()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    const-string v1, "RecorderController"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRecordSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method public getRecordSurface()Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initializeRecorder(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;I)Lcom/android/camera/module/video/InitRecorderResult;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeRecorder>>startRecorder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RecorderController"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3
    new-instance v13, Lcom/android/camera/module/video/InitRecorderResult;

    invoke-direct {v13}, Lcom/android/camera/module/video/InitRecorderResult;-><init>()V

    .line 4
    iget-object v14, v1, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 5
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->waitLastStopDone()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->createRecordSurface()V

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->createRecorder()Z

    move-result v3

    iput-boolean v3, v13, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v2, v0, v10, v3}, Lcom/android/camera/module/video/AiAudioController;->initAiAudio(ZLandroid/content/Context;Landroid/media/MediaRecorder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p4

    .line 9
    :try_start_1
    invoke-virtual {v1, v10, v3}, Lcom/android/camera/module/video/RecorderController;->setupRecorderParameter(Landroid/content/Context;I)Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/android/camera/module/video/MediaRecorderCreator;->setupMediaRecorder(Landroid/media/MediaRecorder;Lcom/android/camera/module/video/MediaRecorderParameter;)Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 11
    invoke-static/range {p3 .. p3}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V

    .line 13
    :cond_0
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/VideoFile;->isThirdPartyUri()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 15
    iget-object v4, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    iget-object v6, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    .line 16
    iget-object v9, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget-object v4, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    iget-object v5, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    .line 17
    invoke-virtual {v7}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v7

    const/16 v16, 0x1

    move/from16 v8, p1

    move-object v10, v9

    move/from16 v9, v16

    .line 18
    invoke-static/range {v2 .. v9}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object v2

    iput-object v2, v10, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 19
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    .line 20
    :cond_1
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/storage/mediastore/VideoFile;->setMediaRecorderOutput(Landroid/media/MediaRecorder;Z)V

    .line 21
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    .line 24
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-direct {v1, v0}, Lcom/android/camera/module/video/RecorderController;->setInputSurface(Landroid/view/Surface;)V

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->prepareRecorder()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    :goto_1
    :try_start_3
    const-string v2, ""

    .line 26
    instance-of v3, v0, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_4

    .line 27
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getFilesState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    const-string v3, "RecorderController"

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v5}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, v13, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 31
    :goto_2
    iget-boolean v0, v13, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    if-eqz v0, :cond_5

    const-string v0, "RecorderController"

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: recordSurface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-static {v3}, Lcom/android/camera/Util;->getSurfaceInfo(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    iput-object v0, v13, Lcom/android/camera/module/video/InitRecorderResult;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 34
    iput-object v15, v13, Lcom/android/camera/module/video/InitRecorderResult;->recorderParameter:Lcom/android/camera/module/video/MediaRecorderParameter;

    .line 35
    :cond_5
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecorder<<time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecorderController"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :catchall_0
    move-exception v0

    .line 37
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    .line 1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string p3, "MediaRecorder error. what=%d extra=%d"

    invoke-static {p1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    const-string v0, "RecorderController"

    invoke-static {p3, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1, p2}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderError(I)V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean p1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    const-string p3, "RecorderController"

    if-nez p1, :cond_0

    .line 2
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

    .line 3
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
    const-string p1, "next output file started"

    .line 4
    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onNextFileStarted()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    iput-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    goto/16 :goto_0

    .line 8
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "max file size is approaching. split: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, v1, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget v3, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:I

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, p1, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 15
    invoke-static/range {v1 .. v8}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "_data"

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextVideoPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {p2, p3}, Lcom/android/camera/module/video/VideoUtil;->setNextOutputFile(Ljava/lang/String;Landroid/media/MediaRecorder;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    iget-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-object p1, p2, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    .line 20
    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onMaxFileSizeReached()V

    goto :goto_0

    .line 21
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

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v1}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "failed to pause media recorder"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v4, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v1, v4

    iput-wide v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {v0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderPaused()V

    :cond_0
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 6

    const-string v0, "RecorderController"

    const-string/jumbo v1, "releaseRecorder"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->cleanupEmptyFile()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseRecorder: reset cost: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecorderController"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseRecorder: release cost: "

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

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseRecordSurface()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    const-string v1, "RecorderController"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseRecordSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeVideoRecording(Lcom/android/camera/protocol/ModeProtocol$RecordState;Lcom/android/camera/module/video/RecordRuntimeInfo;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    .line 4
    iput-boolean v0, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    const-string v1, ""

    .line 5
    iput-object v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    const-string v1, "RecorderController"

    const-string v2, "failed to resume media recorder"

    .line 7
    invoke-static {v1, v2, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    return v0
.end method

.method public setModuleCallback(Lcom/android/camera/module/video/RecorderController$ModuleCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    return-void
.end method

.method public setStateListener(Lcom/android/camera/module/video/RecorderController$RecorderStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    return-void
.end method

.method public setupRecorderParameter(Landroid/content/Context;I)Lcom/android/camera/module/video/MediaRecorderParameter;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    new-instance v2, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-direct {v2}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->recordAudio()Z

    move-result v4

    .line 4
    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setEnableAudio(Z)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/4 v5, 0x2

    .line 5
    invoke-virtual {v2, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0x3a5

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 7
    invoke-interface {v6, v1}, Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;->isAudioSourceCamcorder(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v2, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v2, v8}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 10
    :cond_1
    :goto_0
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOutputFormat(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 11
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupRecorder: videoSize = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "RecorderController"

    invoke-static {v9, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v10, v6, Lcom/android/camera/CameraSize;->width:I

    iget v6, v6, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v10, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSize(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v6

    .line 15
    invoke-static {v6}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v10

    if-lez v10, :cond_2

    .line 16
    invoke-virtual {v2, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 17
    iget-object v11, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {v11, v10}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setupRecorder: videoFrameRate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 19
    :cond_2
    iget-object v11, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v11, v11, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 20
    iget-object v11, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-object v12, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v12, v12, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v11, v12}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setupRecorder: profile videoFrameRate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v12, v12, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_1
    iget-object v11, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v11, v11, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v11, Landroid/media/CamcorderProfile;->videoCodec:I

    const/16 v13, 0x1000

    const/4 v14, 0x0

    if-ne v7, v12, :cond_8

    .line 23
    invoke-static {v11}, Lcom/android/camera/module/video/VideoUtil;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v7

    .line 24
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setupRecorder: H265 bitrate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v11, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v11}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v11

    if-nez v11, :cond_3

    const/high16 v11, 0x40000

    goto :goto_2

    :cond_3
    const/high16 v11, 0x100000

    .line 26
    :goto_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v12

    invoke-virtual {v12}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooooOO()I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_5

    .line 27
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v15

    if-nez v15, :cond_4

    .line 28
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 29
    :cond_4
    invoke-virtual {v2, v12, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 30
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v15, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v8

    const-string/jumbo v11, "setupRecorder: profile = %d, level = %d"

    invoke-static {v13, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 31
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 32
    invoke-virtual {v2, v13, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 33
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setupRecorder: HEVCProfileMain10HDR10 & "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 34
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 35
    invoke-virtual {v2, v5, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 36
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setupRecorder: HEVCProfileMain10 & "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 37
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 38
    invoke-virtual {v2, v5, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 39
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setupRecorder: hdr10pro HEVCProfileMain10 & "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 40
    :cond_8
    iget v7, v11, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 41
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string/jumbo v11, "video/avc"

    .line 42
    invoke-static {v11}, Lcom/android/camera/module/video/RecorderController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 43
    invoke-virtual {v12, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v11

    .line 44
    iget-object v11, v11, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v12, v11

    move v15, v14

    :goto_3
    if-ge v15, v12, :cond_a

    aget-object v8, v11, v15

    .line 45
    iget v14, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ne v13, v14, :cond_9

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v14, 0x8

    if-ne v14, v8, :cond_9

    .line 46
    invoke-virtual {v2, v14, v13}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_4

    :cond_9
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    const/4 v14, 0x0

    goto :goto_3

    .line 47
    :cond_a
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setupRecorder: H264 bitrate = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_b
    :goto_5
    invoke-virtual {v2, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    if-eqz v4, :cond_c

    .line 49
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 50
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioChannels(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 51
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSamplingRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 52
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 53
    :cond_c
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v8, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_10

    const/16 v5, 0xd0

    const/16 v6, 0xa0

    if-ne v1, v5, :cond_d

    const-string v5, "10000"

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 55
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    iput-wide v6, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: MODE_FILM_EXPOSUREDELAY. timeBetweenTimeLapseFrameCaptureMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeLapseDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 58
    :cond_d
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 59
    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    .line 60
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "pref_new_video_time_lapse_frame_interval_key"

    .line 61
    invoke-virtual {v4, v7, v5}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 63
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    .line 64
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pref_new_video_time_lapse_duration_key"

    .line 65
    invoke-virtual {v4, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    iput-wide v6, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: timeBetweenTimeLapseFrameCaptureMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeLapseDuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 68
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto/16 :goto_9

    .line 69
    :cond_10
    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v4

    const/16 v8, 0x1c

    if-nez v4, :cond_14

    const/16 v4, 0xac

    if-ne v4, v1, :cond_13

    .line 70
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v4

    if-nez v4, :cond_13

    .line 71
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 72
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v8, :cond_11

    int-to-long v4, v7

    .line 73
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v7, v6, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-long v7, v7

    mul-long/2addr v4, v7

    invoke-virtual {v6}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_7

    .line 74
    :cond_11
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v6, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v4

    div-int/2addr v6, v4

    div-int/2addr v6, v5

    mul-int v4, v7, v6

    .line 75
    :goto_7
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v6, v5, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v7, 0x1e0

    if-ne v6, v7, :cond_12

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_12

    const v5, 0x7270e00

    const-string v6, "camcorder.480fps.bitrate.max"

    .line 76
    invoke-static {v6, v5}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 77
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string/jumbo v5, "setupRecorder: set enc-entropy-mode to CAVLC"

    .line 78
    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "vendor.qti-ext-enc-entropy-mode.value=0"

    .line 79
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setupRecorder: bitRate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 82
    :cond_13
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_9

    :cond_14
    if-lez v10, :cond_16

    .line 83
    invoke-virtual {v2, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    int-to-double v10, v10

    .line 84
    invoke-virtual {v2, v10, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/16 v4, 0xa2

    if-ne v1, v4, :cond_16

    .line 85
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v4, v6}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 86
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 87
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v8, :cond_15

    int-to-long v4, v7

    .line 88
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v7, v6, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-long v7, v7

    mul-long/2addr v4, v7

    invoke-virtual {v6}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_8

    .line 89
    :cond_15
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v6, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v4

    div-int/2addr v6, v4

    div-int/2addr v6, v5

    mul-int v4, v7, v6

    .line 90
    :goto_8
    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 91
    :cond_16
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: maxDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxDuration(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/4 v4, 0x0

    .line 93
    move-object/from16 v5, p1

    check-cast v5, Lcom/android/camera/ActivityBase;

    .line 94
    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 95
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    :cond_17
    if-eqz v4, :cond_18

    .line 96
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v4, v6

    invoke-virtual {v2, v5, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setLocation(FF)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_18
    const-string v4, "camera.debug.video_max_size"

    const/4 v5, 0x0

    .line 97
    invoke-static {v4, v5}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 98
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mIntentRequestSize:J

    invoke-static {v4, v5, v6}, Lcom/android/camera/module/video/VideoUtil;->getRecorderMaxFileSize(IJ)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide v10, 0xdac00000L

    if-lez v7, :cond_19

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupRecorder: maxFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v2, v5, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxFileSize(J)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    cmp-long v7, v5, v10

    if-lez v7, :cond_19

    const-string/jumbo v7, "param-use-64bit-offset=1"

    .line 101
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_19
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v7

    invoke-virtual {v7}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0OOo()Z

    move-result v7

    if-eqz v7, :cond_1b

    if-gtz v4, :cond_1a

    cmp-long v4, v5, v10

    if-nez v4, :cond_1b

    :cond_1a
    const/4 v4, 0x1

    .line 103
    iput-boolean v4, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    goto :goto_a

    :cond_1b
    const/4 v4, 0x0

    .line 104
    iput-boolean v4, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    .line 105
    :goto_a
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/camera/module/video/VideoUtil;->isFPS240(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/camera/module/video/VideoUtil;->isFPS480Direct(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000ooO()Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo v1, "video-param-i-frames-interval=0.033"

    .line 106
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1d
    iget-object v1, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mOrientationHint:I

    invoke-virtual {v2, v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOrientationHint(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 108
    invoke-virtual {v2, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setExtraParameters(Ljava/util/List;)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    .line 109
    invoke-virtual {v2}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->build()Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v1

    return-object v1
.end method

.method public startRecorder(Lcom/android/camera/module/video/UserRecordSetting;I)Z
    .locals 7

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0000()Z

    move-result v0

    const-string v1, "RecorderController"

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p2}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result p2

    if-gtz p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 5
    :cond_0
    iget v0, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0, p2}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStart(II)V

    const-string p2, "notifyThermalRecordStart"

    .line 6
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p2, 0x1

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1e

    const-string v5, " cost = "

    const-string/jumbo v6, "startRecorder: videoFile = "

    if-ge v0, v4, :cond_2

    .line 10
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " path = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " uri = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean p2, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderWorking:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return p2

    :catch_0
    move-exception p1

    const/4 v0, 0x6

    new-array p2, p2, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const-string p1, "could not start recorder: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    if-eqz p1, :cond_3

    const p2, 0x7f120312

    const v0, 0x7f120311

    .line 21
    invoke-interface {p1, p2, v0}, Lcom/android/camera/module/video/RecorderController$ModuleCallback;->showConfirmMessage(II)V

    :cond_3
    return v2
.end method

.method public stopRecorder(I)V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v1, v0}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStop(II)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    new-instance v1, Lcom/android/camera/module/video/RecorderController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/video/RecorderController$1;-><init>(Lcom/android/camera/module/video/RecorderController;I)V

    invoke-static {v1}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    :goto_1
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 9
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOo;-><init>(Lcom/android/camera/module/video/RecorderController;)V

    sget-object v1, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOo0;

    .line 10
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
