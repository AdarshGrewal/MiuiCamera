.class public Lcom/android/camera/fragment/vv/FragmentVV;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVV.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$LiveVVChooser;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/fragment/vv/ResourceSelectedListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

.field public mShotView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 0

    const p2, 0x7f06009e

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private initFragment(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->setPreviewData(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a04a1

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffa

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00bb

    return v0
.end method

.method public hide()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0xfffb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0xfffc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    .line 2
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/vv/FragmentVV;->adjustViewBackground(Landroid/view/View;I)V

    const v0, 0x7f0a04c2

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070802

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0a04c1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVV;->mShotView:Landroid/view/View;

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVV;->mShotView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVV;->initFragment(I)V

    return-void
.end method

.method public isPreviewShow()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVV;->isShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v2, 0xfffc

    .line 3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/FragmentVVPreview;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isShow()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a04c1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVV;->startShot()Z

    :goto_0
    return-void
.end method

.method public onResourceReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVV;->mShotView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onResourceSelected(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/camera/fragment/vv/VVItem;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vvSelected:"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVV;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0xa7
        0xa1
    .end array-data
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0xa2
        0xa8
    .end array-data
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public show(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVV;->initFragment(I)V

    return-void
.end method

.method public startShot()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVV;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa4

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVV;->isPreviewShow()Z

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVV;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v3, v3, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    .line 5
    invoke-static {v3, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVStartClick(Ljava/lang/String;Z)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVV;->mSelectedItem:Lcom/android/camera/fragment/vv/VVItem;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V

    return v4
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe5

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
