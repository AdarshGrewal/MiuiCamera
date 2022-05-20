.class public final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;
.source "SplitLoadTaskImpl.java"


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V

    return-void
.end method


# virtual methods
.method public createSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
    .locals 2

    .line 1
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public loadCode(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getClassLoader(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p6}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->loadCode(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->addClassLoader(Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;)V

    :cond_0
    return-object v0
.end method

.method public onSplitActivateFailed(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object v0

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->removeClassLoader(Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;)Z

    :cond_0
    return-void
.end method
