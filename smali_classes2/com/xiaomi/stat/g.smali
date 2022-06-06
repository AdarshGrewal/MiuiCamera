.class public Lcom/xiaomi/stat/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/g;->a:Lcom/xiaomi/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/b;->c()V

    invoke-static {}, Lcom/xiaomi/stat/b/a;->a()Lcom/xiaomi/stat/b/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/b/h;->a(Z)V

    invoke-static {}, Lcom/xiaomi/stat/b/c;->a()Lcom/xiaomi/stat/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/c;->b()Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->b()V

    return-void
.end method
