.class public Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;
.super Ljava/lang/Object;
.source "BackgroundTaskScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;,
        Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BackgroundTaskScheduler"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abortRemainingTasks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;

    .line 3
    invoke-static {v2}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;->access$100(Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;)V

    goto :goto_0

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

.method public execute(Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;-><init>(Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$1;)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRemainingTaskCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public submit(Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$BackgroundTaskContainer;-><init>(Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$CancellableTask;Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler$1;)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/util/BackgroundTaskScheduler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
