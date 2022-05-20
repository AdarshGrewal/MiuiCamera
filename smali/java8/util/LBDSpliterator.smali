.class public final Ljava8/util/LBDSpliterator;
.super Ljava/lang/Object;
.source "LBDSpliterator.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final FIRST_OFF:J

.field public static final LOCK_OFF:J

.field public static final MAX_BATCH:I = 0x2000000

.field public static final NODE_ITEM_OFF:J

.field public static final NODE_NEXT_OFF:J

.field public static final U:Lsun/misc/Unsafe;


# instance fields
.field public batch:I

.field public current:Ljava/lang/Object;

.field public est:J

.field public exhausted:Z

.field public final queue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final queueLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-string v0, "java.util.concurrent.LinkedBlockingDeque$Node"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/LinkedBlockingDeque;

    const-string v3, "first"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava8/util/LBDSpliterator;->FIRST_OFF:J

    .line 6
    sget-object v1, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/LinkedBlockingDeque;

    const-string v3, "lock"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava8/util/LBDSpliterator;->LOCK_OFF:J

    .line 9
    sget-object v1, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    const-string v2, "item"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava8/util/LBDSpliterator;->NODE_ITEM_OFF:J

    .line 12
    sget-object v1, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    const-string v2, "next"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/LBDSpliterator;->NODE_NEXT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava8/util/LBDSpliterator;->est:J

    .line 4
    invoke-static {p1}, Ljava8/util/LBDSpliterator;->getQueueLock(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/LBDSpliterator;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static getNextNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LBDSpliterator;->NODE_NEXT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LBDSpliterator;->NODE_ITEM_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LBDSpliterator;->FIRST_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getQueueLock(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "*>;)",
            "Ljava/util/concurrent/locks/ReentrantLock;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/LBDSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/LBDSpliterator;->LOCK_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static spliterator(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava8/util/LBDSpliterator;

    invoke-direct {v0, p0}, Ljava8/util/LBDSpliterator;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ljava8/util/LBDSpliterator;->est:J

    return-wide v0
.end method

.method public forEachFrom(Ljava8/util/function/Consumer;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/LBDSpliterator;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez v2, :cond_4

    if-nez p2, :cond_1

    .line 3
    :try_start_0
    iget-object p2, p0, Ljava8/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p2}, Ljava8/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_3

    .line 4
    invoke-static {v2}, Ljava8/util/LBDSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0, v2}, Ljava8/util/LBDSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_3
    :goto_2
    new-array v2, v3, [Ljava/lang/Object;

    :cond_4
    move v4, v1

    :goto_3
    if-eqz p2, :cond_6

    if-ge v4, v3, :cond_6

    .line 7
    invoke-static {p2}, Ljava8/util/LBDSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 8
    :cond_5
    invoke-virtual {p0, p2}, Ljava8/util/LBDSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 9
    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v1

    :goto_5
    if-ge v5, v4, :cond_7

    .line 10
    aget-object v6, v2, v5

    .line 11
    invoke-interface {p1, v6}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    if-lez v4, :cond_8

    if-nez p2, :cond_0

    :cond_8
    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Ljava8/util/LBDSpliterator;->exhausted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ljava8/util/LBDSpliterator;->exhausted:Z

    .line 4
    iget-object v0, p0, Ljava8/util/LBDSpliterator;->current:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ljava8/util/LBDSpliterator;->current:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1, v0}, Ljava8/util/LBDSpliterator;->forEachFrom(Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public succ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava8/util/LBDSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ljava8/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p1}, Ljava8/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Ljava8/util/LBDSpliterator;->exhausted:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Ljava8/util/LBDSpliterator;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    :try_start_0
    iget-object v2, p0, Ljava8/util/LBDSpliterator;->current:Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava8/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {v2}, Ljava8/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    :cond_0
    invoke-static {v2}, Ljava8/util/LBDSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v2}, Ljava8/util/LBDSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1

    if-nez v2, :cond_0

    .line 8
    :cond_1
    iput-object v2, p0, Ljava8/util/LBDSpliterator;->current:Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 9
    iput-boolean v3, p0, Ljava8/util/LBDSpliterator;->exhausted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v3

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 2
    iget-boolean v1, p0, Ljava8/util/LBDSpliterator;->exhausted:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Ljava8/util/LBDSpliterator;->current:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Ljava8/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 4
    :cond_0
    invoke-static {v1}, Ljava8/util/LBDSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5
    iget v1, p0, Ljava8/util/LBDSpliterator;->batch:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/high16 v3, 0x2000000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljava8/util/LBDSpliterator;->batch:I

    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    iget-object v4, p0, Ljava8/util/LBDSpliterator;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    iget-object v5, p0, Ljava8/util/LBDSpliterator;->current:Ljava/lang/Object;

    .line 9
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 10
    :try_start_0
    invoke-static {v0}, Ljava8/util/LBDSpliterator;->getQueueFirst(Ljava/util/concurrent/LinkedBlockingDeque;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    move v0, v6

    :goto_1
    if-eqz v5, :cond_4

    if-ge v0, v1, :cond_4

    .line 11
    invoke-static {v5}, Ljava8/util/LBDSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v0

    if-eqz v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 12
    :cond_3
    invoke-virtual {p0, v5}, Ljava8/util/LBDSpliterator;->succ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 13
    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    iput-object v5, p0, Ljava8/util/LBDSpliterator;->current:Ljava/lang/Object;

    const-wide/16 v7, 0x0

    if-nez v5, :cond_5

    .line 15
    iput-wide v7, p0, Ljava8/util/LBDSpliterator;->est:J

    .line 16
    iput-boolean v2, p0, Ljava8/util/LBDSpliterator;->exhausted:Z

    goto :goto_4

    .line 17
    :cond_5
    iget-wide v1, p0, Ljava8/util/LBDSpliterator;->est:J

    int-to-long v4, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Ljava8/util/LBDSpliterator;->est:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_6

    .line 18
    iput-wide v7, p0, Ljava8/util/LBDSpliterator;->est:J

    :cond_6
    :goto_4
    if-lez v0, :cond_7

    const/16 v1, 0x1110

    .line 19
    invoke-static {v3, v6, v0, v1}, Ljava8/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method
