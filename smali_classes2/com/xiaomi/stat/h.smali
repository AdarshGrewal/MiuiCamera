.class public Lcom/xiaomi/stat/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/h;->b:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->h()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/xiaomi/stat/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/stat/b;->b(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/xiaomi/stat/h;->b:Lcom/xiaomi/stat/e;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->q(Lcom/xiaomi/stat/e;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/stat/h;->b:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/h;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
