.class public Lcom/android/camera/dualvideo/DualVideoGridModule;
.super Lcom/android/camera/dualvideo/DualVideoModuleBase;
.source "DualVideoGridModule.java"


# instance fields
.field public mSelectDataBak:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/util/UserSelectData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/DualVideoGridModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->updateTextureId()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/DualVideoGridModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->addBottomControl()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/DualVideoGridModule;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoGridModule;->onConfirmClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->enableDrawBlur(Z)V

    return-void
.end method

.method private addBottomControl()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1af

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;->getParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleUtil;->isFatScreen()Z

    move-result v1

    const v2, 0x7f0a0132

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d0039

    invoke-virtual {v1, v4, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d0038

    invoke-virtual {v1, v4, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    const v1, 0x7f0a0134

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0133

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 14
    new-instance v2, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOO0;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOO0;-><init>(Lcom/android/camera/dualvideo/DualVideoGridModule;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v2, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOO0o;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOO0o;-><init>(Lcom/android/camera/dualvideo/DualVideoGridModule;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-static {v1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    .line 17
    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    .line 18
    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    invoke-virtual {v2, v0}, Lcom/android/camera/dualvideo/view/RotateAnimator;->addView(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/view/RotateAnimator;->addView(Landroid/view/View;)V

    return-void
.end method

.method private cancelSelsectAndBackRecording()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->restoreSelectData()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->confirmAndBackRecording()V

    const-string/jumbo v0, "value_cancel_select"

    .line 3
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    return-void
.end method

.method private confirmAndBackRecording()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->switchToRecordWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mKeepRecorderWhenSwitching:Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showOrHideBottom(Z)V

    :cond_0
    return-void
.end method

.method private copySelectData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;->mSelectDataBak:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;->mSelectDataBak:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;->mSelectDataBak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOO0O;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOO0O;-><init>(Lcom/android/camera/dualvideo/DualVideoGridModule;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private onCancelViewClicked()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->cancelSelsectAndBackRecording()V

    return-void
.end method

.method private onConfirmClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->confirmAndBackRecording()V

    const-string/jumbo p1, "value_confirm_select"

    .line 2
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonClick(Ljava/lang/String;)V

    return-void
.end method

.method private restoreSelectData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;->mSelectDataBak:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;->mSelectDataBak:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;->mSelectDataBak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;->mSelectDataBak:Ljava/util/ArrayList;

    return-void
.end method

.method private switchToRecordWindow(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchGridWindowToRecord: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRenderAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderManager;->isDrawBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchThumbnailFunction(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showModeSwitchLayout(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o00000oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o00000oo;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOO;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->updateTexSize()V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    .line 11
    invoke-virtual {p0, v1, v1, p1}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZZI)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private updateTexSize()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->BACK_PREVIEW:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->BACK_PREVIEW:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    :goto_0
    return-void
.end method

.method private updateTopAlert()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckDualVideoMode()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->onCancelViewClicked()V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;->mSelectDataBak:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-direct {v1, p1}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "releaseRemote: isAnimating, waiting!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->releaseRemote()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->cancelSelsectAndBackRecording()V

    return v1

    .line 5
    :cond_2
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onBackPressed()Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->copySelectData()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showModeSwitchLayout(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v2, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOOO;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOOO;-><init>(Lcom/android/camera/dualvideo/DualVideoGridModule;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showModeSwitchLayout(Z)V

    .line 7
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyLayoutTypeToRemoteDevice(I)V

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoGridModule;->switchToRecordWindow(I)Z

    return-void
.end method

.method public releaseRemote()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOOo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOOO0;-><init>(Lcom/android/camera/dualvideo/DualVideoGridModule;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->switchRenderRemoteItem()V

    :cond_2
    :goto_0
    return-void
.end method

.method public switchRenderRemoteItem()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchRemoteCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->refreshSelectData()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o00000OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o00000OO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooO0oO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x200

    aput v3, v1, v2

    .line 7
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 8
    :cond_0
    invoke-super {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchRenderRemoteItem()V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->updateTopAlert()V

    return-void
.end method
