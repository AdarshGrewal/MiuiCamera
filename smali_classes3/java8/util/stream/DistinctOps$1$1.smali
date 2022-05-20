.class public Ljava8/util/stream/DistinctOps$1$1;
.super Ljava8/util/stream/Sink$ChainedReference;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DistinctOps$1;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public lastSeen:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public seenNull:Z

.field public final synthetic this$0:Ljava8/util/stream/DistinctOps$1;


# direct methods
.method public constructor <init>(Ljava8/util/stream/DistinctOps$1;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/DistinctOps$1$1;->this$0:Ljava8/util/stream/DistinctOps$1;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedReference;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Ljava8/util/stream/DistinctOps$1$1;->seenNull:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ljava8/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 3
    iget-object p1, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava8/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    iput-object p1, p0, Ljava8/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Ljava8/util/stream/DistinctOps$1$1;->seenNull:Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ljava8/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ljava8/util/stream/DistinctOps$1$1;->seenNull:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljava8/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->end()V

    return-void
.end method
