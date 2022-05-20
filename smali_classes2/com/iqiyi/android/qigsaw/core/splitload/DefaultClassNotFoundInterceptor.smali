.class public final Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;
.super Ljava/lang/Object;
.source "DefaultClassNotFoundInterceptor.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitload/ClassNotFoundInterceptor;


# static fields
.field public static final TAG:Ljava/lang/String; = "Split:ClassNotFound"


# instance fields
.field public final context:Landroid/content/Context;

.field public final originClassLoader:Ljava/lang/ClassLoader;

.field public final splitLoadMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->originClassLoader:Ljava/lang/ClassLoader;

    .line 4
    iput p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->splitLoadMode:I

    return-void
.end method

.method private findClassInSplits(Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "Split:ClassNotFound"

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitApplicationLoaders;->getClassLoaders()Ljava/util/Set;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 3
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->loadClassItself(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "Class %s is found in %s ClassLoader"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v4

    .line 4
    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v7, v8}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    .line 5
    invoke-virtual {v2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitDexClassLoader;->moduleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    const-string v2, "Class %s is not found in %s ClassLoader"

    invoke-static {v0, v2, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isSplitEntryFragments(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitEntryFragments(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onClassNotFound(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->findClassInSplits(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getFakeComponent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->isSplitEntryFragments(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    :cond_1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadInstalledSplits()V

    .line 5
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->findClassInSplits(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Split:ClassNotFound"

    if-eqz v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Class %s is found in Splits after loading all installed splits."

    .line 6
    invoke-static {v4, p1, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "Split component %s is still not found after installing all installed splits, return a %s to avoid crash"

    invoke-static {v4, p1, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private onClassNotFound2(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getFakeComponent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->isSplitEntryFragments(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->loadInstalledSplits()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->originClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Split:ClassNotFound"

    const-string v2, "Split component %s is still not found after installing all installed splits,return a %s to avoid crash"

    invoke-static {p1, v2, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->splitLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->onClassNotFound(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/DefaultClassNotFoundInterceptor;->onClassNotFound2(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
