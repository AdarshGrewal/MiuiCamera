.class public Lnet/majorkernelpanic/streaming/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/majorkernelpanic/streaming/Session$Callback;
    }
.end annotation


# static fields
.field public static final ERROR_CAMERA_ALREADY_IN_USE:I = 0x0

.field public static final ERROR_CAMERA_HAS_NO_FLASH:I = 0x3

.field public static final ERROR_CONFIGURATION_NOT_SUPPORTED:I = 0x1

.field public static final ERROR_INVALID_SURFACE:I = 0x4

.field public static final ERROR_OTHER:I = 0x6

.field public static final ERROR_STORAGE_NOT_READY:I = 0x2

.field public static final ERROR_UNKNOWN_HOST:I = 0x5

.field public static final STREAM_AUDIO:I = 0x0

.field public static final STREAM_VIDEO:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Session"


# instance fields
.field public mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

.field public mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

.field public mDestination:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field public mMainHandler:Landroid/os/Handler;

.field public mOrigin:Ljava/lang/String;

.field public mTimeToLive:I

.field public mTimestamp:J

.field public mUpdateBitrate:Ljava/lang/Runnable;

.field public mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 2
    iput v0, p0, Lnet/majorkernelpanic/streaming/Session;->mTimeToLive:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    .line 4
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    .line 5
    new-instance v0, Lnet/majorkernelpanic/streaming/Session$15;

    invoke-direct {v0, p0}, Lnet/majorkernelpanic/streaming/Session$15;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mUpdateBitrate:Ljava/lang/Runnable;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "net.majorkernelpanic.streaming.Session"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/Session;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    .line 11
    div-long v4, v0, v2

    const/16 v6, 0x20

    shl-long v7, v4, v6

    mul-long/2addr v4, v2

    sub-long/2addr v0, v4

    shr-long/2addr v0, v6

    div-long/2addr v0, v2

    and-long/2addr v0, v7

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/Session;->mTimestamp:J

    const-string v0, "127.0.0.1"

    .line 12
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/video/VideoStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    return-object p0
.end method

.method public static synthetic access$100(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/Session;->postPreviewStarted()V

    return-void
.end method

.method public static synthetic access$200(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session;->mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

    return-object p0
.end method

.method public static synthetic access$400(Lnet/majorkernelpanic/streaming/Session;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/majorkernelpanic/streaming/Session;->postBitRate(J)V

    return-void
.end method

.method public static synthetic access$500(Lnet/majorkernelpanic/streaming/Session;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session;->mUpdateBitrate:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$600(Lnet/majorkernelpanic/streaming/Session;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private postBitRate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$14;

    invoke-direct {v1, p0, p1, p2}, Lnet/majorkernelpanic/streaming/Session$14;-><init>(Lnet/majorkernelpanic/streaming/Session;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postError(IILjava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/majorkernelpanic/streaming/Session$13;-><init>(Lnet/majorkernelpanic/streaming/Session;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postPreviewStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$9;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$9;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postSessionConfigured()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$10;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$10;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postSessionStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$11;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$11;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postSessionStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$12;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$12;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private syncStop(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lnet/majorkernelpanic/streaming/Stream;->stop()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addAudioTrack(Lnet/majorkernelpanic/streaming/audio/AudioStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->removeAudioTrack()V

    .line 2
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    return-void
.end method

.method public addVideoTrack(Lnet/majorkernelpanic/streaming/video/VideoStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->removeVideoTrack()V

    .line 2
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    return-void
.end method

.method public configure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$2;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$2;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAudioTrack()Lnet/majorkernelpanic/streaming/audio/AudioStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    return-object v0
.end method

.method public getBitrate()J
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/MediaStream;->getBitrate()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/MediaStream;->getBitrate()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method public getCallback()Lnet/majorkernelpanic/streaming/Session$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

    return-object v0
.end method

.method public getCamera()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getCamera()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/majorkernelpanic/streaming/Session;->mTimestamp:J

    return-wide v0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/Session;->mDestination:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "v=0\r\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "o=- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/Session;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnet/majorkernelpanic/streaming/Session;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " IN IP4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/Session;->mOrigin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s=Unnamed\r\n"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "i=N/A\r\n"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c=IN IP4 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/Session;->mDestination:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t=0 0\r\n"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a=recvonly\r\n"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/MediaStream;->getSessionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a=control:trackID=0\r\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->getSessionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a=control:trackID=1\r\n"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDestination() has not been called !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrack(I)Lnet/majorkernelpanic/streaming/Stream;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    return-object p1
.end method

.method public getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    return-object v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/MediaStream;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/MediaStream;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->removeAudioTrack()V

    .line 2
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/Session;->removeVideoTrack()V

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public removeAudioTrack()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/MediaStream;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    :cond_0
    return-void
.end method

.method public removeVideoTrack()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->stopPreview()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    :cond_0
    return-void
.end method

.method public setAudioQuality(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setAudioQuality(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lnet/majorkernelpanic/streaming/Session$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mDestination:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method public setPreviewOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setPreviewOrientation(I)V

    :cond_0
    return-void
.end method

.method public setSurfaceView(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$1;

    invoke-direct {v1, p0, p1}, Lnet/majorkernelpanic/streaming/Session$1;-><init>(Lnet/majorkernelpanic/streaming/Session;Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/majorkernelpanic/streaming/Session;->mTimeToLive:I

    return-void
.end method

.method public setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$3;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$3;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$5;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$5;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$4;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$4;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$6;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$6;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchCamera()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$7;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$7;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public syncConfigure()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException;,
            Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException;,
            Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;,
            Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;,
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    .line 1
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    :goto_1
    if-eqz v3, :cond_1

    .line 2
    invoke-interface {v3}, Lnet/majorkernelpanic/streaming/Stream;->isStreaming()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x6

    .line 3
    :try_start_0
    invoke-interface {v3}, Lnet/majorkernelpanic/streaming/Stream;->configure()V
    :try_end_0
    .catch Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4
    invoke-direct {p0, v4, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 5
    throw v0

    :catch_1
    move-exception v0

    .line 6
    invoke-direct {p0, v4, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 7
    throw v0

    :catch_2
    move-exception v0

    const/4 v2, 0x4

    .line 8
    invoke-direct {p0, v2, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 9
    throw v0

    :catch_3
    move-exception v0

    const/4 v2, 0x1

    .line 10
    invoke-direct {p0, v2, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 11
    throw v0

    :catch_4
    move-exception v0

    .line 12
    invoke-direct {p0, v2, v1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 13
    throw v0

    :catch_5
    move-exception v2

    .line 14
    invoke-direct {p0, v0, v1, v2}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 15
    throw v2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/Session;->postSessionConfigured()V

    return-void
.end method

.method public syncStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException;,
            Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException;,
            Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;,
            Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->syncStart(I)V

    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0, v1}, Lnet/majorkernelpanic/streaming/Session;->syncStart(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 27
    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->syncStop(I)V

    .line 28
    throw v1

    :catch_1
    move-exception v1

    .line 29
    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->syncStop(I)V

    .line 30
    throw v1
.end method

.method public syncStart(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException;,
            Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException;,
            Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;,
            Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Lnet/majorkernelpanic/streaming/Stream;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 3
    :try_start_0
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/Session;->mDestination:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 4
    iget v4, p0, Lnet/majorkernelpanic/streaming/Session;->mTimeToLive:I

    invoke-interface {v0, v4}, Lnet/majorkernelpanic/streaming/Stream;->setTimeToLive(I)V

    .line 5
    invoke-interface {v0, v3}, Lnet/majorkernelpanic/streaming/Stream;->setDestinationAddress(Ljava/net/InetAddress;)V

    .line 6
    invoke-interface {v0}, Lnet/majorkernelpanic/streaming/Stream;->start()V

    rsub-int/lit8 v0, p1, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v3

    invoke-interface {v3}, Lnet/majorkernelpanic/streaming/Stream;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    :cond_1
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/Session;->postSessionStarted()V

    .line 9
    :cond_2
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->getTrack(I)Lnet/majorkernelpanic/streaming/Stream;

    move-result-object v0

    invoke-interface {v0}, Lnet/majorkernelpanic/streaming/Stream;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    :cond_3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/Session;->mUpdateBitrate:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-direct {p0, v1, p1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 12
    throw v0

    :catch_1
    move-exception v0

    .line 13
    invoke-direct {p0, v1, p1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 14
    throw v0

    :catch_2
    move-exception v0

    const/4 v1, 0x4

    .line 15
    invoke-direct {p0, v1, p1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 16
    throw v0

    :catch_3
    move-exception v0

    .line 17
    invoke-direct {p0, v2, p1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 18
    throw v0

    :catch_4
    move-exception v0

    const/4 v1, 0x2

    .line 19
    invoke-direct {p0, v1, p1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 20
    throw v0

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v1, p1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 22
    throw v0

    :catch_6
    move-exception v0

    const/4 v1, 0x5

    .line 23
    invoke-direct {p0, v1, p1, v0}, Lnet/majorkernelpanic/streaming/Session;->postError(IILjava/lang/Exception;)V

    .line 24
    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public syncStop()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->syncStop(I)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/Session;->syncStop(I)V

    .line 5
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/Session;->postSessionStopped()V

    return-void
.end method

.method public toggleFlash()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/majorkernelpanic/streaming/Session$8;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/Session$8;-><init>(Lnet/majorkernelpanic/streaming/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public trackExists(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mAudioStream:Lnet/majorkernelpanic/streaming/audio/AudioStream;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2
    :cond_1
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/Session;->mVideoStream:Lnet/majorkernelpanic/streaming/video/VideoStream;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method
