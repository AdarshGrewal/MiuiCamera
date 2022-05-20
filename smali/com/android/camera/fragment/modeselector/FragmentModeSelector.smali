.class public Lcom/android/camera/fragment/modeselector/FragmentModeSelector;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentModeSelector.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ModeSelector;
.implements Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
.implements Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;
.implements Lcom/android/camera/ui/ModeSelectView$onModeSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/DragLayout$OnDragListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xf2

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field public mDragChild:Landroid/widget/FrameLayout;

.field public mDragLayout:Lcom/android/camera/ui/DragLayout;

.field public mExternalModeTipIcon:Landroid/widget/ImageView;

.field public mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

.field public mExternalModeTipRoot:Landroid/widget/FrameLayout;

.field public mExternalModeTipText:Landroid/widget/TextView;

.field public mIsIntentAction:Z

.field public mModeSelectLayout:Landroid/widget/FrameLayout;

.field public mModeSelectRoot:Landroid/widget/FrameLayout;

.field public mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

.field public mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

.field public mMoreModeStyle:I

.field public mSupportOrientation:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModeStyle:I

    return-void
.end method

.method private changeModeByNewMode(ILjava/lang/String;IZ)V
    .locals 4

    const/16 p2, 0xa6

    if-ne p1, p2, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0ooOO()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p1, 0xb0

    :cond_0
    const/16 p2, 0xcd

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 6
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xbc

    if-eq p2, v1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 p2, 0xa7

    if-ne p1, p2, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFromProVideoMudule()Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p1, 0xb4

    .line 10
    :cond_2
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    const/16 p2, 0xad

    if-ne p1, p2, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFromSuperNightVideoMudule()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p1, 0xd6

    .line 12
    :cond_4
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-eq p2, v1, :cond_6

    const/16 v1, 0xb8

    if-eq p2, v1, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 14
    instance-of v1, p2, Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_7

    .line 15
    check-cast p2, Lcom/android/camera/ActivityBase;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    goto :goto_0

    .line 16
    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v1, 0xa4

    invoke-virtual {p2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p2, :cond_7

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xd1

    aput v3, v1, v2

    .line 18
    invoke-interface {p2, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->switchOffElementsSilent([I)V

    :cond_7
    :goto_0
    const/16 p2, 0xb7

    if-ne p1, p2, :cond_8

    .line 19
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveModuleClicked()Z

    move-result p2

    if-nez p2, :cond_8

    .line 20
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setLiveModuleClicked(Z)V

    .line 21
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v1, :cond_9

    .line 23
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 24
    :cond_9
    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    if-nez p4, :cond_a

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0()V

    .line 26
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/camera/Camera;

    .line 27
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p3}, Lcom/android/camera/module/loader/StartControl;->setStartDelay(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p3, 0x4

    .line 29
    invoke-virtual {p1, p3}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p3, 0x2

    .line 30
    invoke-virtual {p1, p3}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method private getFitCenterWidth()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getTargetModeView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    :goto_0
    return-object v0
.end method

.method private isFocusOrZoomMoving()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFocusViewMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xb1

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;->isZoomViewMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRecording()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needReInit(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/16 v2, 0xb7

    if-ne p1, v2, :cond_2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method private reInitViewBackground()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipRoot:Landroid/widget/FrameLayout;

    const v2, 0x7f0800ad

    const v3, 0x7f06002b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f0600a6

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private switchMoreModeStyle()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModeStyle:I

    if-ne v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iput v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModeStyle:I

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0705d8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 9
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0705ce

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 11
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    :cond_4
    sget-object v0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchModeSelectViewStyle f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 15
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", m = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 16
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragChild:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getMaxDragDistance()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragChild:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->getFitCenterWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->switchMoreModeStyle()V

    return-void
.end method

.method private updateWhenConfigChange()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->calDragLayoutHeight(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getMaxDragDistance()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_0

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout;->setScreenOrientation(I)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->reInitViewBackground()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    :cond_0
    return-void
.end method

.method public addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/DragLayout;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    :cond_0
    return-void
.end method

.method public canSwipeChangeMode()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->isFocusOrZoomMoving()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public catchDrag(II)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa1

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public changeModeByGravity(II)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    const v3, 0x800005

    const v4, 0x800003

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_1

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_1
    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    :goto_1
    move p1, v4

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 2
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getTransferredMode(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v5, v2

    :goto_3
    if-ge v5, v1, :cond_6

    .line 4
    iget-object v6, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v6, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v6

    if-ne v6, v0, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_4
    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    if-lez v5, :cond_9

    add-int/lit8 v5, v5, -0x1

    .line 5
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getDisplayNameRes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ModeSelectView;->smoothScrollPosition(I)V

    .line 9
    :cond_a
    invoke-direct {p0, p1, v0, p2, v2}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->changeModeByNewMode(ILjava/lang/String;IZ)V

    return-void
.end method

.method public changeModeByNewMode(ILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->changeModeByNewMode(ILjava/lang/String;IZ)V

    return-void
.end method

.method public disableDrag()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->disableAllMode()V

    :cond_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf2

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00a4

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mSupportOrientation:Z

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mIsIntentAction:Z

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->getFitCenterWidth()I

    move-result v0

    const v1, 0x7f0a012b

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/DragLayout;

    iput-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    const v1, 0x7f0a012c

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragChild:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02a5

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02a7

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02a8

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ModeSelectView;

    iput-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;ILcom/android/camera/ui/ModeSelectView$onModeSelectedListener;I)V

    const v0, 0x7f0a0098

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CapsuleLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const v0, 0x7f0a0099

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipText:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const v0, 0x7f0a0096

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipIcon:Landroid/widget/ImageView;

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const v0, 0x7f0a0097

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipRoot:Landroid/widget/FrameLayout;

    .line 15
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipRoot:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->updateView()V

    .line 18
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public isExpanded()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->isExpanded()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public modeChanging()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->isShrink()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mIsIntentAction:Z

    if-eq p1, p2, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mIsIntentAction:Z

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getCommonItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ModeSelectView;->setItems(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOoo/OooO00o;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOoo/OooO00o;-><init>(Lcom/android/camera/fragment/modeselector/FragmentModeSelector;)V

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->runChangeResetCb(Ljava/lang/Runnable;)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa1

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xb7

    if-eq p1, p2, :cond_1

    const/16 p2, 0xd7

    if-ne p1, p2, :cond_2

    .line 12
    :cond_1
    sget-object p1, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onRecording dataChanged"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->switchMoreMode(Z)V

    :goto_1
    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ModeSelectView;->forceUpdate()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->reInitViewBackground()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: disabled"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Lcom/android/camera/AppController;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: ignore click event, because module isn\'t ready"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_2

    .line 7
    sget-object p1, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: null action"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0097

    if-ne p1, v0, :cond_4

    .line 10
    sget-object p1, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: bottom_external_mode_layout"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->resetToCommonMode()V

    :cond_4
    return-void

    .line 12
    :cond_5
    :goto_0
    sget-object p1, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: is doing action"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->updateWhenConfigChange()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ModeSelectView;->refresh(Z)V

    :cond_0
    return-void
.end method

.method public onDragDone(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string/jumbo p1, "value_enter_more_mode_by_pop"

    .line 3
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackEnterMoreMode(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onDragProgress(IZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDisappearDistance()F

    move-result p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    sub-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onDragStart(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onInterceptDrag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onModeSelected(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xfe

    if-ne p1, v0, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->useNewMoreTabStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "value_enter_more_mode_by_tab_new"

    .line 4
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackEnterMoreMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "value_enter_more_mode_by_tab"

    .line 5
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackEnterMoreMode(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->changeModeByNewMode(ILjava/lang/String;IZ)V

    return-void
.end method

.method public onPromptExpand(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onPromptShrink(ZLjava/lang/Runnable;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo p2, "trans_start"

    invoke-direct {p1, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v3, -0x3fa7000000000000L    # -100.0

    .line 4
    invoke-virtual {p1, p2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 5
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v3, "trans_end"

    invoke-direct {p2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 6
    invoke-virtual {p2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 7
    invoke-virtual {p2, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    aput-object v3, v2, v0

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 9
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getPromptAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p1, p2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectLayout:Landroid/widget/FrameLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onRestore()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->needReInit(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [I

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->refresh(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout;->reset()V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1
    :goto_0
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v4, p3}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->needReInit(II)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->switchMoreModeStyle()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->reInitViewBackground()V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa0

    .line 6
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 7
    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xb7

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v0

    invoke-interface {v4, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->getFragmentInto()I

    move-result v5

    if-eq v0, v5, :cond_2

    return-void

    :cond_2
    const/16 v0, 0xa9

    const/4 v5, 0x7

    const/4 v6, -0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_5

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v7, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v7}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    :goto_1
    move v0, v6

    goto :goto_3

    .line 13
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v7, 0xc2

    invoke-virtual {v0, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_8

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p3, v5, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    move v0, v2

    .line 15
    :goto_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    const/16 v8, 0x3a6

    invoke-virtual {v7, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v7, :cond_9

    .line 16
    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    if-ne p3, v5, :cond_9

    move v0, v6

    :cond_9
    if-ne v0, v2, :cond_f

    .line 17
    iget-object p3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p3, p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 18
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p2}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 19
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 21
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 22
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->switchMoreMode(Z)V

    goto/16 :goto_5

    .line 23
    :cond_a
    iget-object p3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    invoke-static {p3}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 24
    iget-object p3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p3}, Lcom/android/camera/ui/DragLayout;->disableAllMode()V

    .line 25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->geItemStringName(IZ)Ljava/lang/String;

    move-result-object p3

    .line 26
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p3, 0x7f12004f

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    .line 31
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v2, :cond_b

    .line 32
    new-instance p3, Lcom/android/camera/animation/type/RotateOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipIcon:Landroid/widget/ImageView;

    invoke-direct {p3, v0}, Lcom/android/camera/animation/type/RotateOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v0, -0x5a

    .line 33
    invoke-virtual {p3, v0, v1}, Lcom/android/camera/animation/type/RotateOnSubscribe;->setRotateDegree(II)Lcom/android/camera/animation/type/RotateOnSubscribe;

    move-result-object p3

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 34
    invoke-virtual {p3, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p3

    const/16 v0, 0x12c

    .line 35
    invoke-virtual {p3, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p3

    .line 36
    invoke-static {p3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {p2}, Lcom/android/camera/ui/CapsuleLayout;->start()V

    goto :goto_4

    .line 38
    :cond_b
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 39
    :goto_4
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_5

    .line 40
    :cond_c
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mExternalModeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p2}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_5
    if-eqz v3, :cond_f

    if-eqz v4, :cond_d

    new-array p2, v1, [I

    .line 42
    invoke-interface {v4, v2, p2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 43
    :cond_d
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 44
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 45
    :cond_e
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    .line 46
    :cond_f
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 47
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->updateWhenConfigChange()V

    :cond_10
    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->updateWhenConfigChange()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa3

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb3

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa01

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resetModeSelectView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    return-void
.end method

.method public resetToCommonMode()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetToCommonMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f12055e

    const/16 v3, 0xa3

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeSelectView;->getCurSelectMode()I

    move-result v0

    .line 4
    iget-object v4, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    .line 5
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->changeModeByNewMode(ILjava/lang/String;I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ModeSelectView;->moveToPosition(I)V

    .line 8
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->changeModeByNewMode(ILjava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setModeLayoutVisibility(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->getTargetModeView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    if-ne v0, p2, :cond_1

    const p2, 0x3f8ccccd    # 1.1f

    .line 5
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 6
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->switchMoreMode(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1}, Lcom/android/camera/ui/DragLayout;->disableAllMode()V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :goto_0
    return-void
.end method

.method public showDragAnimation(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    return v1
.end method

.method public shrink(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/DragLayout;->promptShrink(Z)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/DragLayout;->shrink(Z)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public switchModeOrExternalTipLayout(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchModeOrExternalTipLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->getTargetModeView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->switchMoreMode(Z)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mModeSelectRoot:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1}, Lcom/android/camera/ui/DragLayout;->disableAllMode()V

    .line 10
    :cond_4
    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public switchMoreMode(Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->calDragLayoutHeight(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragChild:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getMaxDragDistance()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    const/16 v1, 0xa0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 5
    iget-object v3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 6
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-direct {p1}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v3, 0x7f0a0317

    iget-object v4, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    .line 13
    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v1, v3, v4, v5}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 15
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v3}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getFragmentInto()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 16
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/DragLayout;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    iget-boolean v3, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mSupportOrientation:Z

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->setSupportOrientation(Z)V

    .line 18
    iget-boolean v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mSupportOrientation:Z

    if-eqz v1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/DragLayout;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    .line 22
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/DragLayout;->setPromptMode(Z)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/DragLayout;->setDragMode(Z)V

    goto :goto_1

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->unRegisterProtocol()V

    .line 27
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 28
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1}, Lcom/android/camera/fragment/mode/FragmentMoreModePopup;->getFragmentInto()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/DragLayout;->removeOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    .line 31
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/DragLayout;->removeOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mDragLayout:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p1}, Lcom/android/camera/ui/DragLayout;->disableAllMode()V

    :goto_1
    if-eq v0, v2, :cond_6

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->mMoreModePopup:Lcom/android/camera/fragment/mode/FragmentMoreModePopup;

    :cond_6
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa3

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb3

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xa01

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
