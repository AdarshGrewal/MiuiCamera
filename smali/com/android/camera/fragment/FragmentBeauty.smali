.class public Lcom/android/camera/fragment/FragmentBeauty;
.super Lcom/android/camera/fragment/BasePanelFragment;
.source "FragmentBeauty.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;
.implements Lio/reactivex/functions/Consumer;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/BasePanelFragment;",
        "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
        "Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;",
        "Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfb

.field public static final LOG_TAG:Ljava/lang/String; = "FragmentBeauty"

.field public static final SEEKBAR_PROGRESS_RATIO:I = 0x1


# instance fields
.field public mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field public mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

.field public mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

.field public mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

.field public mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

.field public mCurrentState:I

.field public mFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIsSkinColorShow:Z

.field public mRootView:Landroid/view/View;

.field public mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

.field public mSeekBarMaxProgress:I

.field public mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BasePanelFragment;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/FragmentBeauty;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/FragmentBeauty;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/SeekBarCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    return-object p0
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

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setScreenOrientation(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hideBeautyLayout(II)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isHiddenBeautyPanelOnShutter()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 3
    :cond_1
    iput v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    const/4 v1, 0x2

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v3, :cond_3

    return v2

    :cond_3
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p2, v4, :cond_5

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_5

    if-eq p2, v3, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetFragment()V

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v5, 0xa0

    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v1, :cond_6

    new-array v2, v2, [I

    .line 11
    invoke-interface {v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 12
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    if-eq p2, v3, :cond_7

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->onDismissFinished(I)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xa4

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p2, :cond_7

    .line 15
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onShineDismiss(I)V

    :cond_7
    return v4
.end method

.method private initAdjustSeekBar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBeauty$2;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$1;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0808d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$3;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    return-void
.end method

.method private initShineType()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07012c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 8
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoSquareModule()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 18
    :cond_4
    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 19
    :goto_1
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    if-nez v0, :cond_5

    .line 21
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautySettingManager;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    .line 22
    :cond_5
    iput v6, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    .line 23
    invoke-direct {p0, v6}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    .line 24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    .line 25
    invoke-virtual {v0, v7}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initAdjustSeekBar()V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {p0, v0, v7}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType(Ljava/lang/String;Z)V

    .line 29
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initViewPager()V

    .line 30
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setViewPagerPageByType(Ljava/lang/String;)V

    return-void
.end method

.method private initShineType(Ljava/lang/String;Z)V
    .locals 5

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setCurrentType(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isSkinColorShow()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 34
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideSkinColor(Z)V

    :cond_1
    const/4 p2, -0x1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x38

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x39

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x7

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "11"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0x8

    goto :goto_0

    :pswitch_2
    const-string v1, "10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0x9

    goto :goto_0

    :pswitch_4
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x5

    goto :goto_0

    :pswitch_5
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    :pswitch_6
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x3

    goto :goto_0

    :pswitch_7
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v3

    goto :goto_0

    :pswitch_8
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v0

    goto :goto_0

    :cond_2
    const-string v1, "9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x6

    goto :goto_0

    :cond_3
    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0xa

    :cond_4
    :goto_0
    const-string v1, "key_beauty_click"

    const-string v2, "attr_operate_state"

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_2

    .line 36
    iput-object v4, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    .line 37
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    goto :goto_1

    .line 38
    :pswitch_9
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoBokehColorRetention()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 39
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_1

    .line 40
    :pswitch_a
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_1

    .line 41
    :pswitch_b
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    .line 42
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object v0

    .line 43
    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "attr_click_beauty_bottom_tab"

    .line 45
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v1, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :pswitch_c
    const-string p1, "mi_live_click_kaleidoscope"

    .line 47
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackKaleidoscopeClick(Ljava/lang/String;)V

    .line 48
    iput-object v4, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    .line 49
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    goto :goto_1

    .line 50
    :pswitch_d
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "beauty_v1_bottom_tab"

    .line 51
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v1, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    iput-object v4, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    .line 54
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private initViewPager()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const-string v3, "12"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_2

    :pswitch_2
    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_2

    :pswitch_3
    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :pswitch_4
    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :pswitch_5
    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :pswitch_6
    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :pswitch_7
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :pswitch_8
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :pswitch_9
    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :pswitch_a
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_2

    :pswitch_b
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_2

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unknown beauty type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_c
    new-instance v2, Lcom/android/camera/fragment/beauty/MiNightParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MiNightParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 7
    :pswitch_d
    new-instance v2, Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-direct {v2}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8
    :pswitch_e
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoBokehColorRetention()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10
    :cond_1
    new-instance v2, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11
    :pswitch_f
    new-instance v2, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v2}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 12
    :pswitch_10
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13
    :pswitch_11
    new-instance v2, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14
    :pswitch_12
    new-instance v2, Lcom/android/camera/fragment/beauty/MiLiveParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MiLiveParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 15
    :pswitch_13
    new-instance v2, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 16
    :pswitch_14
    new-instance v2, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :pswitch_15
    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18
    :pswitch_16
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :pswitch_17
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->feedRotation(Ljava/util/List;)V

    .line 21
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    .line 22
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 24
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 25
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 26
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 27
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OooO0oO;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/NoClipChildrenLayout;

    if-eqz v1, :cond_3

    .line 29
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/NoClipChildrenLayout;

    .line 30
    invoke-interface {v0, v4}, Lcom/android/camera/NoClipChildrenLayout;->setNoClip(Z)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private isHiddenBeautyPanelOnShutter()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getDistanceForWM()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->moveWatermarkLayout(II)V

    :cond_0
    return-void
.end method

.method private onDismissFinished(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetFragment()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isHiddenBeautyPanelOnShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetTips()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 9
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private resetFragment()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->recycleFragmentList(Landroidx/fragment/app/FragmentManager;)V

    .line 5
    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    :cond_0
    return-void
.end method

.method private resetTips()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->showZoomTipImage()V

    .line 4
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckSkinColor()V

    :cond_3
    return-void
.end method

.method private setAdjustSeekBarVisible(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method private setSeekBarMode(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_1
    const/16 p1, 0xc8

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f08011b

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    move p2, v0

    move p1, v1

    goto :goto_1

    .line 4
    :cond_2
    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0808d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SeekBarCompat;->setCenterTwoWayMode(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "12"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMin(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/SeekBarCompat;->setSeekBarPinProgress(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p2}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getDisplayNameRes()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getProgressByCurrentItem()I

    move-result p1

    mul-int/2addr p1, v1

    .line 12
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p2, p1, v2}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    return-void
.end method

.method private setViewPagerPageByType(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    .line 9
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setScreenOrientation(I)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {p1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private showOrHideSkinColor(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    new-array v2, v2, [I

    const/16 v4, 0xe6

    aput v4, v2, v0

    .line 3
    invoke-interface {v1, v3, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v2, [I

    const/16 v4, 0xe0

    aput v4, v2, v0

    .line 4
    invoke-interface {v1, v3, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 5
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method

.method private showZoomTipImage()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xad

    if-eq v0, v1, :cond_2

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->oo00oO()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :pswitch_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_5

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo0oo()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-ne v1, v2, :cond_5

    :cond_3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 7
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00o()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o00o0()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 10
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 11
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 12
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private track(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x32

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :pswitch_1
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :pswitch_2
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "key_beauty_click"

    const-string v1, "attr_operate_state"

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "attr_click_bokeh_bottom_tab"

    .line 3
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMiLiveModule()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "mi_live_click_filter"

    .line 6
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "filter_bottom_tab"

    .line 8
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 10
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "attr_click_beauty_bottom_tab"

    .line 11
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setProgressForCurrentItem(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public clearBeauty()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->clearBeauty()V

    :cond_0
    return-void
.end method

.method public dismiss(I)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->dismiss(II)Z

    return-void
.end method

.method public dismiss(II)Z
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    move-result p1

    return p1
.end method

.method public getAnimationType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getDistanceForWM()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x31

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    const/16 v2, 0x61f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f070103

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070132

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 5
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xfb

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0051

    return v0
.end method

.method public getSupportedBeautyItems(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getSupportedTypeArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    const v0, 0x7f0a008d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const v0, 0x7f0a0080

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SeekBarCompat;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1, p1}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType()V

    return-void
.end method

.method public isBeautyPanelShow()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSeekBarVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isBeautyPanelShow()Z

    move-result v0

    return v0
.end method

.method public isSkinColorShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return v0
.end method

.method public needViewClear()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->needViewClear()Z

    move-result v0

    return v0
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/fragment/BaseViewPagerFragment;->notifyThemeChanged(ILjava/util/List;I)V

    :cond_1
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/SeekBarCompat;->clean()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BasePanelFragment;->onDestroyView()V

    return-void
.end method

.method public onMakeupItemSelected(Ljava/lang/String;IZ)V
    .locals 4

    const-string/jumbo v0, "pref_beautify_color_skin_ratio_key"

    .line 1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isSkinColorShow()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideSkinColor(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    if-nez v3, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-interface {v0, p1, p3}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setCurrentType(Ljava/lang/String;Z)V

    .line 6
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p3, p2}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setDisplayNameRes(I)V

    const-string p2, "key_video_bokeh_blur_null"

    .line 7
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    return-void

    :cond_3
    const-string/jumbo p2, "pref_beautify_makeups_none"

    .line 9
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetBeauty()V

    return-void

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p2}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getDefaultProgressByCurrentItem()I

    move-result p2

    mul-int/2addr p2, v2

    .line 13
    invoke-static {p1}, Lcom/android/camera/constant/BeautyConstant;->isSupportTwoWayAdjustable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBeauty;->setSeekBarMode(II)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-direct {p0, v2, p2}, Lcom/android/camera/fragment/FragmentBeauty;->setSeekBarMode(II)V

    .line 16
    :goto_1
    invoke-direct {p0, v2, v2}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/NoClipChildrenLayout;

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/camera/NoClipChildrenLayout;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/camera/NoClipChildrenLayout;->setNoClip(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0xfb

    if-ne v2, v4, :cond_0

    .line 5
    invoke-direct {p0, v1, v3}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getStoredFragment(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    const/16 v0, 0xa

    .line 7
    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->onStateChanged()V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
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
    iget p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x7

    if-ne p3, p2, :cond_2

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa9

    if-ne p1, p2, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->onBackEvent(I)Z

    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 3
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
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    instance-of v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideOrientationChanged(ILjava/util/List;I)V

    :cond_1
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
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
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    instance-of v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xc2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb4

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method

.method public resetBeauty()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->resetBeauty()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance4Filter(Landroid/view/View;)V

    return-void
.end method

.method public switchType(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->track(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->setViewPagerPageByType(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xc2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb4

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method
