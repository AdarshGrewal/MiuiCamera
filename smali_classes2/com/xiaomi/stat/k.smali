.class public Lcom/xiaomi/stat/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->z()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/b;->r()J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {v4, v2, v3, v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-static {v0, v1}, Lcom/xiaomi/stat/b;->a(J)V

    .line 8
    iget-object v0, p0, Lcom/xiaomi/stat/k;->a:Lcom/xiaomi/stat/e;

    invoke-static {}, Lcom/xiaomi/stat/a/l;->a()Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    :cond_3
    return-void
.end method
