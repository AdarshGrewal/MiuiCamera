.class public final Ljava8/util/VectorSpliterator;
.super Ljava/lang/Object;
.source "VectorSpliterator.java"

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

.field public static final MODCOUNT_OFF:J

.field public static final SIZE_OFF:J

.field public static final U:Lsun/misc/Unsafe;


# instance fields
.field public array:[Ljava/lang/Object;

.field public expectedModCount:I

.field public fence:I

.field public index:I

.field public final list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    .line 2
    :try_start_0
    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/VectorSpliterator;->MODCOUNT_OFF:J

    .line 5
    sget-object v0, Ljava8/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/Vector;

    const-string v2, "elementCount"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/VectorSpliterator;->SIZE_OFF:J

    .line 8
    sget-object v0, Ljava8/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/Vector;

    const-string v2, "elementData"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/VectorSpliterator;->DATA_OFF:J
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

.method public constructor <init>(Ljava/util/Vector;[Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/VectorSpliterator;->list:Ljava/util/Vector;

    .line 3
    iput-object p2, p0, Ljava8/util/VectorSpliterator;->array:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Ljava8/util/VectorSpliterator;->index:I

    .line 5
    iput p4, p0, Ljava8/util/VectorSpliterator;->fence:I

    .line 6
    iput p5, p0, Ljava8/util/VectorSpliterator;->expectedModCount:I

    return-void
.end method

.method public static getData(Ljava/util/Vector;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Vector<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/VectorSpliterator;->DATA_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private getFence()I
    .locals 2

    .line 1
    iget v0, p0, Ljava8/util/VectorSpliterator;->fence:I

    if-gez v0, :cond_0

    .line 2
    iget-object v1, p0, Ljava8/util/VectorSpliterator;->list:Ljava/util/Vector;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Ljava8/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v0}, Ljava8/util/VectorSpliterator;->getData(Ljava/util/Vector;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/VectorSpliterator;->array:[Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Ljava8/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v0}, Ljava8/util/VectorSpliterator;->getModCount(Ljava/util/Vector;)I

    move-result v0

    iput v0, p0, Ljava8/util/VectorSpliterator;->expectedModCount:I

    .line 5
    iget-object v0, p0, Ljava8/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v0}, Ljava8/util/VectorSpliterator;->getSize(Ljava/util/Vector;)I

    move-result v0

    iput v0, p0, Ljava8/util/VectorSpliterator;->fence:I

    .line 6
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return v0
.end method

.method public static getModCount(Ljava/util/Vector;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Vector<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/VectorSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static getSize(Ljava/util/Vector;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Vector<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/VectorSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static spliterator(Ljava/util/Vector;)Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Vector<",
            "TT;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava8/util/VectorSpliterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava8/util/VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    return-object v6
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava8/util/VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/VectorSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 4
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
    invoke-direct {p0}, Ljava8/util/VectorSpliterator;->getFence()I

    move-result v0

    .line 3
    iget-object v1, p0, Ljava8/util/VectorSpliterator;->array:[Ljava/lang/Object;

    .line 4
    iget v2, p0, Ljava8/util/VectorSpliterator;->index:I

    iput v0, p0, Ljava8/util/VectorSpliterator;->index:I

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Ljava8/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {p1}, Ljava8/util/VectorSpliterator;->getModCount(Ljava/util/Vector;)I

    move-result p1

    iget v0, p0, Ljava8/util/VectorSpliterator;->expectedModCount:I

    if-ne p1, v0, :cond_1

    return-void

    .line 7
    :cond_1
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
    .locals 2
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
    invoke-direct {p0}, Ljava8/util/VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava8/util/VectorSpliterator;->index:I

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 3
    iput v0, p0, Ljava8/util/VectorSpliterator;->index:I

    .line 4
    iget-object v0, p0, Ljava8/util/VectorSpliterator;->array:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    iget p1, p0, Ljava8/util/VectorSpliterator;->expectedModCount:I

    iget-object v0, p0, Ljava8/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v0}, Ljava8/util/VectorSpliterator;->getModCount(Ljava/util/Vector;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/VectorSpliterator;->getFence()I

    move-result v0

    iget v4, p0, Ljava8/util/VectorSpliterator;->index:I

    add-int/2addr v0, v4

    ushr-int/lit8 v5, v0, 0x1

    if-lt v4, v5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava8/util/VectorSpliterator;

    iget-object v2, p0, Ljava8/util/VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v3, p0, Ljava8/util/VectorSpliterator;->array:[Ljava/lang/Object;

    iput v5, p0, Ljava8/util/VectorSpliterator;->index:I

    iget v6, p0, Ljava8/util/VectorSpliterator;->expectedModCount:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    :goto_0
    return-object v0
.end method
