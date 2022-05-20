.class public Lnet/majorkernelpanic/streaming/video/H264Stream;
.super Lnet/majorkernelpanic/streaming/video/VideoStream;
.source "H264Stream.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H264Stream"


# instance fields
.field public mConfig:Lnet/majorkernelpanic/streaming/mp4/MP4Config;

.field public mLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/video/H264Stream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;-><init>(I)V

    .line 3
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mLock:Ljava/util/concurrent/Semaphore;

    const-string p1, "video/avc"

    .line 4
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mMimeType:Ljava/lang/String;

    const/16 p1, 0x11

    .line 5
    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraImageFormat:I

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mVideoEncoder:I

    .line 7
    new-instance p1, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;

    invoke-direct {p1}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;-><init>()V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    return-void
.end method

.method public static synthetic access$000(Lnet/majorkernelpanic/streaming/video/H264Stream;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private testH264()Lnet/majorkernelpanic/streaming/mp4/MP4Config;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/video/H264Stream;->testMediaCodecAPI()Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/video/H264Stream;->testMediaRecorderAPI()Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    move-result-object v0

    return-object v0
.end method

.method private testMediaCodecAPI()Lnet/majorkernelpanic/streaming/mp4/MP4Config;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v1, v1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-static {v0, v1, v2}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->debug(Landroid/content/SharedPreferences;II)Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;

    move-result-object v0

    .line 2
    new-instance v1, Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->getB64SPS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->getB64PPS()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v0, "H264Stream"

    const-string v1, "Resolution not supported with the MediaCodec API, we fallback on the old streamign method."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Resolution not supported with the MediaCodec API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private testMediaRecorderAPI()Lnet/majorkernelpanic/streaming/mp4/MP4Config;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libstreaming-h264-mr-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v1, v1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, ""

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    aget-object v2, v0, v4

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v5, "mounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/spydroid-test.mp4"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Testing H264 support... Test file saved at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H264Stream"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 10
    iget-boolean v5, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    .line 11
    iput-boolean v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    .line 12
    iget-boolean v7, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    .line 13
    iget-object v8, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    .line 14
    :goto_0
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->createCamera()V

    .line 15
    iget-boolean v9, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    if-eqz v9, :cond_2

    .line 16
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->lockCamera()V

    .line 17
    :try_start_1
    iget-object v9, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    :catch_0
    iput-boolean v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    :cond_2
    const-wide/16 v9, 0x64

    .line 19
    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 20
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 21
    :goto_1
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->unlockCamera()V

    const/4 v4, 0x0

    .line 22
    :try_start_3
    new-instance v9, Landroid/media/MediaRecorder;

    invoke-direct {v9}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v9, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 23
    iget-object v10, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v9, v10}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 24
    iget-object v9, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 25
    iget-object v9, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 26
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v9, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mVideoEncoder:I

    invoke-virtual {v3, v9}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 27
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 28
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v9, v9, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget-object v10, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v10, v10, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v3, v9, v10}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 29
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v9, v9, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    invoke-virtual {v3, v9}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 30
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v9, v9, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    int-to-double v9, v9

    const-wide v11, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v3, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 31
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 32
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v9, 0xbb8

    invoke-virtual {v3, v9}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 33
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v9, Lnet/majorkernelpanic/streaming/video/H264Stream$1;

    invoke-direct {v9, p0}, Lnet/majorkernelpanic/streaming/video/H264Stream$1;-><init>(Lnet/majorkernelpanic/streaming/video/H264Stream;)V

    invoke-virtual {v3, v9}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 34
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 35
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 36
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v9, 0x6

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v9, v10, v11}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MediaRecorder callback was called :)"

    .line 37
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x190

    .line 38
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_3
    const-string v3, "MediaRecorder callback was not called after 6 seconds... :("

    .line 39
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :goto_2
    :try_start_4
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 41
    :catch_2
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 42
    iput-object v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 43
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->lockCamera()V

    if-nez v8, :cond_4

    .line 44
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->destroyCamera()V

    .line 45
    :cond_4
    iput-boolean v5, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    if-eqz v7, :cond_6

    .line 46
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->startPreview()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_3
    move-exception v3

    .line 47
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    :try_start_7
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 49
    :catch_4
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 50
    iput-object v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 51
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->lockCamera()V

    if-nez v8, :cond_5

    .line 52
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->destroyCamera()V

    .line 53
    :cond_5
    iput-boolean v5, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    if-eqz v7, :cond_6

    goto :goto_3

    .line 54
    :catch_5
    :cond_6
    :goto_4
    new-instance v3, Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    invoke-direct {v3, v2}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Temp file could not be erased"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v2, "H264 Test succeded..."

    .line 57
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_8

    .line 59
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->getProfileLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->getB64SPS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->getB64PPS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    return-object v3

    :catch_6
    move-exception v0

    .line 62
    :try_start_8
    new-instance v1, Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7
    move-exception v0

    .line 63
    new-instance v1, Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 64
    :goto_5
    :try_start_9
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 65
    :catch_8
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 66
    iput-object v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 67
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->lockCamera()V

    if-nez v8, :cond_9

    .line 68
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->destroyCamera()V

    .line 69
    :cond_9
    iput-boolean v5, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    if-eqz v7, :cond_a

    .line 70
    :try_start_a
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->startPreview()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 71
    :catch_9
    :cond_a
    throw v0

    :catch_a
    move-exception v0

    .line 72
    new-instance v1, Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_b
    new-instance v0, Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException;

    const-string v1, "No external storage or external storage not ready !"

    invoke-direct {v0, v1}, Lnet/majorkernelpanic/streaming/exceptions/StorageUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized configure()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->configure()V

    .line 2
    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRequestedMode:B

    iput-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    .line 4
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/video/H264Stream;->testH264()Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mConfig:Lnet/majorkernelpanic/streaming/mp4/MP4Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSessionDescription()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mConfig:Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m=video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getDestinationPorts()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RTP/AVP 96\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a=rtpmap:96 H264/90000\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a=fmtp:96 packetization-mode=1;profile-level-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mConfig:Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    .line 3
    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->getProfileLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";sprop-parameter-sets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mConfig:Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->getB64SPS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mConfig:Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->getB64PPS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to call configure() first !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/H264Stream;->configure()V

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mConfig:Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->getB64PPS()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 4
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/H264Stream;->mConfig:Lnet/majorkernelpanic/streaming/mp4/MP4Config;

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/mp4/MP4Config;->getB64SPS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 5
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    check-cast v2, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;

    invoke-virtual {v2, v0, v1}, Lnet/majorkernelpanic/streaming/rtp/H264Packetizer;->setStreamParameters([B[B)V

    .line 6
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
