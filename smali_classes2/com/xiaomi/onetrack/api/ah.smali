.class public Lcom/xiaomi/onetrack/api/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/api/aj$b;
.implements Lcom/xiaomi/onetrack/api/d;


# static fields
.field public static final a:Ljava/lang/String; = "OneTrackSystemImp"

.field public static final b:I = 0x19000

.field public static final c:I = 0x2


# instance fields
.field public final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/xiaomi/onetrack/Configuration;

.field public f:Lcom/xiaomi/onetrack/api/aj;

.field public g:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ah;->g:Lcom/xiaomi/onetrack/util/v;

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/api/aj;->a()Lcom/xiaomi/onetrack/api/aj;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    .line 6
    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj$b;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/ah;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ah;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    iget-object v4, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v4, v2, v3, v5}, Lcom/xiaomi/onetrack/api/aj;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)V

    .line 12
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v4, :cond_1

    const-string v4, "OneTrackSystemImp"

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data :"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 15
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackCachedEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackSystemImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

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

    const-string p1, "OneTrackSystemImp"

    const-string p2, "Event size exceed limitation!"

    .line 4
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 18
    new-instance v0, Lcom/xiaomi/onetrack/api/ai;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ai;-><init>(Lcom/xiaomi/onetrack/api/ah;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/aj;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->g:Lcom/xiaomi/onetrack/util/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/util/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "OneTrackSystemImp"

    const-string p2, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 3
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/ah;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onetrack_cta_status"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/api/d;)V

    .line 9
    :cond_3
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackSystemImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ah;->f:Lcom/xiaomi/onetrack/api/aj;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->e:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1, p1, p2, v2}, Lcom/xiaomi/onetrack/api/aj;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "OneTrackSystemImp"

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track mIOneTrackService is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ah;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
