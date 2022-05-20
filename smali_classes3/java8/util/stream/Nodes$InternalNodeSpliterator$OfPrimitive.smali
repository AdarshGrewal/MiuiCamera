.class public abstract Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.super Ljava8/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;N::",
        "Ljava8/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TN;>;>",
        "Ljava8/util/stream/Nodes$InternalNodeSpliterator<",
        "TT;TT_SP",
        "LITR;",
        "TN;>;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/stream/Node$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava8/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava8/util/Spliterator;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava8/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/Node$OfPrimitive;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p1}, Ljava8/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    goto :goto_2

    .line 8
    :cond_2
    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
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

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Ljava8/util/Spliterator;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Ljava8/util/stream/Node;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/Node$OfPrimitive;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava8/util/stream/Node$OfPrimitive;->spliterator()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    .line 6
    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->curNode:Ljava8/util/stream/Node;

    :cond_2
    return v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
