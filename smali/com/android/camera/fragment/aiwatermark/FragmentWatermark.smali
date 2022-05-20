.class public Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;
.super Lcom/android/camera/fragment/BasePanelFragment;
.source "FragmentWatermark.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final FRAGMENT_INFO:I = 0xffffe

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mComponentAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

.field public mCurrentState:I

.field public mIsGoDetailsSettings:Z

.field public mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

.field public mOutInterpolator:Lmiuix/view/animation/CubicEaseOutInterpolator;

.field public mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

.field public mRootView:Landroid/view/View;

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field public mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BasePanelFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mCurrentState:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mRootView:Landroid/view/View;

    .line 4
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 5
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mOutInterpolator:Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 6
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic OooO0O0()V
    .locals 0

    return-void
.end method

.method public static synthetic OooO0OO()V
    .locals 0

    return-void
.end method

.method private checkAIWatermark()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->resetFragment()V

    :cond_0
    return-void
.end method

.method private feedRotation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initViewPager()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mComponentAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lcom/android/camera/fragment/aiwatermark/FragmentSuperMoonTextWatermark;

    invoke-direct {v2}, Lcom/android/camera/fragment/aiwatermark/FragmentSuperMoonTextWatermark;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Lcom/android/camera/fragment/aiwatermark/FragmentSuperMoonSilhouetteWatermark;

    invoke-direct {v2}, Lcom/android/camera/fragment/aiwatermark/FragmentSuperMoonSilhouetteWatermark;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    new-instance v2, Lcom/android/camera/fragment/aiwatermark/FragmentCityWatermark;

    invoke-direct {v2}, Lcom/android/camera/fragment/aiwatermark/FragmentCityWatermark;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    new-instance v2, Lcom/android/camera/fragment/aiwatermark/FragmentASDWatermark;

    invoke-direct {v2}, Lcom/android/camera/fragment/aiwatermark/FragmentASDWatermark;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_4
    new-instance v2, Lcom/android/camera/fragment/aiwatermark/FragmentFestivalWatermark;

    invoke-direct {v2}, Lcom/android/camera/fragment/aiwatermark/FragmentFestivalWatermark;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_5
    new-instance v2, Lcom/android/camera/fragment/aiwatermark/FragmentSpotsWatermark;

    invoke-direct {v2}, Lcom/android/camera/fragment/aiwatermark/FragmentSpotsWatermark;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_6
    new-instance v2, Lcom/android/camera/fragment/aiwatermark/FragmentGenWatermark;

    invoke-direct {v2}, Lcom/android/camera/fragment/aiwatermark/FragmentGenWatermark;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->feedRotation(Ljava/util/List;)V

    .line 13
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0o/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0o/OooO0OO;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initWatermarkType()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mComponentAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mCurrentState:I

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->moveAIWatermark(I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->initViewPager()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mComponentAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentType()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->initWatermarkType(Ljava/lang/String;Z)V

    .line 7
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->setViewPagerPageByType(Ljava/lang/String;)V

    return-void
.end method

.method private initWatermarkType(Ljava/lang/String;Z)V
    .locals 0

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mComponentAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setCurrentType(Ljava/lang/String;)V

    return-void
.end method

.method private moveAIWatermark(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needMoveUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->getDistanceForWM()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->moveWatermarkLayout(II)V

    :cond_0
    return-void
.end method

.method private onDismissFinished()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->resetTips()V

    :cond_0
    return-void
.end method

.method private resetFragment()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->recycleFragmentList(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    :cond_0
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mCurrentState:I

    return-void
.end method

.method private resetTips()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_0
    return-void
.end method

.method private restoreCameraActionMenu(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreCameraActionMenu callingFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_0
    return-void
.end method

.method private setViewPagerPageByType(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mComponentAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getItems()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    .line 5
    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setViewPagerSelect(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mComponentAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getItems()Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->onDismissFinished()V

    return-void
.end method

.method public dismiss(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0xbc

    const/16 v2, 0xaf

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->restoreCameraActionMenu(I)V

    .line 4
    sget-object p1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0o/OooO0O0;

    invoke-static {v0, p1}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->resetFragment()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mRootView:Landroid/view/View;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0o/OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0o/OooO00o;-><init>(Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;)V

    invoke-static {p1, v0}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->restoreCameraActionMenu(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    .line 10
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v1, :cond_4

    const-string p1, "ai_watermark_list_hide"

    .line 11
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkClick(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->resetFragment()V

    const/4 p1, 0x4

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->restoreCameraActionMenu(I)V

    .line 15
    sget-object p1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0o/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo0o/OooO0Oo;

    invoke-static {v0, p1}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 16
    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p1, :cond_5

    .line 18
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    .line 19
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->moveAIWatermark(I)V

    .line 20
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v1, :cond_6

    .line 21
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xb6

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p1, :cond_6

    .line 22
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_6
    return v4

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAnimationType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDistanceForWM()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070836

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xffffe

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d004c

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mRootView:Landroid/view/View;

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a04d7

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->initWatermarkType()V

    return-void
.end method

.method public isShowing()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWatermarkPanelShow()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->notifyThemeChanged(ILjava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    instance-of v2, v1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/fragment/BaseViewPagerFragment;->notifyThemeChanged(ILjava/util/List;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->dismiss(II)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 2
    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onRequestPermissionsResult: is location granted = true"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 5
    invoke-interface {p1, p2}, Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;->onPermissionResult(Z)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/camera/permission/PermissionManager;->shouldShowRequestPermissionRationale(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onRequestPermissionsResult: is location denied"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;->toshowPermissionNotAskDialog()V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->reShowWaterMarkPopupTip()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mIsGoDetailsSettings:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;->onPermissionResult(Z)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mIsGoDetailsSettings:Z

    :cond_1
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
    iget p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mCurrentState:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->onBackEvent(I)Z

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
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
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
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    instance-of v2, v1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reShowWaterMarkPopupTip()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mRootView:Landroid/view/View;

    const v2, 0x7f0a04db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xfd

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public requestLocationPermission(Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mListener:Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/permission/PermissionManager;->requestCameraLocationPermissionsByFragment(Landroidx/fragment/app/Fragment;Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)Z

    move-result p1

    return p1
.end method

.method public setGoDetailsSettings(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mIsGoDetailsSettings:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->initWatermarkType()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public startDottedLineAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mOutInterpolator:Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark$1;-><init>(Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
        0x0
    .end array-data
.end method

.method public switchType(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->mComponentAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->initWatermarkType(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;->setViewPagerPageByType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xfd

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
