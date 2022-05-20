.class public Lcom/xiaomi/onetrack/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/b/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/n;->a:Lcom/xiaomi/onetrack/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/f/c;->a()Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadTimer netReceiver, \u7f51\u7edc\u662f\u5426\u53ef\u7528="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadTimer"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget v3, v1, v2

    .line 5
    invoke-static {v3}, Lcom/xiaomi/onetrack/a/l;->a(I)I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/xiaomi/onetrack/b/n;->a:Lcom/xiaomi/onetrack/b/m;

    iget-object v5, v5, Lcom/xiaomi/onetrack/b/m;->a:Lcom/xiaomi/onetrack/b/l;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    iget-object v5, p0, Lcom/xiaomi/onetrack/b/n;->a:Lcom/xiaomi/onetrack/b/m;

    iget-object v5, v5, Lcom/xiaomi/onetrack/b/m;->a:Lcom/xiaomi/onetrack/b/l;

    int-to-long v6, v4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method
