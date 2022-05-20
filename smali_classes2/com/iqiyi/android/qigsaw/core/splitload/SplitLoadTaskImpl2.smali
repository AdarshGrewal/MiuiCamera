.class public final Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTaskImpl2;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;
.source "SplitLoadTaskImpl2.java"


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
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderImpl2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public loadCode(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ClassLoader;
    .locals 0
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
    invoke-virtual {p1, p3, p4, p5}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->loadCode2(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    .line 2
    const-class p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public onSplitActivateFailed(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->unLoad(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
