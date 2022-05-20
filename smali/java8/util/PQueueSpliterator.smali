.class public final Ljava8/util/PQueueSpliterator;
.super Ljava/lang/Object;
.source "PQueueSpliterator.java"

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
.field public static final IS_HARMONY:Z

.field public static final MODCOUNT_OFF:J

.field public static final QUEUE_OFF:J

.field public static final SIZE_OFF:J

.field public static final U:Lsun/misc/Unsafe;


# instance fields
.field public expectedModCount:I

.field public fence:I

.field public index:I

.field public final pq:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Ljava8/util/Spliterators;->IS_HARMONY_ANDROID:Z

    sput-boolean v0, Ljava8/util/PQueueSpliterator;->IS_HARMONY:Z

    .line 2
    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/PQueueSpliterator;->U:Lsun/misc/Unsafe;

    .line 3
    :try_start_0
    const-class v1, Ljava/util/PriorityQueue;

    const-string/jumbo v2, "size"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/PQueueSpliterator;->SIZE_OFF:J

    .line 6
    sget-boolean v0, Ljava8/util/PQueueSpliterator;->IS_HARMONY:Z

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Ljava8/util/PQueueSpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/PriorityQueue;

    const-string v2, "modCount"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/PQueueSpliterator;->MODCOUNT_OFF:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 10
    sput-wide v0, Ljava8/util/PQueueSpliterator;->MODCOUNT_OFF:J

    .line 11
    :goto_0
    sget-boolean v0, Ljava8/util/PQueueSpliterator;->IS_HARMONY:Z

    if-eqz v0, :cond_1

    const-string v0, "elements"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "queue"

    .line 12
    :goto_1
    sget-object v1, Ljava8/util/PQueueSpliterator;->U:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/PriorityQueue;

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/PQueueSpliterator;->QUEUE_OFF:J
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

.method public constructor <init>(Ljava/util/PriorityQueue;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "TE;>;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/PQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    .line 3
    iput p2, p0, Ljava8/util/PQueueSpliterator;->index:I

    .line 4
    iput p3, p0, Ljava8/util/PQueueSpliterator;->fence:I

    .line 5
    iput p4, p0, Ljava8/util/PQueueSpliterator;->expectedModCount:I

    return-void
.end method

.method private getFence()I
    .locals 1

    .line 1
    iget v0, p0, Ljava8/util/PQueueSpliterator;->fence:I

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava8/util/PQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getModCount(Ljava/util/PriorityQueue;)I

    move-result v0

    iput v0, p0, Ljava8/util/PQueueSpliterator;->expectedModCount:I

    .line 3
    iget-object v0, p0, Ljava8/util/PQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getSize(Ljava/util/PriorityQueue;)I

    move-result v0

    iput v0, p0, Ljava8/util/PQueueSpliterator;->fence:I

    :cond_0
    return v0
.end method

.method public static getModCount(Ljava/util/PriorityQueue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/PriorityQueue<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    sget-boolean v0, Ljava8/util/PQueueSpliterator;->IS_HARMONY:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v0, Ljava8/util/PQueueSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/PQueueSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static getQueue(Ljava/util/PriorityQueue;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/PriorityQueue<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/PQueueSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/PQueueSpliterator;->QUEUE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static getSize(Ljava/util/PriorityQueue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/PriorityQueue<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/PQueueSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/PQueueSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static spliterator(Ljava/util/PriorityQueue;)Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/PriorityQueue<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava8/util/PQueueSpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava8/util/PQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4140

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava8/util/PQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/PQueueSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 5
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
    iget-object v0, p0, Ljava8/util/PQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    .line 3
    iget v1, p0, Ljava8/util/PQueueSpliterator;->fence:I

    if-gez v1, :cond_0

    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getSize(Ljava/util/PriorityQueue;)I

    move-result v1

    iput v1, p0, Ljava8/util/PQueueSpliterator;->fence:I

    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getModCount(Ljava/util/PriorityQueue;)I

    move-result v1

    iput v1, p0, Ljava8/util/PQueueSpliterator;->expectedModCount:I

    .line 4
    :cond_0
    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getQueue(Ljava/util/PriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget v2, p0, Ljava8/util/PQueueSpliterator;->index:I

    iget v3, p0, Ljava8/util/PQueueSpliterator;->fence:I

    iput v3, p0, Ljava8/util/PQueueSpliterator;->index:I

    :goto_0
    if-ge v2, v3, :cond_2

    .line 6
    aget-object v4, v1, v2

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v4}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getModCount(Ljava/util/PriorityQueue;)I

    move-result p1

    iget v0, p0, Ljava8/util/PQueueSpliterator;->expectedModCount:I

    if-ne p1, v0, :cond_3

    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
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

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 3
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
    iget-object v0, p0, Ljava8/util/PQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    .line 3
    iget v1, p0, Ljava8/util/PQueueSpliterator;->fence:I

    if-gez v1, :cond_0

    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getSize(Ljava/util/PriorityQueue;)I

    move-result v1

    iput v1, p0, Ljava8/util/PQueueSpliterator;->fence:I

    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getModCount(Ljava/util/PriorityQueue;)I

    move-result v1

    iput v1, p0, Ljava8/util/PQueueSpliterator;->expectedModCount:I

    .line 4
    :cond_0
    iget v1, p0, Ljava8/util/PQueueSpliterator;->index:I

    iget v2, p0, Ljava8/util/PQueueSpliterator;->fence:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 5
    iput v2, p0, Ljava8/util/PQueueSpliterator;->index:I

    .line 6
    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getQueue(Ljava/util/PriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0}, Ljava8/util/PQueueSpliterator;->getModCount(Ljava/util/PriorityQueue;)I

    move-result v0

    iget v2, p0, Ljava8/util/PQueueSpliterator;->expectedModCount:I

    if-ne v0, v2, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/PQueueSpliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/PQueueSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava8/util/PQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/PQueueSpliterator;->index:I

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava8/util/PQueueSpliterator;

    iget-object v3, p0, Ljava8/util/PQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    iput v0, p0, Ljava8/util/PQueueSpliterator;->index:I

    iget v4, p0, Ljava8/util/PQueueSpliterator;->expectedModCount:I

    invoke-direct {v2, v3, v1, v0, v4}, Ljava8/util/PQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/PQueueSpliterator;->trySplit()Ljava8/util/PQueueSpliterator;

    move-result-object v0

    return-object v0
.end method
