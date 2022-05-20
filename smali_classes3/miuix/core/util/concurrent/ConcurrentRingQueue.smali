.class public Lmiuix/core/util/concurrent/ConcurrentRingQueue;
.super Ljava/lang/Object;
.source "ConcurrentRingQueue.java"

# interfaces
.implements Lmiuix/core/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiuix/core/util/concurrent/Queue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile mAdditional:I

.field public final mAllowExtendCapacity:Z

.field public final mAutoReleaseCapacity:Z

.field public mCapacity:I

.field public volatile mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(IZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 3
    iput-boolean p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    .line 4
    iput-boolean p3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    .line 5
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 8
    iget-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 9
    iget-object p2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    :goto_0
    if-ge p3, p1, :cond_0

    .line 10
    new-instance v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    invoke-direct {v1, v0}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v1, p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    add-int/lit8 p3, p3, 0x1

    move-object p2, v1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    return-void
.end method


# virtual methods
.method public clear()I
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    move v1, v2

    :goto_1
    iget-object v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v0, v3, :cond_1

    const/4 v3, 0x0

    .line 3
    iput-object v3, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    .line 4
    iget-object v0, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1

    .line 5
    :cond_1
    iput-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 6
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1

    .line 7
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public decreaseCapacity(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    if-eqz v0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 4
    iput p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 5
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 6
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 3
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-nez v4, :cond_1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v4, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 5
    iput-object v3, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 6
    iget-object v0, v0, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 7
    iput-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 8
    :cond_2
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object v4

    .line 9
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public getCapacity()I
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    iget v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    if-lez v0, :cond_0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public increaseCapacity(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    if-nez v0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    neg-int v0, p1

    .line 3
    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 4
    iget v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mCapacity:I

    .line 5
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 6
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 3
    iget-object v2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 4
    iget v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 5
    iget-object v4, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v5, 0x1

    if-eq v4, v1, :cond_3

    .line 6
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    .line 7
    iget-object p1, v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    if-eq p1, v1, :cond_2

    iget-boolean v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAutoReleaseCapacity:Z

    if-eqz v1, :cond_2

    if-lez v3, :cond_2

    .line 8
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    sub-int/2addr v3, v5

    .line 9
    iput v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 10
    :cond_2
    iget-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_2

    .line 11
    :cond_3
    iget-boolean v4, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAllowExtendCapacity:Z

    if-nez v4, :cond_5

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    move v5, v0

    goto :goto_2

    .line 12
    :cond_5
    :goto_1
    new-instance v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiuix/core/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v4, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 13
    iput-object v1, v4, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 14
    iput-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    add-int/2addr v3, v5

    .line 15
    iput v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mAdditional:I

    .line 16
    iget-object p1, v2, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    .line 17
    :goto_2
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v5

    .line 18
    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public remove(Lmiuix/core/util/concurrent/Queue$Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/concurrent/Queue$Predicate<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    move v2, v0

    :goto_1
    iget-object v3, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v3, :cond_3

    .line 10
    iget-object v3, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    invoke-interface {p1, v3}, Lmiuix/core/util/concurrent/Queue$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 11
    iput-object v3, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 12
    :cond_2
    iget-object v1, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v2

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw p1

    .line 14
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    :goto_1
    iget-object v2, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mWriteCursor:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v2, :cond_3

    .line 3
    iget-object v2, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-object p1, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->element:Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_2

    .line 5
    :cond_2
    iget-object v1, v1, Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiuix/core/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1

    :cond_3
    move p1, v0

    .line 6
    :goto_2
    iget-object v1, p0, Lmiuix/core/util/concurrent/ConcurrentRingQueue;->mReadLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p1

    .line 7
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method
