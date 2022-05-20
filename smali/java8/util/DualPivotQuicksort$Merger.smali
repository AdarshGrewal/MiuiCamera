.class public final Ljava8/util/DualPivotQuicksort$Merger;
.super Ljava8/util/concurrent/CountedCompleter;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/DualPivotQuicksort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x133ef52L


# instance fields
.field public final a1:Ljava/lang/Object;

.field public final a2:Ljava/lang/Object;

.field public final dst:Ljava/lang/Object;

.field public final hi1:I

.field public final hi2:I

.field public final k:I

.field public final lo1:I

.field public final lo2:I


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    .line 2
    iput-object p2, p0, Ljava8/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    .line 3
    iput p3, p0, Ljava8/util/DualPivotQuicksort$Merger;->k:I

    .line 4
    iput-object p4, p0, Ljava8/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    .line 5
    iput p5, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo1:I

    .line 6
    iput p6, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi1:I

    .line 7
    iput-object p7, p0, Ljava8/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    .line 8
    iput p8, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo2:I

    .line 9
    iput p9, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi2:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 11

    .line 1
    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    instance-of v1, v0, [I

    if-eqz v1, :cond_0

    .line 2
    move-object v3, v0

    check-cast v3, [I

    iget v4, p0, Ljava8/util/DualPivotQuicksort$Merger;->k:I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [I

    iget v6, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo1:I

    iget v7, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi1:I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [I

    iget v9, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo2:I

    iget v10, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi2:I

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Ljava8/util/DualPivotQuicksort;->mergeParts(Ljava8/util/DualPivotQuicksort$Merger;[II[III[III)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, [J

    if-eqz v1, :cond_1

    .line 4
    move-object v3, v0

    check-cast v3, [J

    iget v4, p0, Ljava8/util/DualPivotQuicksort$Merger;->k:I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [J

    iget v6, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo1:I

    iget v7, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi1:I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [J

    iget v9, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo2:I

    iget v10, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi2:I

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Ljava8/util/DualPivotQuicksort;->mergeParts(Ljava8/util/DualPivotQuicksort$Merger;[JI[JII[JII)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, [F

    if-eqz v1, :cond_2

    .line 6
    move-object v3, v0

    check-cast v3, [F

    iget v4, p0, Ljava8/util/DualPivotQuicksort$Merger;->k:I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [F

    iget v6, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo1:I

    iget v7, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi1:I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [F

    iget v9, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo2:I

    iget v10, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi2:I

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Ljava8/util/DualPivotQuicksort;->mergeParts(Ljava8/util/DualPivotQuicksort$Merger;[FI[FII[FII)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v1, v0, [D

    if-eqz v1, :cond_3

    .line 8
    move-object v3, v0

    check-cast v3, [D

    iget v4, p0, Ljava8/util/DualPivotQuicksort$Merger;->k:I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [D

    iget v6, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo1:I

    iget v7, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi1:I

    iget-object v0, p0, Ljava8/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [D

    iget v9, p0, Ljava8/util/DualPivotQuicksort$Merger;->lo2:I

    iget v10, p0, Ljava8/util/DualPivotQuicksort$Merger;->hi2:I

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Ljava8/util/DualPivotQuicksort;->mergeParts(Ljava8/util/DualPivotQuicksort$Merger;[DI[DII[DII)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava8/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    .line 11
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

.method public forkMerger(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V
    .locals 12

    const/4 v0, 0x1

    move-object v11, p0

    .line 1
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 2
    new-instance v0, Ljava8/util/DualPivotQuicksort$Merger;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Ljava8/util/DualPivotQuicksort$Merger;-><init>(Ljava8/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    return-void
.end method
