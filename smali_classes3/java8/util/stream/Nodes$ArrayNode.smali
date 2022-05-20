.class public Ljava8/util/stream/Nodes$ArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public curSize:I


# direct methods
.method public constructor <init>(JLjava8/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 2
    invoke-interface {p3, p1}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljava8/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ljava8/util/stream/Nodes$ArrayNode;->curSize:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ljava8/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    .line 7
    array-length p1, p1

    iput p1, p0, Ljava8/util/stream/Nodes$ArrayNode;->curSize:I

    return-void
.end method


# virtual methods
.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ljava8/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v0, p1

    iget v1, p0, Ljava8/util/stream/Nodes$ArrayNode;->curSize:I

    if-ne v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava8/util/stream/Nodes$ArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public count()J
    .locals 2

    .line 1
    iget v0, p0, Ljava8/util/stream/Nodes$ArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ljava8/util/stream/Nodes$ArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ljava8/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava8/util/stream/Nodes;->getChild()Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 1
    invoke-static {}, Ljava8/util/stream/Nodes;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 1
    invoke-static {}, Ljava8/util/stream/Nodes;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava8/util/stream/Nodes$ArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava8/util/J8Arrays;->spliterator([Ljava/lang/Object;II)Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Ljava8/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava8/util/stream/Nodes$ArrayNode;->curSize:I

    sub-int/2addr v1, v2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava8/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ArrayNode[%d][%s]"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes;->truncate(Ljava8/util/stream/Node;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
