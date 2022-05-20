.class public Lcom/xiaomi/onetrack/api/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ae;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ot_profile_increment"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/api/f;->b(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ae;->a:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/f;->c(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v5}, Lcom/xiaomi/onetrack/api/f;->d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v5

    invoke-static {v2, v3, v4, v1, v5}, Lcom/xiaomi/onetrack/api/c;->b(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userProfileIncrement map error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
