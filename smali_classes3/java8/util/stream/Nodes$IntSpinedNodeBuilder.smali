.class public final Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;
.super Ljava8/util/stream/SpinedBuffer$OfInt;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfInt;
.implements Ljava8/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntSpinedNodeBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava8/util/stream/SpinedBuffer$OfInt;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 5
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 4
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfInt;->accept(Ljava8/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfPrimitive;->asArray(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    return-object p1
.end method

.method public bridge synthetic asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 1

    .line 2
    invoke-super {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public begin(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->clear()V

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    return-void
.end method

.method public build()Ljava8/util/stream/Node$OfInt;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic build()Ljava8/util/stream/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->build()Ljava8/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public copyInto([Ljava/lang/Integer;I)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfInt;->copyInto(Ljava8/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->forEach(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEach(Ljava8/util/function/IntConsumer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node$OfInt;
    .locals 0

    .line 3
    invoke-static {}, Ljava8/util/stream/Nodes$OfPrimitive;->getChild()Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node$OfInt;

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->getChild(I)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->getChild(I)Ljava8/util/stream/Node$OfInt;

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
    invoke-static {}, Ljava8/util/stream/Nodes$OfInt;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 3
    invoke-super {p0}, Ljava8/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Node$OfInt;"
        }
    .end annotation

    .line 3
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfInt;->truncate(Ljava8/util/stream/Node$OfInt;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method
