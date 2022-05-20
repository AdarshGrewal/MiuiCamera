.class public Ljava8/util/stream/DoublePipeline$Head;
.super Ljava8/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/DoublePipeline<",
        "TE_IN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/DoublePipeline;-><init>(Ljava8/util/Spliterator;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/function/Supplier;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/DoublePipeline;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava8/util/function/DoubleConsumer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/DoublePipeline;->access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/DoublePipeline;->forEach(Ljava8/util/function/DoubleConsumer;)V

    :goto_0
    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/DoubleConsumer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/DoublePipeline;->access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/DoublePipeline;->forEachOrdered(Ljava8/util/function/DoubleConsumer;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/DoublePipeline;->iterator()Ljava8/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava8/util/stream/DoublePipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final opIsStateful()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/DoubleStream;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/DoubleStream;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/DoublePipeline;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/DoublePipeline;->unordered()Ljava8/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method
