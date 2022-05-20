.class public final Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;
.super Ljava/lang/Object;
.source "SplitComponentInfoProvider.java"


# instance fields
.field public final splitNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;->splitNames:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getSplitActivitiesMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;->splitNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/extension/ComponentInfoManager;->getSplitActivities(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    array-length v4, v3

    if-lez v4, :cond_0

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSplitApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/extension/ComponentInfoManager;->getSplitApplication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSplitReceivers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;->splitNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/extension/ComponentInfoManager;->getSplitReceivers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    array-length v3, v2

    if-lez v3, :cond_0

    .line 5
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSplitServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/extension/SplitComponentInfoProvider;->splitNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/iqiyi/android/qigsaw/core/extension/ComponentInfoManager;->getSplitServices(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    array-length v3, v2

    if-lez v3, :cond_0

    .line 5
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
