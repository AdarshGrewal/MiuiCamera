.class public Ljava8/util/stream/IntPipeline$10;
.super Ljava8/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline;->peek(Ljava8/util/function/IntConsumer;)Ljava8/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/IntPipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Ljava8/util/stream/IntPipeline;

.field public final synthetic val$action:Ljava8/util/function/IntConsumer;


# direct methods
.method public constructor <init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntConsumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/IntPipeline$10;->this$0:Ljava8/util/stream/IntPipeline;

    iput-object p5, p0, Ljava8/util/stream/IntPipeline$10;->val$action:Ljava8/util/function/IntConsumer;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava8/util/stream/IntPipeline$10$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/IntPipeline$10$1;-><init>(Ljava8/util/stream/IntPipeline$10;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
