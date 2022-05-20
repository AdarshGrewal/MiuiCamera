.class public Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFullScreen.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff6

.field public static final TAG:Ljava/lang/String; = "FullScreen"


# instance fields
.field public mBlinkAnimation:Landroid/view/animation/Animation;

.field public mCupPositionHint:Landroid/view/View;

.field public mCupPositionHintShown:Z

.field public mCupPositionHintStub:Landroid/view/ViewStub;

.field public mScreenLightIndicator:Landroid/view/View;

.field public mScreenLightRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    return-object p0
.end method

.method private hideCupPositionHint()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHintShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHintShown:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHint:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHint:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showCupPositionHint()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHintShown:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHintStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHintShown:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHint:Landroid/view/View;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHint:Landroid/view/View;

    .line 5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x5dc

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHint:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 13
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHint:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBlinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xff6

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0080

    return v0
.end method

.method public hideScreenLight()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FullScreen"

    const-string v2, "hideScreenLight"

    .line 2
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0370

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    const v0, 0x7f0a036f

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    const v0, 0x7f0a01a5

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCupPositionHintStub:Landroid/view/ViewStub;

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideScreenLight()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCupPositionHint()V

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

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCupCameraPositionHintOn()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isDualVideoModuleWithFrontCamera(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCupPositionHint()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showCupPositionHint()V

    :cond_2
    :goto_1
    return-void
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
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    .line 3
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p2, 0x0

    .line 4
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc4

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setScreenLightColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p1, "FullScreen"

    const-string/jumbo v0, "setScreenLightColor: get NP"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public showScreenLight()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    const-string v2, "FullScreen"

    if-nez v0, :cond_1

    const-string/jumbo v0, "showScreenLight, fragment is not resumed"

    .line 3
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string/jumbo v0, "showScreenLight"

    .line 4
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo0o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->showCoveredBlackView()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    new-instance v2, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$1;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    const/4 v0, 0x1

    return v0
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc4

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
