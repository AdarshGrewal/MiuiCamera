.class public Lcom/xiaomi/onetrack/api/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/d;


# static fields
.field public static final a:Ljava/lang/String; = "OneTrackLocalImp"

.field public static final b:I = 0x19000

.field public static final c:I = 0x2


# instance fields
.field public d:Lcom/xiaomi/onetrack/Configuration;

.field public e:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/xiaomi/onetrack/e/f;->a(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/util/v;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->a()Lcom/xiaomi/onetrack/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/onetrack/a/f;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 6
    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->a()Landroid/content/Context;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 9
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldUploadBySampling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  shouldUpload="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sample="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", val="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackLocalImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p1, v4, 0x1

    return p1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 12
    new-instance v0, Lcom/xiaomi/onetrack/api/ag;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/api/ag;-><init>(Lcom/xiaomi/onetrack/api/af;I)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/util/v;

    const-string v1, "OneTrackLocalImp"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 2
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/api/af;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/api/d;)V

    .line 7
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "onetrack_bug_report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/api/af;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/onetrack/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/xiaomi/onetrack/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "disable_log"

    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->a()Lcom/xiaomi/onetrack/a/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 14
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->a()Lcom/xiaomi/onetrack/a/f;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v0, v1}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/api/af;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception p1

    move v0, v1

    move v2, v0

    .line 16
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDisableTrack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "OneTrackLocalImp"

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    :goto_1
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v2, "onetrack_bug_report"

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_2

    const-string p1, "OneTrackLocalImp"

    const-string p2, "Event size exceed limitation!"

    .line 4
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method
