.class public Lcom/xiaomi/onetrack/api/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->c:Lcom/xiaomi/onetrack/api/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/m;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/onetrack/api/m;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "OneTrackImp"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "config.autoTrackActivityAction is false, ignore onetrack_pa pause event"

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->c:Lcom/xiaomi/onetrack/api/f;

    const-string v2, "onetrack_pa"

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/f;->b(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 4
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/m;->a:Ljava/lang/String;

    const-string v4, "onetrack_pa"

    iget-wide v5, p0, Lcom/xiaomi/onetrack/api/m;->b:J

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v7

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/f;->c(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v8

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/m;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/f;->d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/aa;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePageEndData error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
