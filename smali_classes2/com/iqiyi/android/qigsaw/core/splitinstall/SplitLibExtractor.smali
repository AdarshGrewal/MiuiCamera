.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;
.super Ljava/lang/Object;
.source "SplitLibExtractor.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final LOCK_FILENAME:Ljava/lang/String; = "SplitLib.lock"

.field public static final TAG:Ljava/lang/String; = "Split:LibExtractor"


# instance fields
.field public final cacheLock:Ljava/nio/channels/FileLock;

.field public final libDir:Ljava/io/File;

.field public final lockChannel:Ljava/nio/channels/FileChannel;

.field public final lockRaf:Ljava/io/RandomAccessFile;

.field public final sourceApk:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Split:LibExtractor"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->sourceApk:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->libDir:Ljava/io/File;

    .line 4
    new-instance p1, Ljava/io/File;

    const-string v1, "SplitLib.lock"

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p2, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->lockRaf:Ljava/io/RandomAccessFile;

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->lockChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocking on lock "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p2

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->cacheLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " locked"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->lockChannel:Ljava/nio/channels/FileChannel;

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
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-static {p2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 13
    throw p1
.end method

.method private findLib(Ljava/lang/String;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;",
            ">;)",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;

    .line 2
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadExistingExtractions(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Split:LibExtractor"

    const-string v3, "loading existing lib files"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->libDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3
    array-length v3, v1

    if-lez v3, :cond_5

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;

    .line 6
    array-length v5, v1

    move v6, v0

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v6, v5, :cond_2

    aget-object v9, v1, v6

    .line 7
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    goto :goto_2

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid extracted lib : file md5 is unmatched!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Invalid extracted lib: file %s is not existing!"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Existing lib files loaded"

    .line 12
    invoke-static {v2, v0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 13
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing extracted lib file \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->libDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performExtractions(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->sourceApk:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getLibInfo()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->getAbi()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-string v4, "lib/%s/"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 7
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x6c

    if-ge v9, v10, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-le v9, v10, :cond_1

    goto :goto_0

    :cond_1
    const-string v9, "lib/"

    .line 10
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    const-string v9, ".so"

    .line 11
    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/16 v9, 0x2f

    .line 12
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getLibInfo()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->getLibs()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->findLib(Ljava/lang/String;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 14
    new-instance v11, Ljava/io/File;

    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->libDir:Ljava/io/File;

    invoke-direct {v11, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v12, "\'"

    const-string v13, "Split:LibExtractor"

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v10}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {v11}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafely(Ljava/io/File;)Z

    .line 19
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to delete corrupted lib file \'"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v13, v0, v14}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Extraction is needed for lib: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v13, v0, v14}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitTmpDir()Ljava/io/File;

    move-result-object v0

    .line 23
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tmp-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-static {v14, v15, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v14

    move v0, v5

    move v15, v0

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_b

    if-nez v15, :cond_b

    add-int/lit8 v3, v0, 0x1

    .line 24
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-virtual {v2, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 26
    invoke-virtual {v14, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to rename \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v4

    const/4 v1, 0x0

    :try_start_2
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_6
    move-object/from16 v16, v4

    const/4 v15, 0x1

    .line 28
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    :goto_3
    move-object v1, v0

    .line 29
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-object/from16 v16, v4

    .line 30
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to extract so :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attempts times : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extraction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_7

    const-string v1, "succeeded"

    goto :goto_6

    :cond_7
    const-string v1, "failed"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {v11}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v10}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v1

    .line 34
    invoke-virtual {v10}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo$Lib;->getMd5()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const-string v0, "Failed to check %s md5, excepted %s but %s"

    invoke-static {v13, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x0

    :cond_8
    if-nez v15, :cond_9

    .line 35
    invoke-static {v11}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafely(Ljava/io/File;)Z

    .line 36
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete extracted lib that has been corrupted\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v13, v0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 38
    :cond_9
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move v0, v3

    move-object/from16 v4, v16

    goto/16 :goto_1

    :cond_b
    move-object/from16 v16, v4

    .line 39
    invoke-static {v14}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteFileSafely(Ljava/io/File;)Z

    if-eqz v15, :cond_c

    move-object/from16 v4, v16

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_8

    .line 40
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create lib file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v1, v3

    const-string v2, "Failed to find %s in split-info"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v1, v3

    :goto_8
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 42
    :cond_f
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    return-object v7
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
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    return-void
.end method

.method public load(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "Split:LibExtractor"

    if-nez p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getLibInfo()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibInfo;->getLibs()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->loadExistingExtractions(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p2, v0, [Ljava/lang/Object;

    const-string v2, "Failed to reload existing extracted lib files, falling back to fresh extraction"

    .line 3
    invoke-static {v1, v2, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->performExtractions(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitLibExtractor;->performExtractions(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/util/List;

    move-result-object p1

    .line 6
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load found "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lib files"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SplitLibExtractor was closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
