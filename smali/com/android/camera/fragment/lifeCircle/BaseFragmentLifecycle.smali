.class public Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;
.super Ljava/lang/Object;
.source "BaseFragmentLifecycle.java"

# interfaces
.implements Lcom/android/camera/fragment/lifeCircle/BaseLifeCycle;


# instance fields
.field public mIsDestroyed:Z

.field public mIsStarted:Z

.field public final mLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
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
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeDestroy(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1, p2}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStart(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1, p2}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStop(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsDestroyed:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .line 3
    invoke-interface {v1, p1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeDestroy(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsStarted:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .line 3
    invoke-interface {v1, p1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStart(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsStarted:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .line 3
    invoke-interface {v1, p1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStop(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
