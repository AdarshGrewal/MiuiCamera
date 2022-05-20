.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;
.super Ljava/lang/Object;
.source "SplitInstallSessionManagerImpl.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;


# instance fields
.field public final mActiveSessionStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mActiveSessionStates:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mLock:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static asList(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TC;>;)",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public changeSessionState(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mActiveSessionStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setStatus(I)V

    const/4 v1, 0x7

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/16 v1, 0xa

    if-ne p2, v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->removeSessionState(I)V

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->transform2Bundle(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)Landroid/os/Bundle;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "session_state"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.iqiyi.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mActiveSessionStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSessionStates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mActiveSessionStates:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->asList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

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

.method public isActiveSessionsLimitExceeded()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isIncompatibleWithExistingSession(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->getSessionStates()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeSessionState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mActiveSessionStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSessionState(ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mActiveSessionStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManagerImpl;->mActiveSessionStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
