.class public Lcom/android/camera/AudioMonitorPlayer;
.super Ljava/lang/Object;
.source "AudioMonitorPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiAudioMonitor"


# instance fields
.field public mBufferSize:I

.field public final mChannelConfig:I

.field public final mEncoding:I

.field public mPlayBuffer:[S

.field public mPlayThreadRunning:Z

.field public mPlaybackThread:Ljava/lang/Thread;

.field public mPlayer:Landroid/media/AudioTrack;

.field public final mSampleRateInHz:I

.field public playbackRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xbb80

    .line 2
    iput v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mSampleRateInHz:I

    const/4 v1, 0x4

    .line 3
    iput v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mChannelConfig:I

    const/4 v2, 0x2

    .line 4
    iput v2, p0, Lcom/android/camera/AudioMonitorPlayer;->mEncoding:I

    .line 5
    new-instance v3, Lcom/android/camera/AudioMonitorPlayer$1;

    invoke-direct {v3, p0}, Lcom/android/camera/AudioMonitorPlayer$1;-><init>(Lcom/android/camera/AudioMonitorPlayer;)V

    iput-object v3, p0, Lcom/android/camera/AudioMonitorPlayer;->playbackRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    .line 8
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mBufferSize:I

    if-lez v0, :cond_0

    .line 9
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayBuffer:[S

    .line 10
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "MiuiAudioMonitor"

    const-string v2, "AudioTrack.getMinBufferSize is error when init audio:"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/AudioMonitorPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/AudioMonitorPlayer;->mBufferSize:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/AudioMonitorPlayer;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/AudioMonitorPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/AudioMonitorPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/AudioMonitorPlayer;)[S
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayBuffer:[S

    return-object p0
.end method

.method private destroyThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlaybackThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlaybackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startThread()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/AudioMonitorPlayer;->destroyThread()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlaybackThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->playbackRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlaybackThread:Ljava/lang/Thread;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlaybackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public startPlay()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    :try_start_0
    const-string v0, "MiuiAudioMonitor"

    const-string/jumbo v1, "startThread ..."

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/AudioMonitorPlayer;->startThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 3

    const-string v0, "MiuiAudioMonitor"

    .line 1
    iget-boolean v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    :try_start_0
    const-string v1, "destroyThread ..."

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/AudioMonitorPlayer;->destroyThread()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    const-string v1, "RELEASE AUDIO TRACK ..."

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "exception when stop audio :"

    .line 11
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
