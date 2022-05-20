.class public final Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskSubmitter"
.end annotation


# instance fields
.field public final action:Ljava/lang/Runnable;

.field public final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;->executor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;->action:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;->action:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
