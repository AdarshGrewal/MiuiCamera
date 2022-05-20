.class public Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;
.super Ljava/lang/Object;
.source "AABExtension.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Split:AABExtension"

.field public static final sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aabApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

.field public final sSplitContentProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sSplitContentProviderMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->aabApplications:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getSplitNames()Ljava/util/Set;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;

    new-instance v2, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;

    invoke-direct {v2, v0}, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;-><init>(Ljava/util/Set;)V

    invoke-direct {v1, v2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManagerImpl;-><init>(Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;)V

    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    return-void
.end method

.method public static getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;
    .locals 2

    .line 1
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-direct {v1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sAABCompatReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    return-object v0
.end method

.method private getSplitNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getDynamicFeatures()[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    array-length v2, v0

    if-lez v2, :cond_0

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method


# virtual methods
.method public activateSplitProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sSplitContentProviderMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;

    .line 3
    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;->activateRealContentProvider(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public activeApplication(Landroid/app/Application;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->activeApplication(Landroid/app/Application;Landroid/content/Context;)V

    return-void
.end method

.method public createAndActiveSplitApplication(Landroid/content/Context;Z)V
    .locals 4

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;

    invoke-direct {p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->getInstalledSplitsForAAB()Ljava/util/Set;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    :try_start_0
    const-class v1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->activeApplication(Landroid/app/Application;Landroid/content/Context;)V

    .line 6
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->aabApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " application"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Split:AABExtension"

    invoke-static {v2, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    return-object p1
.end method

.method public getFakeComponent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
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
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->isSplitActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class p1, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeActivity;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->isSplitService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-class p1, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeService;

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->isSplitReceiver(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    const-class p1, Lcom/iqiyi/android/qigsaw/core/extension/fakecomponents/FakeReceiver;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSplitNameForActivityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->extensionManager:Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;

    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;->getSplitActivitiesMap()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public onApplicationCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->aabApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->aabApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 3
    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/iqiyi/android/qigsaw/core/extension/ContentProviderProxy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sSplitContentProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->sSplitContentProviderMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
