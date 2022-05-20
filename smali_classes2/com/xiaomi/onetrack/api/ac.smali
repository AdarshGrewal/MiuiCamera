.class public Lcom/xiaomi/onetrack/api/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ac;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ac;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "ot_profile_set"

    const-string v1, "OneTrackImp"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ac;->a:Ljava/lang/Object;

    invoke-static {v2}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ac;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/api/f;->b(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ac;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ac;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/f;->c(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v6}, Lcom/xiaomi/onetrack/api/f;->d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v6

    invoke-static {v3, v4, v5, v2, v6}, Lcom/xiaomi/onetrack/api/c;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ac;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserProfile single error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
