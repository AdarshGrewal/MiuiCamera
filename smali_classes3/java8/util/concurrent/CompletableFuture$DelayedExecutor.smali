.class public final Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelayedExecutor"
.end annotation


# instance fields
.field public final delay:J

.field public final executor:Ljava/util/concurrent/Executor;

.field public final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;->delay:J

    iput-object p3, p0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    iget-wide v1, p0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;->delay:J

    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Ljava8/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
