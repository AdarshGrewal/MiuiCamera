.class public Lcom/xiaomi/stat/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "DBExecutor"

.field public static b:Ljava/lang/String; = "mistat_db"

.field public static final c:Ljava/lang/String; = "mistat"

.field public static final d:Ljava/lang/String; = "db.lk"

.field public static e:Landroid/os/Handler;

.field public static f:Ljava/nio/channels/FileLock;

.field public static g:Ljava/nio/channels/FileChannel;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/c;->c()V

    .line 3
    sget-object v0, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/stat/c$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/c$a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/c;->d()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/c;->e()V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/stat/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/xiaomi/stat/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static d()Z
    .locals 5

    const-string v0, "acquire lock for db failed with "

    const-string v1, "DBExecutor"

    .line 1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "mistat"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 4
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "db.lk"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    .line 7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    const-string v3, "acquire lock for db"

    .line 8
    invoke-static {v1, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_2
    sget-object v0, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close file stream failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :catch_2
    move-exception v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static e()V
    .locals 5

    const-string v0, "DBExecutor"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    if-eqz v2, :cond_0

    .line 2
    sget-object v2, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 3
    sput-object v1, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    :cond_0
    const-string v2, "release sDBFileLock for db"

    .line 4
    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release sDBFileLock for db failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    :try_start_1
    sget-object v2, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_1

    .line 7
    sget-object v2, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 8
    sput-object v1, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    :cond_1
    const-string v1, "release sLockFileChannel for db"

    .line 9
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release sLockFileChannel for db failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
