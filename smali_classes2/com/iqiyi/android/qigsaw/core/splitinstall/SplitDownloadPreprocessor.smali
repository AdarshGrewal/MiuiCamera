.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;
.super Ljava/lang/Object;
.source "SplitDownloadPreprocessor.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final LOCK_FILENAME:Ljava/lang/String; = "SplitCopier.lock"

.field public static final MAX_RETRY_ATTEMPTS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "SplitDownloadPreprocessor"


# instance fields
.field public final cacheLock:Ljava/nio/channels/FileLock;

.field public final lockChannel:Ljava/nio/channels/FileChannel;

.field public final lockRaf:Ljava/io/RandomAccessFile;

.field public final splitApk:Ljava/io/File;

.field public final splitDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SplitDownloadPreprocessor"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    .line 3
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitDir:Ljava/io/File;

    .line 4
    new-instance p2, Ljava/io/File;

    const-string v1, "SplitCopier.lock"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p1, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->lockRaf:Ljava/io/RandomAccessFile;

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->lockChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocking on lock "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->cacheLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " locked"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 11
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

    .line 12
    :goto_1
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 13
    throw p1
.end method

.method private checkSplitMD5(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSize()J

    move-result-wide v0

    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getMd5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private copyBuiltInSplit(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SplitDownloadPreprocessor"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitTmpDir()Ljava/io/File;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmp-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, ".apk"

    invoke-static {p2, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-nez v3, :cond_3

    const/4 v6, 0x3

    if-ge v4, v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 5
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v6, v7}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 6
    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {p2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to rename \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" to \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_1

    .line 8
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to copy built-in split apk, attempts times : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copy built-in split "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    const-string v6, "succeeded"

    goto :goto_2

    :cond_2
    const-string v6, "failed"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_0

    .line 10
    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-static {v5}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafely(Ljava/io/File;)Z

    .line 11
    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete copied split apk which has been corrupted\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 13
    :cond_3
    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafely(Ljava/io/File;)Z

    if-eqz v3, :cond_4

    return-void

    .line 14
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v1, p2, v2

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v5

    const-string v0, "Failed to copy built-in file %s to path %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deleteCorruptedOrObsoletedSplitApk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitDir:Ljava/io/File;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SplitDownloadPreprocessor"

    const-string v2, "Failed to delete corrupted split files"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private verifySplitApk(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-static {p1, p3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SignatureValidator;->validateSplit(Landroid/content/Context;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->checkSplitMD5(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->checkSplitMD5(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v1

    const-string p2, "SplitDownloadPreprocessor"

    const-string v0, "Oops! Failed to check split %s signature and md5"

    invoke-static {p2, v0, p3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->deleteCorruptedOrObsoletedSplitApk()V

    :cond_2
    return p1

    :cond_3
    return v1
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
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v1

    const-string v2, "SplitDownloadPreprocessor"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v5, "assets://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 5
    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "Failed to check built-in split %s, it may be corrupted"

    if-nez v5, :cond_2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 6
    iget-object v7, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v7, "Built-in split %s is not existing, copy it from asset to [%s]"

    invoke-static {v2, v7, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->copyBuiltInSplit(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)V

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->verifySplitApk(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v0, p2, v3

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    .line 10
    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v5, "Built-in split %s is existing"

    invoke-static {v2, v5, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->verifySplitApk(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_3

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->copyBuiltInSplit(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)V

    .line 13
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->verifySplitApk(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-array p2, v4, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->splitApk:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "split %s is downloaded"

    .line 16
    invoke-static {v2, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->verifySplitApk(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)Z

    goto :goto_0

    :cond_6
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string p2, " split %s is not downloaded"

    .line 18
    invoke-static {v2, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FileCheckerAndCopier was closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
