.class public abstract Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$VideoStateListener;,
        Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;,
        Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;
    }
.end annotation


# static fields
.field public static final POSITION_UPDATE_NOTIFYING_PERIOD:I = 0x3e8

.field public static final SHOW_LOGS:Z


# instance fields
.field public TAG:Ljava/lang/String;

.field public mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public final mMediaPlayer:Landroid/media/MediaPlayer;

.field public final mNotifyPositionUpdateRunnable:Ljava/lang/Runnable;

.field public final mOnVideoPreparedMessage:Ljava/lang/Runnable;

.field public final mOnVideoStopMessage:Ljava/lang/Runnable;

.field public mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;",
            ">;"
        }
    .end annotation
.end field

.field public mSurface:Landroid/view/Surface;

.field public mVideoStateListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$VideoStateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    sput-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMainThreadHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$1;-><init>(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mOnVideoPreparedMessage:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$3;

    invoke-direct {v0, p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$3;-><init>(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mOnVideoStopMessage:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$4;

    invoke-direct {v0, p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$4;-><init>(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mNotifyPositionUpdateRunnable:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    .line 9
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_0

    const-string v1, "constructor of MediaPlayerWrapper"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor of MediaPlayerWrapper, main Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor of MediaPlayerWrapper, my Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 14
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->IDLE:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "myLooper not null, a bug in some MediaPlayer implementation cause that listeners are not called at all. Please use a thread without Looper"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    return v0
.end method

.method public static synthetic access$100(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->notifyPositionUpdated()V

    return-void
.end method

.method private inUiThread()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyPositionUpdated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mVideoStateListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$VideoStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STARTED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mVideoStateListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$VideoStateListener;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$VideoStateListener;->onVideoPlayTimeChanged(I)V

    .line 4
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

.method private onPrepareError(Ljava/io/IOException;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch IO exception ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/videoplayer/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->ERROR:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/16 v1, -0x3ec

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onErrorMainThread(II)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$2;-><init>(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public static positionToPercent(II)I
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private positionUpdaterIsWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private printInfo(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x385

    if-eq p1, v0, :cond_1

    const/16 v0, 0x386

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1
    :pswitch_0
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_METADATA_UPDATE"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2
    :pswitch_1
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_NOT_SEEKABLE"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :pswitch_2
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_BAD_INTERLEAVING"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :pswitch_3
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_BUFFERING_END"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :pswitch_4
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_BUFFERING_START"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :pswitch_5
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_1
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_2
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_3
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onInfo, MEDIA_INFO_UNKNOWN"

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->inf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startPositionUpdateNotifier()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPositionUpdateNotifier, mPositionUpdateNotifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mNotifyPositionUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopPositionUpdateNotifier()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPositionUpdateNotifier, mPositionUpdateNotifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mPositionUpdateNotifier:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> clearAll, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< clearAll, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentState()Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

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

.method public getDuration()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    .line 4
    :goto_0
    :pswitch_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isReadyForPlayback()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyForPlayback, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 4
    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    .line 5
    :goto_0
    :pswitch_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onBufferingUpdateMainThread(I)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVideoCompletion, mState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PLAYBACK_COMPLETED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoCompletionMainThread()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onErrorMainThread, what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->ERROR:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->positionUpdaterIsWorking()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->stopPositionUpdateNotifier()V

    .line 7
    :cond_1
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onErrorMainThread, mListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1, p2, p3}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onErrorMainThread(II)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 10
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "onInfo"

    invoke-static {p1, p3}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->printInfo(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVideoSizeChanged, width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoSizeChangedMainThread(II)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, ">> pause"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pause, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 7
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PAUSED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pause, called from illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "<< pause"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public prepare()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> prepare, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare, called from illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->PREPARED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mOnVideoPreparedMessage:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->onPrepareError(Ljava/io/IOException;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 10
    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch IllegalStateException ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/videoplayer/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< prepare, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> release, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->END:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< release, mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> reset , mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot call reset from state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->IDLE:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< reset , mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public seekToPercent(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    .line 3
    sget-boolean v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seekToPercent, percent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->getDuration()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 6
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->notifyPositionUpdated()V

    goto :goto_0

    .line 8
    :pswitch_1
    sget-boolean p1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "seekToPercent, illegal state"

    invoke-static {p1, v1}, Lcom/android/camera/videoplayer/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 11
    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 13
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    .line 14
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    .line 15
    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17
    monitor-exit v0

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource called in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource, filePath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->INITIALIZED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource called in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLooping(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLooping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setMainThreadMediaPlayerListener(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setSurfaceTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSurfaceTexture mSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mSurface:Landroid/view/Surface;

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 6
    :goto_0
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< setSurfaceTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public setVideoStateListener(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$VideoStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mVideoStateListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$VideoStateListener;

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, ">> start"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start, called from illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start, called from illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :pswitch_2
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start, video is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", starting playback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->startPositionUpdateNotifier()V

    .line 10
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STARTED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "<< start"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, ">> stop"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop, mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    sget-object v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$5;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->stopPositionUpdateNotifier()V

    .line 6
    :pswitch_1
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v2, ">> stop"

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 8
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "<< stop"

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;->STOPPED:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mListener:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mOnVideoStopMessage:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 12
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot stop. Player in mState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :pswitch_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stop, already stopped"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->SHOW_LOGS:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "<< stop"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
