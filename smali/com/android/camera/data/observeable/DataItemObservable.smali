.class public Lcom/android/camera/data/observeable/DataItemObservable;
.super Ljava/lang/Object;
.source "DataItemObservable.java"


# static fields
.field public static final DEFAULT_KEY:Ljava/lang/String; = "com.android.camera.ViewModelProvider.DefaultKey"


# instance fields
.field public final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/data/observeable/VMBase;",
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/observeable/DataItemObservable;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method private get(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/data/observeable/VMBase;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/String;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/data/observeable/DataItemObservable;->create(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/observeable/DataItemObservable;->put(Ljava/lang/String;Lcom/android/camera/data/observeable/VMBase;)V

    return-object p2
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/DataItemObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/VMBase;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera/data/observeable/VMBase;->onCleared()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/observeable/DataItemObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public create(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/data/observeable/VMBase;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Cannot create an instance of "

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/VMBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/data/observeable/VMBase;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.camera.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final get(Ljava/lang/String;)Lcom/android/camera/data/observeable/VMBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/DataItemObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMBase;

    return-object p1
.end method

.method public final put(Ljava/lang/String;Lcom/android/camera/data/observeable/VMBase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/observeable/DataItemObservable;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMBase;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMBase;->onCleared()V

    :cond_0
    return-void
.end method
