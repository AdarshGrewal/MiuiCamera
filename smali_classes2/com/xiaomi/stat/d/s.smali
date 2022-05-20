.class public final Lcom/xiaomi/stat/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->c()V

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/b/a;->a()Lcom/xiaomi/stat/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/stat/b/a;->a(ZZ)V

    return-void
.end method
