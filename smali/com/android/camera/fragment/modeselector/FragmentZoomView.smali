.class public Lcom/android/camera/fragment/modeselector/FragmentZoomView;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentZoomView.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ZoomActive;
.implements Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xf6


# instance fields
.field public mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

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

.method private updateView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->getFitCenterWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf6

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00ca

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0458

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ZoomView;

    iput-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/ZoomView;->setZoomValueChangeListener(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->getFitCenterWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->initDrawable(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ZoomView;->init()V

    .line 5
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomView;->setSupportVideoSat(Z)V

    .line 7
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->setOrientation(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->setOrientation(I)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->setCurrentZoomRatio(F)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaa

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->getMinZoomRatio()F

    move-result v1

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->getMaxZoomRatio()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/ZoomView;->updateZoomRatio(FF)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ZoomView;->directShow()V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->updateView()V

    .line 15
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public isZoomAdjustVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoomViewMoving()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->isZoomMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/ui/ZoomView;->reInit()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->updateView()V

    return-void
.end method

.method public onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ZoomView;->onKeyEventSmoothZoom(ILandroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method public onZoomTouchDown()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoAiAudioNewZoom()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->updateSATIsZooming(Z)V

    :cond_1
    return-void
.end method

.method public onZoomTouchUp()V
    .locals 2

    const-string v0, "attr_video_smooth_zoom"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomAdjusted(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->updateSATIsZooming(Z)V

    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xae

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->onDualZoomValueChanged(FI)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSupportRecordingZoom(I)Z

    move-result v2

    const/16 v3, 0xb7

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->setZoomViewVisible(Z)V

    return-void

    .line 4
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->provideEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->provideExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object p1

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
    invoke-direct {p0}, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->updateView()V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ZoomView;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb1

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setGestureDetectorEnable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->setGestureDetectorEnable(Z)V

    return-void
.end method

.method public setZoomViewVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->init()V

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomView;->setSupportVideoSat(Z)V

    .line 5
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->show(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->show(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ZoomView;->setCurrentZoomRatio(F)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView;->hide()V

    :goto_1
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xb1

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateCurrentZoomRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomView;->setCurrentZoomRatio(F)V

    :cond_0
    return-void
.end method

.method public updateZoomRatio(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;->mZoomViewHorizontal:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ZoomView;->updateZoomRatio(FF)V

    :cond_0
    return-void
.end method
