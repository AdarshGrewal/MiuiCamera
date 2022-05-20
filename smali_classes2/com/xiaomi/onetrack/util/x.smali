.class public Lcom/xiaomi/onetrack/util/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/x$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "RegionDomainManager"

.field public static final b:Ljava/lang/String; = "CN"

.field public static final c:Ljava/lang/String; = "INTL"

.field public static final d:Ljava/lang/String; = "IN"

.field public static final e:Ljava/lang/String; = "RU"

.field public static final f:Ljava/lang/String; = "http://"

.field public static final g:Ljava/lang/String; = "https://"

.field public static final h:Ljava/lang/String; = "tracking.miui.com"

.field public static final i:Ljava/lang/String; = "tracking.intl.miui.com"

.field public static final j:Ljava/lang/String; = "tracking.rus.miui.com"

.field public static final k:Ljava/lang/String; = "tracking.india.miui.com"

.field public static final l:Ljava/lang/String; = "sdkconfig.ad.xiaomi.com"

.field public static final m:Ljava/lang/String; = "sdkconfig.ad.intl.xiaomi.com"

.field public static final n:Ljava/lang/String; = "sdkconfig.ad.india.xiaomi.com"

.field public static final o:Ljava/lang/String; = "sdkconfig.ad.rus.xiaomi.com"

.field public static final p:Ljava/lang/String; = "staging.sdkconfig.ad.xiaomi.srv"

.field public static final q:Ljava/lang/String; = "staging.tracking.miui.com"

.field public static final r:Ljava/lang/String; = "/track/v4"

.field public static final s:Ljava/lang/String; = "/track/key_get"

.field public static final t:Ljava/lang/String; = "/api/v4/detail/config"

.field public static final u:Ljava/lang/String; = "/api/v4/detail/config_common"

.field public static w:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public v:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/util/x;->w:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->w:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "IN"

    const-string v2, "tracking.india.miui.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/util/x;->w:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "RU"

    const-string v2, "tracking.rus.miui.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->f()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/util/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/util/x;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/x$a;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "tracking.miui.com"

    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lcom/xiaomi/onetrack/util/x;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "tracking.intl.miui.com"

    :cond_1
    return-object p1
.end method

.method private f()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->h()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/xiaomi/onetrack/util/x;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 1

    const-string v0, "https://"

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->x()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->y()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/onetrack/util/x;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->x()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->y()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "sdkconfig.ad.xiaomi.com"

    return-object v0

    :cond_0
    const-string v0, "IN"

    .line 3
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sdkconfig.ad.india.xiaomi.com"

    return-object v0

    :cond_1
    const-string v0, "RU"

    .line 4
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sdkconfig.ad.rus.xiaomi.com"

    return-object v0

    :cond_2
    const-string v0, "sdkconfig.ad.intl.xiaomi.com"

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "RegionDomainManager"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    sget-object v3, Lcom/xiaomi/onetrack/util/x;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/onetrack/util/x;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "RegionDomainManager"

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHostMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p1, "RegionDomainManager"

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/xiaomi/onetrack/util/x;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->l()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/a/c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrackingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionDomainManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/v4"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v4/detail/config_common"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/x;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/track/key_get"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/onetrack/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
