.class public final Ljava8/util/ArrayDequeSpliterator;
.super Ljava/lang/Object;
.source "ArrayDequeSpliterator.java"

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
.field public static final DATA_OFF:J

.field public static final HEAD_OFF:J

.field public static final TAIL_OFF:J

.field public static final U:Lsun/misc/Unsafe;


# instance fields
.field public final deq:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field public fence:I

.field public index:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    .line 2
    :try_start_0
    const-class v1, Ljava/util/ArrayDeque;

    const-string/jumbo v2, "tail"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/ArrayDequeSpliterator;->TAIL_OFF:J

    .line 5
    sget-object v0, Ljava8/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/ArrayDeque;

    const-string v2, "head"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/ArrayDequeSpliterator;->HEAD_OFF:J

    .line 8
    sget-object v0, Ljava8/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/ArrayDeque;

    const-string v2, "elements"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/ArrayDequeSpliterator;->DATA_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/ArrayDeque;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "TE;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    .line 3
    iput p2, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    .line 4
    iput p3, p0, Ljava8/util/ArrayDequeSpliterator;->fence:I

    return-void
.end method

.method public static getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayDeque<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/ArrayDequeSpliterator;->DATA_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private getFence()I
    .locals 2

    .line 1
    iget v0, p0, Ljava8/util/ArrayDequeSpliterator;->fence:I

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava8/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava8/util/ArrayDequeSpliterator;->getTail(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava8/util/ArrayDequeSpliterator;->fence:I

    .line 3
    iget-object v1, p0, Ljava8/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v1}, Ljava8/util/ArrayDequeSpliterator;->getHead(Ljava/util/ArrayDeque;)I

    move-result v1

    iput v1, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    :cond_0
    return v0
.end method

.method public static getHead(Ljava/util/ArrayDeque;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayDeque<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/ArrayDequeSpliterator;->HEAD_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static getTail(Ljava/util/ArrayDeque;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayDeque<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/ArrayDequeSpliterator;->TAIL_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static spliterator(Ljava/util/ArrayDeque;)Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayDeque<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava8/util/ArrayDequeSpliterator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Ljava8/util/ArrayDequeSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4150

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava8/util/ArrayDequeSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2
    iget-object v1, p0, Ljava8/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v1}, Ljava8/util/ArrayDequeSpliterator;->getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
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
    iget-object v0, p0, Ljava8/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava8/util/ArrayDequeSpliterator;->getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0}, Ljava8/util/ArrayDequeSpliterator;->getFence()I

    move-result v2

    iget v3, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    .line 4
    iput v2, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    :goto_0
    if-eq v3, v2, :cond_1

    .line 5
    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {p1, v4}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_1
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

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 5
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
    iget-object v0, p0, Ljava8/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava8/util/ArrayDequeSpliterator;->getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0}, Ljava8/util/ArrayDequeSpliterator;->getFence()I

    iget v3, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    .line 4
    iget v4, p0, Ljava8/util/ArrayDequeSpliterator;->fence:I

    if-eq v3, v4, :cond_1

    .line 5
    aget-object v0, v0, v3

    add-int/2addr v3, v2

    and-int/2addr v1, v3

    .line 6
    iput v1, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2

    .line 8
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/ArrayDequeSpliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/ArrayDequeSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava8/util/ArrayDequeSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    iget-object v2, p0, Ljava8/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ljava8/util/ArrayDequeSpliterator;->getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-eq v1, v0, :cond_1

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    if-eq v3, v0, :cond_1

    if-le v1, v0, :cond_0

    add-int/2addr v0, v2

    :cond_0
    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    .line 3
    new-instance v2, Ljava8/util/ArrayDequeSpliterator;

    iget-object v3, p0, Ljava8/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    iput v0, p0, Ljava8/util/ArrayDequeSpliterator;->index:I

    invoke-direct {v2, v3, v1, v0}, Ljava8/util/ArrayDequeSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/ArrayDequeSpliterator;->trySplit()Ljava8/util/ArrayDequeSpliterator;

    move-result-object v0

    return-object v0
.end method
