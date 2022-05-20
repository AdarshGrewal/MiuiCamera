.class public final Ljava8/util/DualPivotQuicksort$RunMerger;
.super Ljava8/util/concurrent/RecursiveTask;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/DualPivotQuicksort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/RecursiveTask<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x133ef52L


# instance fields
.field public final a:Ljava/lang/Object;

.field public final aim:I

.field public final b:Ljava/lang/Object;

.field public final hi:I

.field public final lo:I

.field public final offset:I

.field public final run:[I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II[III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava8/util/concurrent/RecursiveTask;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    .line 4
    iput p3, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    .line 5
    iput p4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    .line 6
    iput-object p5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    .line 7
    iput p6, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    .line 8
    iput p7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    instance-of v1, v0, [I

    if-eqz v1, :cond_0

    .line 2
    move-object v2, v0

    check-cast v2, [I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [I

    iget v4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    const/4 v6, 0x1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v8, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    invoke-static/range {v2 .. v9}, Ljava8/util/DualPivotQuicksort;->mergeRuns([I[IIIZ[III)[I

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, [J

    if-eqz v1, :cond_1

    .line 4
    move-object v2, v0

    check-cast v2, [J

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [J

    iget v4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    const/4 v6, 0x1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v8, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    invoke-static/range {v2 .. v9}, Ljava8/util/DualPivotQuicksort;->mergeRuns([J[JIIZ[III)[J

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    instance-of v1, v0, [F

    if-eqz v1, :cond_2

    .line 6
    move-object v2, v0

    check-cast v2, [F

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [F

    iget v4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    const/4 v6, 0x1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v8, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    invoke-static/range {v2 .. v9}, Ljava8/util/DualPivotQuicksort;->mergeRuns([F[FIIZ[III)[F

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    instance-of v1, v0, [D

    if-eqz v1, :cond_3

    .line 8
    move-object v2, v0

    check-cast v2, [D

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [D

    iget v4, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v5, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->aim:I

    const/4 v6, 0x1

    iget-object v7, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v8, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->hi:I

    invoke-static/range {v2 .. v9}, Ljava8/util/DualPivotQuicksort;->mergeRuns([D[DIIZ[III)[D

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava8/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forkMe()Ljava8/util/DualPivotQuicksort$RunMerger;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    return-object p0
.end method

.method public getDestination()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava8/util/concurrent/RecursiveTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
