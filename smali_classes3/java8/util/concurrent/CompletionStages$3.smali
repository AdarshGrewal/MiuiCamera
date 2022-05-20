.class public final Ljava8/util/concurrent/CompletionStages$3;
.super Ljava/lang/Object;
.source "CompletionStages.java"

# interfaces
.implements Ljava8/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/CompletionStages;->exceptionallyCompose(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/BiFunction<",
        "TT;",
        "Ljava/lang/Throwable;",
        "Ljava8/util/concurrent/CompletionStage<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$fn:Ljava8/util/function/Function;

.field public final synthetic val$thisStage:Ljava8/util/concurrent/CompletionStage;


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/concurrent/CompletionStages$3;->val$thisStage:Ljava8/util/concurrent/CompletionStage;

    iput-object p2, p0, Ljava8/util/concurrent/CompletionStages$3;->val$fn:Ljava8/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletionStages$3;->apply(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Ljava8/util/concurrent/CompletionStages$3;->val$thisStage:Ljava8/util/concurrent/CompletionStage;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljava8/util/concurrent/CompletionStages$3;->val$fn:Ljava8/util/function/Function;

    invoke-interface {p1, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/concurrent/CompletionStage;

    :goto_0
    return-object p1
.end method
