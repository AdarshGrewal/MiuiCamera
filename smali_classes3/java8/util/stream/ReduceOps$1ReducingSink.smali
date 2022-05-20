.class public Ljava8/util/stream/ReduceOps$1ReducingSink;
.super Ljava8/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$Box<",
        "TU;>;",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TU;",
        "Ljava8/util/stream/ReduceOps$1ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$combiner:Ljava8/util/function/BinaryOperator;

.field public final synthetic val$reducer:Ljava8/util/function/BiFunction;

.field public final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$1ReducingSink;->val$seed:Ljava/lang/Object;

    iput-object p2, p0, Ljava8/util/stream/ReduceOps$1ReducingSink;->val$reducer:Ljava8/util/function/BiFunction;

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$1ReducingSink;->val$combiner:Ljava8/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava8/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 4
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 2
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 3
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$1ReducingSink;->val$reducer:Ljava8/util/function/BiFunction;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Ljava8/util/stream/ReduceOps$1ReducingSink;->val$seed:Ljava/lang/Object;

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$1ReducingSink;)V
    .locals 2

    .line 2
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$1ReducingSink;->val$combiner:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    iget-object p1, p1, Ljava8/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 1
    check-cast p1, Ljava8/util/stream/ReduceOps$1ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$1ReducingSink;->combine(Ljava8/util/stream/ReduceOps$1ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method
