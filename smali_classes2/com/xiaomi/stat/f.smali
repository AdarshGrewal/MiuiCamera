.class public Lcom/xiaomi/stat/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/f;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/stat/f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/e;->a()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/stat/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->d()V

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/b/f;->a()Lcom/xiaomi/stat/b/f;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/stat/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/f;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/stat/f;->b:Z

    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(Ljava/lang/String;Z)V

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/b;->n()V

    .line 8
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/b;->f(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/f;->c:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->d(Lcom/xiaomi/stat/e;)V

    .line 11
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->b()V

    .line 12
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stat/g;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/g;-><init>(Lcom/xiaomi/stat/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
