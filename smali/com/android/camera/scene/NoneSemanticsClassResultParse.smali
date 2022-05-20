.class public Lcom/android/camera/scene/NoneSemanticsClassResultParse;
.super Lcom/android/camera/scene/ASDResultParse;
.source "NoneSemanticsClassResultParse.java"


# static fields
.field public static final SUPER_NIGHT_VALUE_MASK:I = 0xff


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
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    .line 2
    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/scene/NoneSemanticsClassResultParse;->updateASDSceneHDR(II)V

    :goto_0
    return-void
.end method

.method private updateASDSceneHDR(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/module/Camera2Module;->updateHDRTip(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic parseMiAlgoAsdResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    invoke-virtual {p0, p1}, Lcom/android/camera/scene/NoneSemanticsClassResultParse;->parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

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

    const-string v1, "(NoneSemantics)scenes size:"

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

    const-string v4, "(NoneSemantics)-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v2}, Lcom/android/camera/scene/NoneSemanticsClassResultParse;->updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
