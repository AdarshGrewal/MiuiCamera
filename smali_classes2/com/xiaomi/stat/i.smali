.class public Lcom/xiaomi/stat/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    iput-boolean p2, p0, Lcom/xiaomi/stat/i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/stat/i;->a:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    invoke-static {v2}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/stat/a/c;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/i;->b:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaomi/stat/i;->a:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
