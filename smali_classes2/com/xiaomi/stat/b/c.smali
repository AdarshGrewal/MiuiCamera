.class public Lcom/xiaomi/stat/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Ljava/lang/String; = " https://data.mistat.xiaomi.com/idservice/deviceid_get"

.field public static final c:Ljava/lang/String; = "DeviceIdManager"

.field public static final d:Ljava/lang/String; = "ia"

.field public static final e:Ljava/lang/String; = "ib"

.field public static final f:Ljava/lang/String; = "md"

.field public static final g:Ljava/lang/String; = "mm"

.field public static final h:Ljava/lang/String; = "bm"

.field public static final i:Ljava/lang/String; = "aa"

.field public static final j:Ljava/lang/String; = "ai"

.field public static final k:Ljava/lang/String; = "oa"

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:I = 0x4

.field public static final q:I = 0x5

.field public static final r:I = 0x6

.field public static final s:I = 0x7

.field public static final t:I = 0x1

.field public static final u:Ljava/lang/String; = "pref_key_device_id"

.field public static final v:Ljava/lang/String; = "pref_key_restore_ts"

.field public static w:Lcom/xiaomi/stat/b/c;


# instance fields
.field public x:Ljava/lang/String;

.field public y:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_key_device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/b/c;->w:Lcom/xiaomi/stat/b/c;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/xiaomi/stat/b/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/b/c;->w:Lcom/xiaomi/stat/b/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/stat/b/c;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/c;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/c;->w:Lcom/xiaomi/stat/b/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/stat/b/c;->w:Lcom/xiaomi/stat/b/c;

    return-object v0
.end method

.method private e()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    const-string v1, "DeviceIdManager"

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/stat/b/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v2, 0x2710

    .line 4
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "network is not connected!"

    .line 6
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string v0, "request abort: statistic or network is not enabled"

    .line 7
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 7

    const-string v0, "DeviceIdManager"

    .line 1
    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/b/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/stat/b/c;->h()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "timestamp"

    .line 5
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "code"

    .line 6
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v6, "device_id"

    .line 7
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v3, :cond_1

    .line 8
    iput-object v2, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pref_key_device_id"

    .line 11
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key_restore_ts"

    .line 12
    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    .line 13
    :cond_0
    invoke-static {v4, v5}, Lcom/xiaomi/stat/d/r;->a(J)V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "[getDeviceIdLocal JSONException]:"

    .line 15
    invoke-static {v0, v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "[getDeviceIdLocal IOException]:"

    .line 16
    invoke-static {v0, v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method private g()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/b/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method private h()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ai"

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/stat/b/c;->g()[Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "ia"

    .line 4
    aget-object v7, v2, v5

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ib"

    .line 5
    aget-object v7, v2, v4

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "md"

    const/4 v7, 0x2

    .line 6
    aget-object v7, v2, v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "mm"

    const/4 v7, 0x3

    .line 7
    aget-object v7, v2, v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "bm"

    const/4 v7, 0x4

    .line 8
    aget-object v7, v2, v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "aa"

    const/4 v7, 0x5

    .line 9
    aget-object v7, v2, v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x6

    .line 10
    aget-object v6, v2, v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "oa"

    const/4 v7, 0x7

    .line 11
    aget-object v2, v2, v7

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 13
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[pay-load]:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "DeviceIdManager"

    invoke-static {v6, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v5, [B

    .line 14
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v5

    .line 15
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "utf-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/xiaomi/stat/b/h;->a([B)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 16
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 17
    invoke-static {v2, v4}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v2, "sv"

    const-string v4, "3.0.20"

    .line 18
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    const-string v2, "p"

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gzip"

    const-string v2, "0"

    .line 21
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/h;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fc"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/stat/d/e;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/stat/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/stat/b/c;->e()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/stat/b/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_key_device_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/b/c;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
