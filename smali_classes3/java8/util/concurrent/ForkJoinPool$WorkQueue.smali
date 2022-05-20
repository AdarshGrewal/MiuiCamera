.class public final Ljava8/util/concurrent/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkQueue"
.end annotation


# static fields
.field public static final ABASE:I

.field public static final ASHIFT:I

.field public static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field public static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field public static final PHASE:J

.field public static final U:Lsun/misc/Unsafe;


# instance fields
.field public array:[Ljava8/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile base:I

.field public id:I

.field public nsteals:I

.field public final owner:Ljava8/util/concurrent/ForkJoinWorkerThread;

.field public volatile pad00:J

.field public volatile pad01:J

.field public volatile pad02:J

.field public volatile pad03:J

.field public volatile pad04:J

.field public volatile pad05:J

.field public volatile pad06:J

.field public volatile pad07:J

.field public volatile pad08:J

.field public volatile pad09:J

.field public volatile pad0a:J

.field public volatile pad0b:J

.field public volatile pad0c:J

.field public volatile pad0d:J

.field public volatile pad0e:J

.field public volatile pad0f:J

.field public volatile pad10:Ljava/lang/Object;

.field public volatile pad11:Ljava/lang/Object;

.field public volatile pad12:Ljava/lang/Object;

.field public volatile pad13:Ljava/lang/Object;

.field public volatile pad14:Ljava/lang/Object;

.field public volatile pad15:Ljava/lang/Object;

.field public volatile pad16:Ljava/lang/Object;

.field public volatile pad17:Ljava/lang/Object;

.field public volatile pad18:Ljava/lang/Object;

.field public volatile pad19:Ljava/lang/Object;

.field public volatile pad1a:Ljava/lang/Object;

.field public volatile pad1b:Ljava/lang/Object;

.field public volatile pad1c:Ljava/lang/Object;

.field public volatile pad1d:Ljava/lang/Object;

.field public volatile pad1e:Ljava/lang/Object;

.field public volatile pad1f:Ljava/lang/Object;

.field public volatile phase:I

.field public final pool:Ljava8/util/concurrent/ForkJoinPool;

.field public volatile source:I

.field public stackPred:I

.field public top:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava8/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 2
    :try_start_0
    const-class v1, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    const-string v2, "phase"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    .line 4
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v1, [Ljava8/util/concurrent/ForkJoinTask;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    .line 5
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v1, [Ljava8/util/concurrent/ForkJoinTask;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "array index scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava8/util/concurrent/ForkJoinPool;Ljava8/util/concurrent/ForkJoinWorkerThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava8/util/concurrent/ForkJoinPool;

    .line 3
    iput-object p2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava8/util/concurrent/ForkJoinWorkerThread;

    const/16 p1, 0x1000

    .line 4
    iput p1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput p1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    return-void
.end method


# virtual methods
.method public final cancelAll()V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava8/util/concurrent/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava8/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava8/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getPoolIndex()I
    .locals 2

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const v1, 0xffff

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final growArray()[Ljava8/util/concurrent/ForkJoinTask;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v6, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v6, :cond_0

    .line 2
    array-length v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2000

    if-lez v0, :cond_1

    shl-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lt v2, v1, :cond_5

    const/high16 v1, 0x4000000

    if-gt v2, v1, :cond_5

    .line 3
    new-array v7, v2, [Ljava8/util/concurrent/ForkJoinTask;

    iput-object v7, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v6, :cond_4

    add-int/lit8 v8, v0, -0x1

    if-lez v8, :cond_4

    .line 4
    iget v9, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v1, v9, v0

    if-lez v1, :cond_4

    add-int/lit8 v10, v2, -0x1

    move v11, v0

    :cond_2
    and-int v0, v11, v8

    int-to-long v0, v0

    .line 5
    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 6
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 7
    invoke-virtual {v0, v6, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v12, :cond_3

    .line 8
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v6

    move-object v4, v12

    .line 9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    and-int v0, v11, v10

    .line 10
    aput-object v12, v7, v0

    :cond_3
    add-int/lit8 v11, v11, 0x1

    if-ne v11, v9, :cond_2

    .line 11
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    :cond_4
    return-object v7

    .line 12
    :cond_5
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Queue capacity exceeded"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isApparentlyUnblocked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava8/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 4

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    if-gez v1, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-eqz v3, :cond_1

    sub-int/2addr v3, v2

    and-int/2addr v0, v3

    aget-object v0, v1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final localHelpCC(Ljava8/util/concurrent/CountedCompleter;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    iget v1, p1, Ljava8/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_5

    .line 2
    :cond_0
    iget v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 3
    iget-object v4, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v4, :cond_3

    if-eq v1, v2, :cond_3

    array-length v1, v4

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    int-to-long v5, v1

    .line 4
    sget v1, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v5, v1

    sget v1, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    .line 5
    sget-object v1, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 6
    invoke-virtual {v1, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/util/concurrent/ForkJoinTask;

    .line 7
    instance-of v3, v1, Ljava8/util/concurrent/CountedCompleter;

    if-eqz v3, :cond_3

    .line 8
    check-cast v1, Ljava8/util/concurrent/CountedCompleter;

    move-object v3, v1

    :cond_1
    if-eq v3, p1, :cond_2

    .line 9
    iget-object v3, v3, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-nez v3, :cond_1

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move-object v7, v1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iput v2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 12
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 13
    invoke-virtual {v1}, Ljava8/util/concurrent/ForkJoinTask;->doExec()I

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v0

    .line 14
    :goto_1
    iget v2, p1, Ljava8/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :cond_6
    :goto_2
    return v0
.end method

.method public final localPollAndExec(I)V
    .locals 11

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 1
    :cond_1
    iget v2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2
    iget-object v4, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v4, :cond_3

    sub-int v3, v2, v3

    if-gez v3, :cond_3

    array-length v5, v4

    if-lez v5, :cond_3

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v2, 0x1

    and-int/2addr v2, v5

    int-to-long v7, v2

    .line 3
    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v7, v2

    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    const/4 v2, 0x0

    .line 4
    invoke-static {v4, v7, v8, v2}, Ljava8/util/concurrent/ForkJoinPool;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v2, :cond_2

    .line 5
    iput v6, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 6
    invoke-virtual {v2}, Ljava8/util/concurrent/ForkJoinTask;->doExec()I

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-ne v3, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method public final localPopAndExec(I)V
    .locals 7

    .line 1
    :cond_0
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2
    iget-object v2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    int-to-long v3, v0

    .line 3
    sget v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v3, v0

    sget v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    const/4 v0, 0x0

    .line 4
    invoke-static {v2, v3, v4, v0}, Ljava8/util/concurrent/ForkJoinPool;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_1

    .line 5
    iput v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 6
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 7
    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->doExec()I

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    :cond_1
    return-void
.end method

.method public final nextLocalTask()Ljava8/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava8/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava8/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final peek()Ljava8/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    goto :goto_0

    :cond_0
    iget v2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    and-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final poll()Ljava8/util/concurrent/ForkJoinTask;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2
    iget-object v3, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_2

    sub-int v1, v0, v1

    if-gez v1, :cond_2

    array-length v2, v3

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    int-to-long v4, v2

    .line 3
    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v2

    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 4
    sget-object v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava8/util/concurrent/ForkJoinTask;

    add-int/lit8 v9, v0, 0x1

    .line 6
    iget v2, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v2, :cond_0

    if-eqz v8, :cond_1

    .line 7
    sget-object v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iput v9, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    return-object v8

    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final pop()Ljava8/util/concurrent/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2
    iget-object v3, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_0

    if-eq v0, v1, :cond_0

    array-length v0, v3

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    int-to-long v4, v0

    .line 3
    sget v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v0

    sget v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 4
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v0, v3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    .line 6
    sget-object v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v6, v0

    .line 7
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iput v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 9
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final push(Ljava8/util/concurrent/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2
    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v0

    int-to-long v3, v3

    .line 3
    sget v5, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v3, v5

    sget v5, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 4
    iget-object v5, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava8/util/concurrent/ForkJoinPool;

    add-int/lit8 v6, v0, 0x1

    .line 5
    iput v6, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 6
    sget-object v6, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v6, v1, v3, v4, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    iget p1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    if-eqz v5, :cond_0

    .line 8
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool$MemBar;->fullFence()V

    .line 9
    invoke-virtual {v5}, Ljava8/util/concurrent/ForkJoinPool;->signalWork()V

    goto :goto_0

    :cond_0
    add-int/2addr p1, v2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava8/util/concurrent/ForkJoinTask;

    :cond_1
    :goto_0
    return-void
.end method

.method public final queueSize()I
    .locals 2

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public final sharedHelpCC(Ljava8/util/concurrent/CountedCompleter;I)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    .line 1
    iget v0, v7, Ljava8/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_7

    move/from16 v9, p2

    .line 2
    :cond_0
    iget v0, v6, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v10, v6, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 3
    iget-object v12, v6, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v12, :cond_4

    if-eq v0, v10, :cond_4

    array-length v0, v12

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v15, v10, -0x1

    and-int/2addr v0, v15

    int-to-long v0, v0

    .line 4
    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v2, v2

    add-long v13, v0, v2

    .line 5
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 6
    invoke-virtual {v0, v12, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/ForkJoinTask;

    .line 7
    instance-of v1, v0, Ljava8/util/concurrent/CountedCompleter;

    if-eqz v1, :cond_4

    .line 8
    move-object/from16 v17, v0

    check-cast v17, Ljava8/util/concurrent/CountedCompleter;

    move-object/from16 v0, v17

    :cond_1
    if-eq v0, v7, :cond_2

    .line 9
    iget-object v0, v0, Ljava8/util/concurrent/CountedCompleter;->completer:Ljava8/util/concurrent/CountedCompleter;

    if-nez v0, :cond_1

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget v0, v6, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v10, :cond_3

    iget-object v0, v6, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-ne v0, v12, :cond_3

    sget-object v11, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move v10, v15

    move-object/from16 v15, v17

    .line 12
    invoke-virtual/range {v11 .. v16}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iput v10, v6, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v8

    .line 14
    :goto_0
    sget-object v1, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    invoke-virtual {v1, v6, v2, v3, v8}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual/range {v17 .. v17}, Ljava8/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v8

    .line 16
    :cond_5
    :goto_2
    iget v1, v7, Ljava8/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_6

    if-eqz v0, :cond_6

    if-eqz v9, :cond_0

    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_0

    :cond_6
    move v8, v1

    goto :goto_3

    :cond_7
    move v8, v0

    :cond_8
    :goto_3
    return v8
.end method

.method public final tryLockSharedQueue()Z
    .locals 6

    .line 1
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public final tryRemoveAndExec(Ljava8/util/concurrent/ForkJoinTask;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    add-int/lit8 v8, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    move v9, v1

    :goto_0
    and-int v2, v9, v8

    .line 2
    sget v3, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v4, v2

    .line 3
    sget-object v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 4
    invoke-virtual {v2, v0, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava8/util/concurrent/ForkJoinTask;

    if-nez v10, :cond_0

    goto :goto_2

    :cond_0
    if-ne v10, p1, :cond_2

    .line 5
    sget-object v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v3, v0

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iput v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    :goto_1
    if-eq v9, v1, :cond_1

    add-int/lit8 p1, v9, 0x1

    and-int v2, p1, v8

    .line 7
    sget v3, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 8
    sget-object v4, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava8/util/concurrent/ForkJoinTask;

    .line 9
    sget-object v5, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v2, v3, v6}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    and-int v2, v9, v8

    .line 10
    sget v3, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 11
    sget-object v5, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5, v0, v2, v3, v4}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v9, p1

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    .line 13
    invoke-virtual {v10}, Ljava8/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final trySharedUnpush(Ljava8/util/concurrent/ForkJoinTask;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    const/4 v6, 0x1

    add-int/lit8 v7, v0, -0x1

    .line 2
    iget-object v8, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    array-length v0, v8

    if-lez v0, :cond_1

    sub-int/2addr v0, v6

    and-int/2addr v0, v7

    int-to-long v0, v0

    .line 3
    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v2, v2

    add-long v10, v0, v2

    .line 4
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v8, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/ForkJoinTask;

    if-ne v0, p1, :cond_1

    .line 5
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    .line 6
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v1, v7, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-ne v0, v8, :cond_0

    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v8

    move-wide v2, v10

    move-object v4, p1

    .line 8
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iput v7, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0

    :cond_0
    move v6, v9

    .line 10
    :goto_0
    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->PHASE:J

    invoke-virtual {v0, p0, v1, v2, v9}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    move v9, v6

    :cond_1
    return v9
.end method

.method public final tryUnpush(Ljava8/util/concurrent/ForkJoinTask;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2
    iget-object v3, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_0

    if-eq v0, v1, :cond_0

    array-length v0, v3

    if-lez v0, :cond_0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    int-to-long v4, v0

    .line 3
    sget v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v0

    sget v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 4
    sget-object v2, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iput v1, p0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 6
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool$MemBar;->storeFence()V

    return v8

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
