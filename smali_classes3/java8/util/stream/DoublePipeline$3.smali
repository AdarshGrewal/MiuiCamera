.class public Ljava8/util/stream/DoublePipeline$3;
.super Ljava8/util/stream/IntPipeline$StatelessOp;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline;->mapToInt(Ljava8/util/function/DoubleToIntFunction;)Ljava8/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/IntPipeline$StatelessOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Ljava8/util/stream/DoublePipeline;

.field public final synthetic val$mapper:Ljava8/util/function/DoubleToIntFunction;


# direct methods
.method public constructor <init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleToIntFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$3;->this$0:Ljava8/util/stream/DoublePipeline;

    iput-object p5, p0, Ljava8/util/stream/DoublePipeline$3;->val$mapper:Ljava8/util/function/DoubleToIntFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava8/util/stream/IntPipeline$StatelessOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava8/util/stream/DoublePipeline$3$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/DoublePipeline$3$1;-><init>(Ljava8/util/stream/DoublePipeline$3;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
