.class public abstract Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.super Ljava/lang/Object;
.source "WhileOps.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UnorderedWhileSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;,
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;,
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;,
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final CANCEL_CHECK_COUNT:I = 0x3f


# instance fields
.field public final cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public count:I

.field public final noSplitting:Z

.field public final s:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field public takeOrDrop:Z


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator<",
            "TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    .line 8
    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    .line 9
    iget-boolean p1, p2, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    .line 10
    iget-object p1, p2, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Ljava8/util/Spliterator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    .line 3
    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    .line 4
    iput-boolean p2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4041

    return v0
.end method

.method public checkCancelOnCount()Z
    .locals 1

    .line 1
    iget v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v1

    :cond_1
    return-object v1
.end method
