.class public abstract Ljava8/util/stream/PipelineHelper;
.super Ljava/lang/Object;
.source "PipelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation
.end method

.method public abstract copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation
.end method

.method public abstract evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation
.end method

.method public abstract exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation
.end method

.method public abstract getSourceShape()Ljava8/util/stream/StreamShape;
.end method

.method public abstract getStreamAndOpFlags()I
.end method

.method public abstract makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava8/util/stream/Node$Builder<",
            "TP_OUT;>;"
        }
    .end annotation
.end method

.method public abstract wrapAndCopyInto(Ljava8/util/function/Consumer;Ljava8/util/Spliterator;)Ljava8/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava8/util/function/Consumer<",
            "TP_OUT;>;>(TS;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TS;"
        }
    .end annotation
.end method

.method public abstract wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava8/util/stream/Sink<",
            "TP_OUT;>;>(TS;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TS;"
        }
    .end annotation
.end method

.method public abstract wrapSink(Ljava8/util/function/Consumer;)Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Consumer<",
            "TP_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation
.end method

.method public abstract wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation
.end method

.method public abstract wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation
.end method
