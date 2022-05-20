.class public abstract Lcom/android/camera/data/data/DataItemBase;
.super Ljava/lang/Object;
.source "DataItemBase.java"

# interfaces
.implements Lcom/android/camera/data/provider/DataProvider$ProviderEvent;
.implements Lcom/android/camera/data/provider/DataProvider$ProviderEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/DataItemBase$ConcurrentEditor;
    }
.end annotation


# instance fields
.field public mDataCloudItem:Lcom/android/camera/data/cloud/DataCloud$CloudItem;

.field public mEditor:Landroid/content/SharedPreferences$Editor;

.field public final mLock:Ljava/lang/Object;

.field public mPreferences:Landroid/content/SharedPreferences;

.field public mValues:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/data/data/DataItemBase;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/data/data/DataItemBase;)Landroidx/collection/SimpleArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    return-object p0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->initPreferences()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initPreferences()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->provideKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Editor null\uff01"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Transient data\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrayMapContainsKey(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public arrayMapRemove(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearArrayMap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cloneValues()Landroidx/collection/SimpleArrayMap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commit()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public concurrentEditor()Lcom/android/camera/data/data/DataItemBase$ConcurrentEditor;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    new-instance v2, Lcom/android/camera/data/data/DataItemBase$ConcurrentEditor;

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-direct {v2, p0, v1}, Lcom/android/camera/data/data/DataItemBase$ConcurrentEditor;-><init>(Lcom/android/camera/data/data/DataItemBase;Landroid/content/SharedPreferences$Editor;)V

    return-object v2

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not allowed to modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    monitor-exit v0

    return-object p0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not allowed to modify"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mDataCloudItem:Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->getCloudBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDoubleFromValues(Ljava/lang/String;D)D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    :goto_0
    monitor-exit v0

    return-wide p2

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mDataCloudItem:Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->getCloudFloat(Ljava/lang/String;F)F

    move-result p2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mDataCloudItem:Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->getCloudInt(Ljava/lang/String;I)I

    move-result p2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mDataCloudItem:Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->getCloudLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    monitor-exit v0

    return-wide p2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mDataCloudItem:Lcom/android/camera/data/cloud/DataCloud$CloudItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->getCloudString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEvent;->isTransient()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v1

    .line 7
    :goto_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getValues()Landroidx/collection/SimpleArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMutable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putLong(Ljava/lang/String;J)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/DataItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public restoreArrayMap(Landroidx/collection/SimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/DataItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/data/data/DataItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
