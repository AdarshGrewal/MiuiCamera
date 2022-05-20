.class public abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;
.super Ljava/lang/Object;
.source "SplitLoadManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitLoadManager"


# instance fields
.field public final context:Landroid/content/Context;

.field public final currentProcessName:Ljava/lang/String;

.field public final loadedSplitApkPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final loadedSplitNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final loadedSplits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iqiyi/android/qigsaw/core/splitload/Split;",
            ">;"
        }
    .end annotation
.end field

.field public final splitLoadMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitNames:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitApkPaths:Ljava/util/Set;

    .line 5
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->currentProcessName:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->splitLoadMode:I

    return-void
.end method


# virtual methods
.method public abstract createSplitLoadTask(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLoadedSplitApkPaths()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitApkPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitApkPaths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "SplitLoadManager"

    const-string v4, "Split has been loaded, but its file %s is not exist!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 7
    invoke-static {v3, v4, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadedSplitNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitNames:Ljava/util/Set;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getLoadedSplits()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iqiyi/android/qigsaw/core/splitload/Split;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract getResources(Landroid/content/res/Resources;)V
.end method

.method public abstract injectPathClassloader()V
.end method

.method public abstract loadInstalledSplits()V
.end method

.method public abstract loadInstalledSplitsWhenAppLaunches()V
.end method

.method public final putSplits(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitload/Split;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;

    .line 4
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitNames:Ljava/util/Set;

    iget-object v2, v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadedSplitApkPaths:Ljava/util/Set;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitload/Split;->splitApkPath:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public splitLoadMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->splitLoadMode:I

    return v0
.end method
