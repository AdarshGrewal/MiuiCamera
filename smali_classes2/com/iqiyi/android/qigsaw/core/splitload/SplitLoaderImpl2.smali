.class public final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
.source "SplitLoaderImpl2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1, p3, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->load(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    .line 5
    invoke-static {p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitUnKnownFileTypeDexLoader;->loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 p3, -0x17

    invoke-direct {p2, p3, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method private loadLibrary(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader;->load(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 v0, -0x16

    invoke-direct {p2, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public loadCode2(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;->loadLibrary(Ljava/lang/ClassLoader;Ljava/io/File;)V

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;->loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method
