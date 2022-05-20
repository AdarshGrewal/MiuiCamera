.class public final Lcom/xiaomi/stat/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/c/d;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/stat/c/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/stat/c/d;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-class p1, Lcom/xiaomi/stat/c/i;

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/stat/c/e;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/stat/c/e;-><init>(Lcom/xiaomi/stat/c/d;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    const-class v0, Lcom/xiaomi/stat/c/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UploadMode"

    invoke-static {v1, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
