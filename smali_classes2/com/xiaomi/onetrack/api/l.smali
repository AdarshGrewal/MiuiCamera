.class public Lcom/xiaomi/onetrack/api/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/l;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/onetrack/api/l;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "onetrack_pa"

    const-string v1, "OneTrackImp"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "config.autoTrackActivityAction is false, ignore onetrack_pa resume event"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/api/f;->b(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 4
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/l;->a:Ljava/lang/String;

    const-string v4, "onetrack_pa"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v5

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/f;->c(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v6

    iget-boolean v8, p0, Lcom/xiaomi/onetrack/api/l;->b:Z

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/f;->d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;ZLcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "trackPageStartAuto"

    .line 7
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto trackPageStartAuto error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
