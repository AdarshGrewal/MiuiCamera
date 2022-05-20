.class public Lcom/android/camera/module/loader/FunctionDataSetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionDataSetup.java"


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
    .locals 9
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
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IModuleState;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0xe1

    .line 5
    invoke-static {v0, p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IModuleState;->isCreated()Z

    move-result v1

    if-nez v1, :cond_2

    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/ICameraMgr;->getBogusCameraId()I

    move-result v5

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    .line 13
    iget v7, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v5, v6, v8}, Lcom/android/camera/data/data/config/DataItemConfig;->reInitComponent(IILcom/android/camera2/CameraCapabilities;I)V

    .line 14
    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v7

    invoke-virtual {v3, v2, v5, v6, v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->reInitComponent(IILcom/android/camera2/CameraCapabilities;I)V

    .line 15
    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/camera/data/data/extra/DataItemLive;->reInitComponent(IILcom/android/camera2/CameraCapabilities;)V

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->reInit()V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v1

    if-nez v1, :cond_3

    .line 18
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    .line 19
    iget v1, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-static {v1, v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->createGlobal(ILcom/android/camera/CameraIntentManager;)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setPaintCondition(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionDataSetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    return-object p1
.end method
