.class public Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/aj;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/aj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->b(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->c(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/aj;->g(Lcom/xiaomi/onetrack/api/aj;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->f(Lcom/xiaomi/onetrack/api/aj;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "ServiceConnectManager"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnectManager"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->b(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->c(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBinding throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnectManager"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->b(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->c(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {p2}, Lcom/miui/analytics/ITrack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ITrack;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/aj;->d(Lcom/xiaomi/onetrack/api/aj;)V

    const-string p1, "ServiceConnectManager"

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected  mConnecting "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->b(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mIOneTrackService "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->e(Lcom/xiaomi/onetrack/api/aj;)Lcom/miui/analytics/ITrack;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 8
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected throwable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceConnectManager"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/aj;->a(Lcom/xiaomi/onetrack/api/aj;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->b(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aj;->c(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "ServiceConnectManager"

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected:  mConnecting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/aj;->b(Lcom/xiaomi/onetrack/api/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIOneTrackService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;->a:Lcom/xiaomi/onetrack/api/aj;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/aj;->e(Lcom/xiaomi/onetrack/api/aj;)Lcom/miui/analytics/ITrack;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnectManager"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
