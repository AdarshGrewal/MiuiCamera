.class public Lcom/xiaomi/stat/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/e;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->j(Lcom/xiaomi/stat/e;)I

    .line 2
    iget v0, p0, Lcom/xiaomi/stat/r;->b:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {v2}, Lcom/xiaomi/stat/e;->k(Lcom/xiaomi/stat/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {v2}, Lcom/xiaomi/stat/e;->l(Lcom/xiaomi/stat/e;)J

    move-result-wide v7

    .line 5
    iget-object v3, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sub-long v5, v7, v0

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->i(Lcom/xiaomi/stat/e;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->h(Lcom/xiaomi/stat/e;)I

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/stat/r;->b:I

    .line 3
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;J)J

    .line 4
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->i(Lcom/xiaomi/stat/e;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->e(Lcom/xiaomi/stat/e;)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;J)J

    .line 3
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;I)I

    .line 4
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1, v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;I)I

    .line 5
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->f(Lcom/xiaomi/stat/e;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/stat/s;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/s;-><init>(Lcom/xiaomi/stat/r;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->g(Lcom/xiaomi/stat/e;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->m(Lcom/xiaomi/stat/e;)I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->e(Lcom/xiaomi/stat/e;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->n(Lcom/xiaomi/stat/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v7

    .line 5
    iget-object v2, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {v2}, Lcom/xiaomi/stat/e;->o(Lcom/xiaomi/stat/e;)I

    move-result v3

    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->p(Lcom/xiaomi/stat/e;)I

    move-result v4

    sub-long v5, v7, v0

    invoke-static/range {v2 .. v8}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;IIJJ)V

    .line 6
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    invoke-static {p1}, Lcom/xiaomi/stat/e;->f(Lcom/xiaomi/stat/e;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/stat/t;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/t;-><init>(Lcom/xiaomi/stat/r;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
