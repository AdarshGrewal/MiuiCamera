.class public Lcom/android/camera/fragment/FragmentBottomIntentDone;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomIntentDone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff3

.field public static final TAG:Ljava/lang/String; = "FragmentBottomIntentDone"


# instance fields
.field public mApplyView:Landroid/widget/ImageView;

.field public mMainView:Landroid/view/View;

.field public mRetryView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    const v0, 0x7f06009f

    const v1, 0x7f0800e2

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    .line 3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    const v0, 0x7f06009b

    const v1, 0x7f0800e1

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    .line 5
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method private adjustViewResourceTintColor()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    const v2, 0x7f06034f

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setVectorColor(Landroid/widget/ImageView;I)V

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setVectorColor(Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xff3

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d005c

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0a01db

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x7f0a01dc

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    const v1, 0x7f0a0127

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewResourceTintColor()V

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {v4}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    const/16 v5, 0x50

    .line 8
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignBottom()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array v0, v4, [Landroid/view/View;

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v0, v4, [Landroid/view/View;

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    new-array p1, v2, [Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v0, p1, v4

    invoke-virtual {p0, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x30

    .line 17
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 19
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 20
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 21
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v0, v4, [Landroid/view/View;

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v0, v4, [Landroid/view/View;

    .line 24
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    new-array p1, v2, [Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v0, p1, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto :goto_1

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array p1, v2, [Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mRetryView:Landroid/widget/ImageView;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mApplyView:Landroid/widget/ImageView;

    aput-object v0, p1, v4

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    :goto_0
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
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewResourceTintColor()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomIntentDone;->mMainView:Landroid/view/View;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->adjustViewBackground(Landroid/view/View;I)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xa1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    .line 4
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a0127

    const-string v2, "FragmentBottomIntentDone"

    if-eq p1, v1, :cond_2

    const v1, 0x7f0a01dc

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "onClick: intent_done_retry"

    .line 3
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "onClick: done_button"

    .line 6
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    :goto_0
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
        -0x1
        -0x1
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
        -0x1
        -0x1
    .end array-data
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
