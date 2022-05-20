.class public Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;
.super Ljava/lang/Object;
.source "RecorderSynchronizer.java"


# static fields
.field public static final ourInstance:Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;


# instance fields
.field public latch:Ljava/util/concurrent/CountDownLatch;

.field public final mSyncObj:Ljava/lang/Object;

.field public volatile recording:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;-><init>()V

    sput-object v0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->ourInstance:Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->mSyncObj:Ljava/lang/Object;

    .line 4
    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->recording:Z

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->ourInstance:Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    return-object v0
.end method


# virtual methods
.method public countDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

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

.method public isRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->recording:Z

    return v0
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->recording:Z

    .line 2
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->recording:Z

    return-void
.end method
