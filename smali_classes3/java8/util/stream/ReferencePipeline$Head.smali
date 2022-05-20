.class public Ljava8/util/stream/ReferencePipeline$Head;
.super Ljava8/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ReferencePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/ReferencePipeline<",
        "TE_IN;TE_OUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/ReferencePipeline;-><init>(Ljava8/util/Spliterator;IZ)V

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
            "*>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/ReferencePipeline;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE_OUT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/ReferencePipeline;->forEach(Ljava8/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TE_OUT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava8/util/stream/AbstractPipeline;->sourceStageSpliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/ReferencePipeline;->forEachOrdered(Ljava8/util/function/Consumer;)V

    :goto_0
    return-void
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
            "TE_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava8/util/stream/ReferencePipeline;->unordered()Ljava8/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
