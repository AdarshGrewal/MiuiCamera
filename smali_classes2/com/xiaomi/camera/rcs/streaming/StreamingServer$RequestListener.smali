.class public Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;
.super Ljava/lang/Thread;
.source "StreamingServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/streaming/StreamingServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestListener"
.end annotation


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public volatile mReady:Z

.field public final mServer:Ljava/net/ServerSocket;

.field public final synthetic this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mReady:Z

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$000(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mServer:Ljava/net/ServerSocket;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 6
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerSocket created"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/net/BindException;->printStackTrace()V

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Port already in use !"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->postStreamingServerState(I)V

    .line 10
    throw v0
.end method


# virtual methods
.method public kill()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mReady:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$200(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rtsp server started: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-boolean v3, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mReady:Z

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    :try_start_1
    new-instance v0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->this$0:Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$WorkerThread;-><init>(Lcom/xiaomi/camera/rcs/streaming/StreamingServer;Ljava/net/Socket;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rtsp server listening failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :catch_1
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 11
    :try_start_2
    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mReady:Z

    .line 12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RTSP server stopped"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 15
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public waitUtilReady()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/camera/rcs/streaming/StreamingServer$RequestListener;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    invoke-static {}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitUntilReady() interrupted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
