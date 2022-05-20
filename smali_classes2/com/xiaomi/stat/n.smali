.class public Lcom/xiaomi/stat/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/NetAvailableEvent;

.field public final synthetic b:Lcom/xiaomi/stat/e;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/NetAvailableEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/n;->b:Lcom/xiaomi/stat/e;

    iput-object p2, p0, Lcom/xiaomi/stat/n;->a:Lcom/xiaomi/stat/NetAvailableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/n;->b:Lcom/xiaomi/stat/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/b;->y()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/stat/n;->b:Lcom/xiaomi/stat/e;

    iget-object v1, p0, Lcom/xiaomi/stat/n;->a:Lcom/xiaomi/stat/NetAvailableEvent;

    invoke-static {v0}, Lcom/xiaomi/stat/e;->c(Lcom/xiaomi/stat/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/NetAvailableEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Lcom/xiaomi/stat/a/l;)V

    return-void
.end method
