.class public Lcom/xiaomi/stat/ad;
.super Landroid/os/FileObserver;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/ab;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/ab;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/ad;->a:Lcom/xiaomi/stat/ab;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/stat/ad;->a:Lcom/xiaomi/stat/ab;

    invoke-static {p1}, Lcom/xiaomi/stat/ab;->b(Lcom/xiaomi/stat/ab;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/b;->n()V

    return-void
.end method
