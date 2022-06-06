.class public Lcom/xiaomi/stat/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/b/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/b/b;->a:Lcom/xiaomi/stat/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/h;->a(Z)V

    invoke-static {}, Lcom/xiaomi/stat/b/c;->a()Lcom/xiaomi/stat/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/c;->b()Ljava/lang/String;

    :cond_0
    return-void
.end method
