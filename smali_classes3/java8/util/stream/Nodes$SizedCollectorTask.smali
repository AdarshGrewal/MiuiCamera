.class public abstract Ljava8/util/stream/Nodes$SizedCollectorTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SizedCollectorTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;,
        Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;,
        Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;,
        Ljava8/util/stream/Nodes$SizedCollectorTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_SINK::",
        "Ljava8/util/stream/Sink<",
        "TP_OUT;>;K:",
        "Ljava8/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;TP_OUT;TT_SINK;TK;>;>",
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava8/util/stream/Sink<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field public fence:I

.field public final helper:Ljava8/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field public index:I

.field public length:J

.field public offset:J

.field public final spliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field public final targetSize:J


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/concurrent/CountedCompleter;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava8/util/Spliterator;

    .line 3
    iput-object p2, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    .line 4
    invoke-interface {p1}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava8/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide p1

    iput-wide p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->offset:J

    int-to-long p1, p3

    .line 6
    iput-wide p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->length:J

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/Nodes$SizedCollectorTask;Ljava8/util/Spliterator;JJI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJI)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 8
    iput-object p2, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava8/util/Spliterator;

    .line 9
    iget-object p2, p1, Ljava8/util/stream/Nodes$SizedCollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    iput-object p2, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    .line 10
    iget-wide p1, p1, Ljava8/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    iput-wide p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    .line 11
    iput-wide p3, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->offset:J

    .line 12
    iput-wide p5, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->length:J

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    cmp-long p1, p5, p1

    if-ltz p1, :cond_0

    add-long p1, p3, p5

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    int-to-long v0, p7

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v0

    const/4 p3, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "offset and length interval [%d, %d + %d) is not within array size interval [0, %d)"

    .line 15
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 3
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 1
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 2
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public begin(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->length:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    .line 2
    iget-wide p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->offset:J

    long-to-int p1, p1

    iput p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->index:I

    long-to-int p2, v0

    add-int/2addr p1, p2

    .line 3
    iput p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->fence:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "size passed to Sink.begin exceeds array length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public compute()V
    .locals 10

    .line 1
    iget-object v6, p0, Ljava8/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava8/util/Spliterator;

    move-object v7, p0

    .line 2
    :goto_0
    invoke-interface {v6}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    iget-wide v2, v7, Ljava8/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    invoke-interface {v6}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v7, v0}, Ljava8/util/concurrent/CountedCompleter;->setPendingCount(I)V

    .line 5
    invoke-interface {v1}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v8

    .line 6
    iget-wide v2, v7, Ljava8/util/stream/Nodes$SizedCollectorTask;->offset:J

    move-object v0, v7

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Ljava8/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    .line 7
    iget-wide v0, v7, Ljava8/util/stream/Nodes$SizedCollectorTask;->offset:J

    add-long v2, v0, v8

    iget-wide v0, v7, Ljava8/util/stream/Nodes$SizedCollectorTask;->length:J

    sub-long v4, v0, v8

    move-object v0, v7

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Ljava8/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask;

    move-result-object v7

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v7, Ljava8/util/stream/Nodes$SizedCollectorTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v0, v7, v6}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    .line 9
    invoke-virtual {v7}, Ljava8/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public abstract makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJ)TK;"
        }
    .end annotation
.end method
