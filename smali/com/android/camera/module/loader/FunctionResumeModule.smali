.class public Lcom/android/camera/module/loader/FunctionResumeModule;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionResumeModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/Module;",
        "Lcom/android/camera/module/Module;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v2

    .line 6
    iget v3, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDataBackUpKey(II)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/camera/data/backup/DataBackUp;->revertOrCreateRunning(Lcom/android/camera/data/data/runing/DataItemRunning;I)V

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/Module;

    .line 8
    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/android/camera/module/Module;->onGLAndCameraReady(II)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionResumeModule;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    return-object p1
.end method
