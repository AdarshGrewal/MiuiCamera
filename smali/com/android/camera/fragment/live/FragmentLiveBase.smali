.class public abstract Lcom/android/camera/fragment/live/FragmentLiveBase;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentLiveBase.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field public mIsNeedShowWhenExit:Z

.field public mRemoveFragment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mIsNeedShowWhenExit:Z

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mRemoveFragment:Z

    const/16 v1, 0xa1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mIsNeedShowWhenExit:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xaf

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mRemoveFragment:Z

    .line 7
    :cond_1
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_3

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_3
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa0

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    .line 3
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mRemoveFragment:Z

    const/16 v2, 0xa

    new-array v3, v0, [I

    .line 5
    invoke-interface {p1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    const/4 v2, 0x3

    new-array v0, v0, [I

    .line 6
    invoke-interface {p1, v2, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOOo/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOOo/OooO0O0;

    invoke-static {p1, v0}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onAnimationEnd()V

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onBackEvent(I)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
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
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onBackEvent(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onBackEvent(I)Z

    :goto_0
    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
