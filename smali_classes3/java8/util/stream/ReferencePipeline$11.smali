.class public Ljava8/util/stream/ReferencePipeline$11;
.super Ljava8/util/stream/ReferencePipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReferencePipeline;->peek(Ljava8/util/function/Consumer;)Ljava8/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReferencePipeline$StatelessOp<",
        "TP_OUT;TP_OUT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Ljava8/util/stream/ReferencePipeline;

.field public final synthetic val$action:Ljava8/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/ReferencePipeline$11;->this$0:Ljava8/util/stream/ReferencePipeline;

    iput-object p5, p0, Ljava8/util/stream/ReferencePipeline$11;->val$action:Ljava8/util/function/Consumer;

    invoke-direct {p0, p2, p3, p4}, Ljava8/util/stream/ReferencePipeline$StatelessOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "TP_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava8/util/stream/ReferencePipeline$11$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/ReferencePipeline$11$1;-><init>(Ljava8/util/stream/ReferencePipeline$11;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
