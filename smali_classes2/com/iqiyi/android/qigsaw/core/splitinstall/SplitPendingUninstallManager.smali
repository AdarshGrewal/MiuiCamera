.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;
.super Ljava/lang/Object;
.source "SplitPendingUninstallManager.java"


# static fields
.field public static final PENDING_UNINSTALL_SPLITS:Ljava/lang/String; = "pendingUninstallSplits"

.field public static final TAG:Ljava/lang/String; = "PendingUninstallSplitsManager"

.field public static final VERSION_DATA_NAME:Ljava/lang/String; = "uninstallsplits.info"

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final pendingUninstallSplitsFile:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getUninstallSplitsDir()Ljava/io/File;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    const-string v2, "uninstallsplits.info"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->pendingUninstallSplitsFile:Ljava/io/File;

    return-void
.end method

.method private readPendingUninstallSplitsInternal(Ljava/io/File;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v4, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v7, "pendingUninstallSplits"

    .line 4
    invoke-virtual {v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v7, ","

    .line 5
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-static {v7, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v7

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_3

    .line 8
    :cond_0
    :goto_1
    invoke-static {v6}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v5

    move-object v6, v0

    :goto_2
    move-object v7, v4

    move-object v4, v5

    :goto_3
    :try_start_3
    const-string v5, "PendingUninstallSplitsManager"

    .line 9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read property failed, e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v8}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    invoke-static {v6}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    move-object v4, v7

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, v6

    :goto_4
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 11
    throw p1

    :cond_1
    return-object v4
.end method

.method private recordPendingUninstallSplitsInternal(Ljava/io/File;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordSplitUninstallInfo file path:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , uninstalls splits: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "PendingUninstallSplitsManager"

    .line 5
    invoke-static {v3, p2, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->readPendingUninstallSplits()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Splits %s have been marked to uninstall!"

    invoke-static {v3, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 10
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Splits which need to be uninstalled have been updated, new pending uninstall splits: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, p2, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move p2, v0

    move v4, p2

    :cond_3
    :goto_0
    const/4 v5, 0x3

    if-ge p2, v5, :cond_5

    if-nez v4, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 15
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const-string v5, ","

    .line 16
    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pendingUninstallSplits"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 17
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splits need to be uninstalled: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {v6}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v5, v6

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v4

    .line 21
    :goto_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write property failed, e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    invoke-static {v5}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 23
    :goto_2
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->readPendingUninstallSplits()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 24
    invoke-interface {v4, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v0

    :goto_3
    if-nez v4, :cond_3

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 26
    :goto_4
    invoke-static {v5}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 27
    throw p1

    :cond_5
    return v4

    :cond_6
    :goto_5
    return v0
.end method


# virtual methods
.method public deletePendingUninstallSplitsRecord()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->pendingUninstallSplitsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->pendingUninstallSplitsFile:Ljava/io/File;

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafely(Ljava/io/File;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readPendingUninstallSplits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->pendingUninstallSplitsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->pendingUninstallSplitsFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->readPendingUninstallSplitsInternal(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recordPendingUninstallSplits(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->pendingUninstallSplitsFile:Ljava/io/File;

    invoke-direct {p0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->recordPendingUninstallSplitsInternal(Ljava/io/File;Ljava/util/List;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
