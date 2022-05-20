.class public Lcom/xiaomi/stat/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/a/l;

.field public final synthetic b:Lcom/xiaomi/stat/a/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/a/d;->b:Lcom/xiaomi/stat/a/c;

    iput-object p2, p0, Lcom/xiaomi/stat/a/d;->a:Lcom/xiaomi/stat/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/a/d;->b:Lcom/xiaomi/stat/a/c;

    iget-object v1, p0, Lcom/xiaomi/stat/a/d;->a:Lcom/xiaomi/stat/a/l;

    invoke-static {v0, v1}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventManager"

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
