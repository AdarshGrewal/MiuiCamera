.class public Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;
.super Landroid/os/HandlerThread;
.source "HandlerThreadExtension.java"


# static fields
.field public static final SHOW_LOGS:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final mStart:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    sput-boolean v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->SHOW_LOGS:Z

    .line 2
    const-class v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$1;

    invoke-direct {p1, p0}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$1;-><init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V

    invoke-virtual {p0, p1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->SHOW_LOGS:Z

    return v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLooperPrepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$2;

    invoke-direct {v1, p0}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$2;-><init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    .line 2
    sget-boolean v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "post, successfullyAddedToQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postQuit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$3;

    invoke-direct {v1, p0}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$3;-><init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startThread()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    const-string v1, ">> startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-boolean v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->SHOW_LOGS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    const-string v1, "<< startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
