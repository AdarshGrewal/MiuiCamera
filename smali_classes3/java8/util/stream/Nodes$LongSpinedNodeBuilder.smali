.class public final Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;
.super Ljava8/util/stream/SpinedBuffer$OfLong;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfLong;
.implements Ljava8/util/stream/Node$Builder$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongSpinedNodeBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava8/util/stream/SpinedBuffer$OfLong;-><init>()V

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

    .line 4
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfLong;->accept(J)V

    return-void
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfLong;->accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfPrimitive;->asArray(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    return-object p1
.end method

.method public bridge synthetic asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .locals 1

    .line 2
    invoke-super {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

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

.method public build()Ljava8/util/stream/Node$OfLong;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic build()Ljava8/util/stream/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->build()Ljava8/util/stream/Node$OfLong;

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
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->copyInto([JI)V

    return-void
.end method

.method public copyInto([JI)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public copyInto([Ljava/lang/Long;I)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfLong;->copyInto(Ljava8/util/stream/Node$OfLong;[Ljava/lang/Long;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->copyInto([Ljava/lang/Long;I)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->forEach(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public forEach(Ljava8/util/function/LongConsumer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node$OfLong;
    .locals 0

    .line 3
    invoke-static {}, Ljava8/util/stream/Nodes$OfPrimitive;->getChild()Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node$OfLong;

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->getChild(I)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->getChild(I)Ljava8/util/stream/Node$OfLong;

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
    invoke-static {}, Ljava8/util/stream/Nodes$OfLong;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 3
    invoke-super {p0}, Ljava8/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node$OfLong;"
        }
    .end annotation

    .line 3
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfLong;->truncate(Ljava8/util/stream/Node$OfLong;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method
