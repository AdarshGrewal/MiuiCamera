.class public Lcom/xiaomi/onetrack/api/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/q;->b:Lcom/xiaomi/onetrack/api/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/q;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/q;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCommonProperty error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
