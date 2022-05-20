.class public Lcom/android/camera/module/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"


# instance fields
.field public mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

.field public mEncoderCount:I

.field public mIsStarted:Z

.field public mMediaMuxer:Landroid/media/MediaMuxer;

.field public mStartedCount:I

.field public mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

.field public parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 16
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    sget-object v2, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open file failed, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :goto_0
    iput v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 19
    iput v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3
    invoke-static {}, Lcom/android/camera/storage/Storage;->isUseDocumentMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-static {p1, v1}, Lcom/android/camera/FileCompat;->getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    sget-object v3, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open file failed, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :goto_1
    iput v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 10
    iput v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    .line 11
    iput-boolean v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void

    .line 12
    :goto_2
    invoke-static {v0}, Lcom/android/camera/Util;->closeSafely(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public addEncoder(Lcom/android/camera/module/encoder/MediaEncoder;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "video encoder already added!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-nez v0, :cond_4

    .line 7
    iput-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    return-void

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "audio encoder already added!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unsupported encoder!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 3
    sget-object v1, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrack: trackNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trackIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public closeFd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public join()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "join>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->join()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->join()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    .line 8
    :cond_1
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "join<<<"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->prepare()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->prepare()V

    :cond_1
    return-void
.end method

.method public setLocation(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method public declared-synchronized start()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: startedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    .line 3
    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "MediaMuxer started"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecording(JZ)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecording: offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/camera/module/encoder/MediaEncoder;->startRecording(JZ)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public declared-synchronized stop()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop: startedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    .line 3
    iget v2, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mEncoderCount:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    if-gtz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 6
    iput-boolean v3, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 7
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "MediaMuxer stopped"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRecording()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRecording>>>"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->stopRecording()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/android/camera/module/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaEncoder;->stopRecording()V

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRecording<<<"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mStartedCount:I

    if-lez v0, :cond_0

    .line 2
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 4
    sget-object v3, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " trackIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  presentationTimeUs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " size = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
