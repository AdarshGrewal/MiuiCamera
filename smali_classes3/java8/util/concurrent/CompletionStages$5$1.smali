.class public Ljava8/util/concurrent/CompletionStages$5$1;
.super Ljava/lang/Object;
.source "CompletionStages.java"

# interfaces
.implements Ljava8/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/CompletionStages$5;->apply(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletionStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field public final synthetic this$0:Ljava8/util/concurrent/CompletionStages$5;


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CompletionStages$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/concurrent/CompletionStages$5$1;->this$0:Ljava8/util/concurrent/CompletionStages$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletionStages$5$1;->apply(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletionStage;

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

    .line 2
    iget-object p1, p0, Ljava8/util/concurrent/CompletionStages$5$1;->this$0:Ljava8/util/concurrent/CompletionStages$5;

    iget-object p1, p1, Ljava8/util/concurrent/CompletionStages$5;->val$fn:Ljava8/util/function/Function;

    invoke-interface {p1, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/concurrent/CompletionStage;

    return-object p1
.end method
