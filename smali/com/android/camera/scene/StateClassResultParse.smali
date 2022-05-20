.class public Lcom/android/camera/scene/StateClassResultParse;
.super Lcom/android/camera/scene/ASDResultParse;
.source "StateClassResultParse.java"


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/scene/ASDResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    .line 2
    iget v1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isSceneChange(II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "ON_TRIPOD scene no change"

    .line 4
    invoke-static {p1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 5
    iget-object p1, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Module;

    if-nez p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    instance-of v3, p1, Lcom/android/camera/module/Camera2Module;

    const/16 v4, 0x3b

    if-eqz v3, :cond_3

    .line 7
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    .line 8
    invoke-virtual {p1, v1}, Lcom/android/camera/module/Camera2Module;->setAsdScenes([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    new-array v0, v0, [I

    aput v4, v0, v2

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of v3, p1, Lcom/android/camera/module/AmbilightModule;

    if-eqz v3, :cond_4

    .line 11
    check-cast p1, Lcom/android/camera/module/AmbilightModule;

    .line 12
    invoke-virtual {p1, v1}, Lcom/android/camera/module/AmbilightModule;->setAsdScenes([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    new-array v0, v0, [I

    aput v4, v0, v2

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic parseMiAlgoAsdResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    invoke-virtual {p0, p1}, Lcom/android/camera/scene/StateClassResultParse;->parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    return-void
.end method

.method public parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(StateClass)scenes size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(StateClass)->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v2}, Lcom/android/camera/scene/StateClassResultParse;->updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
