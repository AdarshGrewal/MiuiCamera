.class public Lcom/xiaomi/stat/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/xiaomi/stat/MiStatParams;

.field public final synthetic e:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;ZLjava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/y;->e:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/y;->a:Z

    iput-object p3, p0, Lcom/xiaomi/stat/y;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/stat/y;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/stat/y;->d:Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/y;->e:Lcom/xiaomi/stat/e;

    iget-boolean v1, p0, Lcom/xiaomi/stat/y;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->A()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/stat/y;->e:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/y;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/stat/y;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/stat/y;->d:Lcom/xiaomi/stat/MiStatParams;

    .line 5
    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/xiaomi/stat/y;->a:Z

    .line 6
    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Ljava/lang/String;Z)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method