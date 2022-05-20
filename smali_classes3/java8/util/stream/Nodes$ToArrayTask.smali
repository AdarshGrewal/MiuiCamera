.class public abstract Ljava8/util/stream/Nodes$ToArrayTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ToArrayTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Nodes$ToArrayTask$OfDouble;,
        Ljava8/util/stream/Nodes$ToArrayTask$OfLong;,
        Ljava8/util/stream/Nodes$ToArrayTask$OfInt;,
        Ljava8/util/stream/Nodes$ToArrayTask$OfPrimitive;,
        Ljava8/util/stream/Nodes$ToArrayTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava8/util/stream/Node<",
        "TT;>;K:",
        "Ljava8/util/stream/Nodes$ToArrayTask<",
        "TT;TT_NODE;TK;>;>",
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final node:Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field public final offset:I


# direct methods
.method public constructor <init>(Ljava8/util/stream/Node;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava8/util/concurrent/CountedCompleter;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    .line 3
    iput p2, p0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    return-void
.end method

.method public constructor <init>(Ljava8/util/stream/Nodes$ToArrayTask;Ljava8/util/stream/Node;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT_NODE;I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 5
    iput-object p2, p0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    .line 6
    iput p3, p0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    return-void
.end method


# virtual methods
.method public compute()V
    .locals 8

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v1}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava8/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    .line 3
    invoke-virtual {v0}, Ljava8/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v1}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava8/util/concurrent/CountedCompleter;->setPendingCount(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_1
    iget-object v3, v0, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v3}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 6
    iget v3, v0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava8/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask;

    move-result-object v3

    int-to-long v4, v2

    .line 7
    iget-object v2, v3, Ljava8/util/stream/Nodes$ToArrayTask;->node:Ljava8/util/stream/Node;

    invoke-interface {v2}, Ljava8/util/stream/Node;->count()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 8
    invoke-virtual {v3}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget v3, v0, Ljava8/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava8/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract copyNodeToArray()V
.end method

.method public abstract makeChild(II)Ljava8/util/stream/Nodes$ToArrayTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation
.end method
