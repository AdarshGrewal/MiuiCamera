.class public final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;
.super Ljava/lang/Object;
.source "SplitInfoVersionDataStorageImpl.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorage;


# static fields
.field public static final NEW_VERSION:Ljava/lang/String; = "newVersion"

.field public static final OLD_VERSION:Ljava/lang/String; = "oldVersion"

.field public static final TAG:Ljava/lang/String; = "SplitInfoVersionStorageImpl"

.field public static final VERSION_DATA_LOCK_NAME:Ljava/lang/String; = "version.lock"

.field public static final VERSION_DATA_NAME:Ljava/lang/String; = "version.info"


# instance fields
.field public final cacheLock:Ljava/nio/channels/FileLock;

.field public final lockChannel:Ljava/nio/channels/FileChannel;

.field public final lockRaf:Ljava/io/RandomAccessFile;

.field public final versionDataFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SplitInfoVersionStorageImpl"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/io/File;

    const-string v2, "version.info"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->versionDataFile:Ljava/io/File;

    .line 3
    new-instance v1, Ljava/io/File;

    const-string v2, "version.lock"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p1, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->lockRaf:Ljava/io/RandomAccessFile;

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->lockChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocking on lock "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->cacheLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " locked"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 10
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 12
    throw p1
.end method

.method public static readVersionDataProperties(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move-object v4, v1

    move-object v5, v4

    :cond_0
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_2

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 2
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v8, "oldVersion"

    .line 4
    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "newVersion"

    .line 5
    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :goto_1
    invoke-static {v7}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v6

    move-object v7, v1

    :goto_2
    :try_start_2
    const-string v8, "SplitInfoVersionStorageImpl"

    .line 7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read property failed, e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v8, v6, v9}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_3
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v7

    .line 8
    :goto_4
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 9
    throw p0

    :cond_2
    if-eqz v3, :cond_3

    .line 10
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    invoke-direct {p0, v4, v5}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    return-object v1
.end method

.method private updateVersionDataProperties(Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVersionDataProperties file path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , oldVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->oldVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->newVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "SplitInfoVersionStorageImpl"

    .line 3
    invoke-static {v3, v1, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    move v1, v0

    move v2, v1

    :cond_2
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_4

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 7
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 8
    iget-object v4, p2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->oldVersion:Ljava/lang/String;

    const-string v5, "oldVersion"

    invoke-virtual {v2, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v4, p2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->newVersion:Ljava/lang/String;

    const-string v5, "newVersion"

    invoke-virtual {v2, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 10
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "from old version:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->oldVersion:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to new version:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->newVersion:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v2, v5, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v5}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v4, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v2

    .line 14
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write property failed, e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-static {v4}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 16
    :goto_2
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->readVersionDataProperties(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 17
    iget-object v4, v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->oldVersion:Ljava/lang/String;

    iget-object v5, p2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->oldVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->newVersion:Ljava/lang/String;

    iget-object v4, p2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;->newVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-nez v2, :cond_2

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 19
    :goto_4
    invoke-static {v4}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 20
    throw p1

    :cond_4
    return v2

    :cond_5
    :goto_5
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    return-void
.end method

.method public readVersionData()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->versionDataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->versionDataFile:Ljava/io/File;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->readVersionDataProperties(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SplitInfoVersionDataStorage was closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateVersionData(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->versionDataFile:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionDataStorageImpl;->updateVersionDataProperties(Ljava/io/File;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionData;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SplitInfoVersionDataStorage was closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
