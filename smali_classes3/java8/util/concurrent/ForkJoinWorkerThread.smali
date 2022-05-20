.class public Ljava8/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field public static final NAME_PLACEHOLDER:Ljava/lang/String; = "aForkJoinWorkerThread"


# instance fields
.field public final pool:Ljava8/util/concurrent/ForkJoinPool;

.field public final workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    .line 3
    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method

.method public constructor <init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p2}, Ljava8/util/concurrent/TLRandom;->setContextClassLoader(Ljava/lang/Thread;Ljava/lang/ClassLoader;)V

    .line 6
    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    .line 7
    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method

.method public constructor <init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    .line 8
    invoke-direct {p0, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 9
    invoke-super {p0, p2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 10
    invoke-static {p0, p4}, Ljava8/util/concurrent/TLRandom;->setInheritedAccessControlContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V

    .line 11
    invoke-static {p0}, Ljava8/util/concurrent/TLRandom;->eraseThreadLocals(Ljava/lang/Thread;)V

    .line 12
    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    .line 13
    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method


# virtual methods
.method public afterTopLevelExec()V
    .locals 0

    return-void
.end method

.method public getPool()Ljava8/util/concurrent/ForkJoinPool;
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onTermination(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    iget-object v0, v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onStart()V

    .line 3
    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    iget-object v2, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v2}, Ljava8/util/concurrent/ForkJoinPool;->runWorker(Ljava8/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :catchall_0
    :goto_0
    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0, v0}, Ljava8/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method
