.class public Lcom/android/camera/module/loader/FunctionUISetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionUISetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/Module;",
        "Lcom/android/camera/module/Module;",
        ">;"
    }
.end annotation


# instance fields
.field public mNeedNotifyUI:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/module/loader/FunctionUISetup;->mNeedNotifyUI:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 8
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
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showGuide(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/module/common/IUserEventMgr;->onPreviewLayoutChanged(Landroid/graphics/Rect;)V

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->isExternalFrameFit()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {v3, v2}, Lcom/android/camera/CameraScreenNail;->setExternalFrameRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameRect(Landroid/graphics/Rect;)V

    .line 16
    :cond_4
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/camera/module/common/IUserEventMgr;->onPreviewSizeChanged(II)V

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v4

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v5

    .line 20
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v6

    const/4 v7, 0x1

    if-eq v4, v5, :cond_5

    const/4 v7, 0x2

    goto :goto_1

    .line 21
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLastUiStyle()I

    move-result v4

    if-eq v4, v6, :cond_6

    const/4 v7, 0x3

    .line 22
    :cond_6
    :goto_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v4

    invoke-interface {v4, v1, v2, v6}, Lcom/android/camera/module/common/IUserEventMgr;->setRectAndUIStyle(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 23
    iget-boolean v1, p0, Lcom/android/camera/module/loader/FunctionUISetup;->mNeedNotifyUI:Z

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    .line 24
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v1, v7, v2}, Lcom/android/camera/animation/AnimationComposite;->notifyDataChanged(II)V

    .line 25
    :cond_7
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 26
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 27
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v1, :cond_8

    .line 29
    iget v2, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    .line 30
    invoke-static {v2, v0}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    .line 31
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    :cond_8
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionUISetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    return-object p1
.end method
