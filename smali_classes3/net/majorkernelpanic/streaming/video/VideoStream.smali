.class public abstract Lnet/majorkernelpanic/streaming/video/VideoStream;
.super Lnet/majorkernelpanic/streaming/MediaStream;
.source "VideoStream.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoStream"


# instance fields
.field public mCamera:Landroid/hardware/Camera;

.field public mCameraId:I

.field public mCameraImageFormat:I

.field public mCameraLooper:Landroid/os/Looper;

.field public mCameraOpenedManually:Z

.field public mCameraThread:Ljava/lang/Thread;

.field public mCodecInputSurface:Landroid/view/Surface;

.field public mEncoderColorFormat:I

.field public mEncoderName:Ljava/lang/String;

.field public mFlashEnabled:Z

.field public mMaxFps:I

.field public mMimeType:Ljava/lang/String;

.field public mOrientation:I

.field public mPreviewStarted:Z

.field public mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

.field public mRequestedOrientation:I

.field public mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

.field public mSettings:Landroid/content/SharedPreferences;

.field public mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field public mSurfaceReady:Z

.field public mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

.field public mUnlocked:Z

.field public mUpdated:Z

.field public mVideoEncoder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/video/VideoStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/MediaStream;-><init>()V

    .line 3
    sget-object v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    .line 4
    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 6
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    .line 7
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraId:I

    .line 9
    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedOrientation:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mOrientation:I

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraOpenedManually:Z

    .line 11
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    .line 12
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceReady:Z

    .line 13
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUnlocked:Z

    .line 14
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    .line 15
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUpdated:Z

    .line 16
    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mMaxFps:I

    .line 17
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setCamera(I)V

    return-void
.end method

.method public static synthetic access$000(Lnet/majorkernelpanic/streaming/video/VideoStream;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static synthetic access$100(Lnet/majorkernelpanic/streaming/video/VideoStream;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static synthetic access$200(Lnet/majorkernelpanic/streaming/video/VideoStream;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method private measureFramerate()V
    .locals 5

    const-string v0, ","

    .line 1
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2
    new-instance v2, Lnet/majorkernelpanic/streaming/video/VideoStream$5;

    invoke-direct {v2, p0, v1}, Lnet/majorkernelpanic/streaming/video/VideoStream$5;-><init>(Lnet/majorkernelpanic/streaming/video/VideoStream;Ljava/util/concurrent/Semaphore;)V

    .line 3
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    const-wide/16 v2, 0x2

    .line 4
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    const-string v1, "VideoStream"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Actual framerate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "libstreaming-fps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraImageFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v0, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v0, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method private openCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/RuntimeException;

    .line 2
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lnet/majorkernelpanic/streaming/video/VideoStream$3;

    invoke-direct {v4, p0, v2, v0}, Lnet/majorkernelpanic/streaming/video/VideoStream$3;-><init>(Lnet/majorkernelpanic/streaming/video/VideoStream;[Ljava/lang/RuntimeException;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraThread:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 5
    aget-object v0, v2, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException;-><init>(Ljava/lang/String;)V

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
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->configure()V

    .line 2
    iget v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedOrientation:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceReady:Z

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 4
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->openCamera()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUpdated:Z

    .line 6
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUnlocked:Z

    .line 7
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lnet/majorkernelpanic/streaming/video/VideoStream$4;

    invoke-direct {v1, p0}, Lnet/majorkernelpanic/streaming/video/VideoStream$4;-><init>(Lnet/majorkernelpanic/streaming/video/VideoStream;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "torch"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 12
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 13
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mOrientation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 15
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->startGLThread()V

    .line 16
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 18
    :catch_0
    :try_start_3
    new-instance v0, Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;

    const-string v1, "Invalid surface !"

    invoke-direct {v0, v1}, Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    .line 19
    :try_start_4
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->destroyCamera()V

    .line 20
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 22
    :cond_4
    :try_start_5
    new-instance v0, Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;

    const-string v1, "Invalid surface !"

    invoke-direct {v0, v1}, Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_5
    new-instance v0, Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;

    const-string v1, "Invalid surface !"

    invoke-direct {v0, v1}, Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroyCamera()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->stop()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->lockCamera()V

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "VideoStream"

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "unknown error"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    .line 8
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUnlocked:Z

    .line 10
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public encodeWithMediaCodec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->encodeWithMediaCodecMethod2()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->encodeWithMediaCodecMethod1()V

    :goto_0
    return-void
.end method

.method public encodeWithMediaCodecMethod1()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "VideoStream"

    const-string v1, "Video encoded using the MediaCodec API with a buffer"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->createCamera()V

    .line 3
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->updateCamera()V

    .line 4
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->measureFramerate()V

    .line 5
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 7
    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->destroyCamera()V

    .line 9
    throw v0

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v3, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-static {v0, v3, v2}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->debug(Landroid/content/SharedPreferences;II)Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->getNV21Convertor()Lnet/majorkernelpanic/streaming/hw/NV21Convertor;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->getEncoderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    .line 13
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v4, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    const-string v5, "video/avc"

    invoke-static {v5, v4, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 14
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v4, v4, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    const-string v5, "bitrate"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 15
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v4, v4, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    const-string v5, "frame-rate"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->getEncoderColorFormat()I

    move-result v0

    const-string v4, "color-format"

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    .line 17
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 18
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 19
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 20
    new-instance v0, Lnet/majorkernelpanic/streaming/video/VideoStream$2;

    invoke-direct {v0, p0, v2}, Lnet/majorkernelpanic/streaming/video/VideoStream$2;-><init>(Lnet/majorkernelpanic/streaming/video/VideoStream;Lnet/majorkernelpanic/streaming/hw/NV21Convertor;)V

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 21
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->getBufferSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_1
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 23
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    new-instance v2, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {v2, v3}, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;-><init>(Landroid/media/MediaCodec;)V

    invoke-virtual {v0, v2}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setInputStream(Ljava/io/InputStream;)V

    .line 24
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->start()V

    .line 25
    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    return-void
.end method

.method public encodeWithMediaCodecMethod2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "VideoStream"

    const-string v1, "Video encoded using the MediaCodec API with a surface"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v1, v1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-static {v0, v2, v1}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->debug(Landroid/content/SharedPreferences;II)Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->getEncoderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v0, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    const-string v2, "video/avc"

    invoke-static {v2, v1, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v1, v1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v1, v1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "color-format"

    const v2, 0x7f000789

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const v2, 0x3e4ccccd    # 0.2f

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 9
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 10
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 12
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    new-instance v3, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {v3, v4}, Lnet/majorkernelpanic/streaming/rtp/MediaCodecInputStream;-><init>(Landroid/media/MediaCodec;)V

    invoke-virtual {v1, v3}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setInputStream(Ljava/io/InputStream;)V

    .line 13
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->start()V

    .line 14
    iput-boolean v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    .line 15
    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCodecInputSurface:Landroid/view/Surface;

    return-void
.end method

.method public encodeWithMediaRecorder()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;
        }
    .end annotation

    const-string v0, "VideoStream"

    const-string v1, "Video encoded using the MediaRecorder API"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->createSockets()V

    .line 3
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->destroyCamera()V

    .line 4
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->createCamera()V

    .line 5
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->unlockCamera()V

    .line 6
    :try_start_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 7
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 8
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 9
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 10
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mVideoEncoder:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 11
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 12
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v4, v4, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 13
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 14
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 15
    sget-byte v1, Lnet/majorkernelpanic/streaming/MediaStream;->sPipeApi:B

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 16
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelWrite:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mSender:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 18
    :goto_0
    iget-object v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 19
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 20
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    sget-byte v1, Lnet/majorkernelpanic/streaming/MediaStream;->sPipeApi:B

    if-ne v1, v3, :cond_1

    .line 22
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mParcelRead:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mReceiver:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    const/4 v4, 0x4

    :try_start_1
    new-array v4, v4, [B

    .line 24
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 25
    :goto_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0x6d

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 26
    invoke-virtual {v1, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 27
    aget-byte v5, v4, v6

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    aget-byte v5, v4, v2

    const/16 v6, 0x61

    if-ne v5, v6, :cond_2

    aget-byte v5, v4, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v6, 0x74

    if-ne v5, v6, :cond_2

    .line 28
    :cond_4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setInputStream(Ljava/io/InputStream;)V

    .line 29
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->start()V

    .line 30
    iput-boolean v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Couldn\'t skip mp4 header :/"

    .line 31
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->stop()V

    .line 33
    throw v1

    :catch_1
    move-exception v0

    .line 34
    new-instance v1, Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/majorkernelpanic/streaming/exceptions/ConfNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCamera()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraId:I

    return v0
.end method

.method public getCodecInputSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCodecInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getFlashState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    return v0
.end method

.method public abstract getSessionDescription()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-object v0
.end method

.method public lockCamera()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUnlocked:Z

    if-eqz v0, :cond_0

    const-string v0, "VideoStream"

    const-string v1, "Locking camera"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUnlocked:Z

    :cond_0
    return-void
.end method

.method public setCamera(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 4
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, p1, :cond_0

    .line 5
    iput v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraId:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized setFlashState(Z)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->lockCamera()V

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    const-string v2, "torch"

    goto :goto_0

    :cond_1
    const-string v2, "off"

    .line 6
    :goto_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 8
    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-boolean p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-eqz p1, :cond_5

    iget-byte p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    if-ne p1, v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->unlockCamera()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 11
    :try_start_3
    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t turn the flash on !"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :goto_1
    :try_start_4
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    if-ne v0, v1, :cond_2

    .line 14
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->unlockCamera()V

    :cond_2
    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t turn the flash on !"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 17
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setPreviewOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedOrientation:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUpdated:Z

    return-void
.end method

.method public declared-synchronized setSurfaceView(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lnet/majorkernelpanic/streaming/video/VideoStream$1;

    invoke-direct {p1, p0}, Lnet/majorkernelpanic/streaming/video/VideoStream$1;-><init>(Lnet/majorkernelpanic/streaming/video/VideoStream;)V

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 6
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-virtual {v0, p1}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->equals(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUpdated:Z

    :cond_0
    return-void
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
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraOpenedManually:Z

    .line 2
    :cond_0
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->start()V

    const-string v0, "VideoStream"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream configuration: FPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPreview()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/majorkernelpanic/streaming/exceptions/CameraInUseException;,
            Lnet/majorkernelpanic/streaming/exceptions/InvalidSurfaceException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraOpenedManually:Z

    .line 2
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->createCamera()V

    .line 4
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->updateCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 2
    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4
    :cond_0
    iget-byte v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMode:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->removeMediaCodecSurface()V

    .line 6
    :cond_1
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->stop()V

    .line 7
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraOpenedManually:Z

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->destroyCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->startPreview()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraOpenedManually:Z

    .line 2
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public switchCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 2
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    .line 3
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraOpenedManually:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4
    :goto_0
    iget v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraId:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraId:I

    .line 5
    invoke-virtual {p0, v1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setCamera(I)V

    .line 6
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->stopPreview()V

    .line 7
    iput-boolean v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->startPreview()V

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->start()V

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Phone only has one camera !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized toggleFlash()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mFlashEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setFlashState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unlockCamera()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUnlocked:Z

    if-nez v0, :cond_0

    const-string v0, "VideoStream"

    const-string v1, "Unlocking camera"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUnlocked:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized updateCamera()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-static {v0, v2}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->determineClosestSupportedResolution(Landroid/hardware/Camera$Parameters;Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v2

    iput-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    .line 7
    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->determineMaximumSupportedFramerate(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v2

    .line 8
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    int-to-double v3, v3

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v5, v5, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 9
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v5, v3, v4}, Lnet/majorkernelpanic/streaming/gl/SurfaceView;->requestAspectRatio(D)V

    .line 10
    iget v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraImageFormat:I

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 11
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v3, v3, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v4, v4, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v0, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 12
    aget v1, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 14
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mOrientation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 15
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 16
    iput-boolean v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mPreviewStarted:Z

    .line 17
    iput-boolean v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mUpdated:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 19
    :try_start_3
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/video/VideoStream;->destroyCamera()V

    .line 20
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
