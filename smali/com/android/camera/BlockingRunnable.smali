.class public Lcom/android/camera/BlockingRunnable;
.super Ljava/lang/Object;
.source "BlockingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mDone:Z

.field public final mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/BlockingRunnable;->mTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public postAndWait(Landroid/os/Handler;J)Z
    .locals 6

    .line 1
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    monitor-enter p0

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    const/4 v3, 0x1

    if-gtz p1, :cond_2

    .line 3
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean p1, p0, Lcom/android/camera/BlockingRunnable;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_2
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    .line 7
    :catch_1
    :goto_1
    iget-boolean p1, p0, Lcom/android/camera/BlockingRunnable;->mDone:Z

    if-nez p1, :cond_4

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long p1, v4, p1

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    .line 9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 10
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 11
    :cond_4
    :try_start_4
    monitor-exit p0

    return v3

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/android/camera/BlockingRunnable;->mDone:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 6
    monitor-enter p0

    .line 7
    :try_start_2
    iput-boolean v0, p0, Lcom/android/camera/BlockingRunnable;->mDone:Z

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
