.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.implements Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;
.implements Lcom/android/camera/ui/DragLayout$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;
    }
.end annotation


# static fields
.field public static final DISPLAY_FOLD_TIP_TIMEOUT:J = 0x2710L

.field public static final FRAGMENT_INFO:I = 0xf1

.field public static final MSG_DISPLAY_TIP_TIMEOUT:I = 0x2

.field public static final MSG_SHOW_PROGRESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FragmentBottomAction"


# instance fields
.field public mBackEnable:Z

.field public mBottomActionView:Landroid/widget/FrameLayout;

.field public mBottomAnimator:Landroid/animation/ValueAnimator;

.field public mBottomParentHorizontal:Landroid/view/ViewGroup;

.field public mBottomParentVertical:Landroid/view/ViewGroup;

.field public mCaptureProgressDelay:I

.field public mCurrentBottomParent:Landroid/view/ViewGroup;

.field public mCustomDialog:Landroid/view/View;

.field public mDocumentContainer:Landroid/view/View;

.field public mHandler:Landroid/os/Handler;

.field public mInLoading:Z

.field public mIsIntentAction:Z

.field public mIsReEnterFragment:Z

.field public mIsVideoCast:Z

.field public mLastPauseTime:J

.field public mLongPressBurst:Z

.field public mMimojiBack:Landroid/widget/ImageView;

.field public mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

.field public mPostProcess:Landroid/widget/ProgressBar;

.field public mRecordProgressDelay:I

.field public mRecordSaveButton:Landroid/widget/ImageView;

.field public mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

.field public mReverseDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mRotateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mShutterButton:Lcom/android/camera/ui/CameraSnapView;

.field public mSupportOrientation:Z

.field public mThumbnailImage:Landroid/widget/ImageView;

.field public mThumbnailImageLayout:Landroid/view/ViewGroup;

.field public mThumbnailProgress:Landroid/widget/ProgressBar;

.field public mThumbnailUseAsExit:Z

.field public mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

.field public mVideoCaptureEnable:Z

.field public mVideoPauseSupported:Z

.field public mVideoPostPreview:Z

.field public mVideoRecordingStarted:Z

.field public mVideoReverseEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$1;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/AdjustAnimationView;->startBackgroundAnimator()V

    const/4 p0, 0x4

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/ui/AnimationView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnimationUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentBottomAction"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/AnimationView;->setProgress(F)V

    return-void
.end method

.method public static synthetic OooO0OO()V
    .locals 2

    const-string v0, "FragmentBottomAction"

    const-string/jumbo v1, "showReverseConfirmDialog onClick negative"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ILjava/util/List;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->assertThumbnailViewRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initAnimation(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/ui/CameraSnapView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/android/camera/fragment/bottom/action/Pickers;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    return p0
.end method

.method private assertThumbnailViewRect()Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getViewRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_1

    .line 4
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbnailGlobalRect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentBottomAction"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater;->setViewRect(Landroid/graphics/Rect;)V

    :cond_1
    return-object v1
.end method

.method private checkFeatureState()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    .line 4
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateResourceState(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 8
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0o0;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method

.method private findViewByOrientation(Landroid/view/View;Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const v2, 0x7f0a045a

    .line 1
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0a045c

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentVertical:Landroid/view/ViewGroup;

    .line 9
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomParentHorizontal:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 17
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a046b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0a0469

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$2;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$2;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0465

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0463

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0399

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CameraSnapView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    .line 24
    new-instance p1, Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const v2, 0x7f0a045f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const v3, 0x7f0a045d

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p1, p2, v0, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0461

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0467

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0277

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    .line 29
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    .line 31
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const v0, 0x7f0a046c

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    aput-object p2, v2, v1

    .line 32
    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array p2, v0, [Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    goto/16 :goto_1

    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateShutterButtonLocation()V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a046d

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a046a

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$3;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0466

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    .line 39
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0464

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    .line 40
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a039a

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CameraSnapView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    .line 41
    new-instance p1, Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0460

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const v2, 0x7f0a045e

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/camera/fragment/bottom/action/Pickers;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0462

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    .line 44
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0468

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    .line 45
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const p2, 0x7f0a0278

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    :cond_3
    :goto_1
    return-void
.end method

.method private hideCustomDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private hideExtra()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_0
    return-void
.end method

.method private ignoreOnClickInCustomDialog()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private initAnimation(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3
    invoke-static {p2}, Lcom/android/camera/Util;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/camera/ui/AnimationView;->setUp(Landroid/graphics/RectF;)V

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {p3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v1, v3

    .line 9
    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result v8

    .line 10
    invoke-virtual {p2}, Landroid/widget/ImageView;->getY()F

    move-result v9

    .line 11
    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 12
    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 13
    iget v6, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 14
    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v5

    add-float/2addr v7, v10

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showDocumentReviewViews: startViewBounds = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endViewBounds = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", scale = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", startCenter = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", endCenter = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentBottomAction"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sub-float/2addr v6, v3

    .line 17
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sub-float/2addr v7, v4

    .line 18
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/android/camera/Util;->getExitDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/android/camera/Util;->getSuspendDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0o;

    invoke-direct {v1, p2}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0o;-><init>(Lcom/android/camera/ui/AnimationView;)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oo;

    invoke-direct {v1, p1, p3}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oo;-><init>(Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v9}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0oO;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private initThumbLayout(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->shouldUseThumbnailAsExit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbnailAsThumbnail(ZZ)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbnailAsExit()V

    :goto_0
    return-void
.end method

.method private initThumbnailAsExit()V
    .locals 2

    const-string v0, "FragmentBottomAction"

    const-string v1, "initThumbnailAsExit: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setExitViewResource(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v1, 0x7f12007c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailUseAsExit:Z

    return-void
.end method

.method private initThumbnailAsThumbnail(ZZ)V
    .locals 3

    const-string v0, "FragmentBottomAction"

    const-string v1, "initThumbnailAsThumbnail: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailUseAsExit:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v1, 0x7f1200ab

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isJumpBack()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    return-void

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkStoragePermissions()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_4
    return-void
.end method

.method private isFeatureEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShowMimoji()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThumbLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    return v0
.end method

.method private needShowZoomView(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSupportRecordingZoom(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onInstallStateChanged(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateResourceState(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateResourceState(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private reInitViewBackground(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f06034f

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v5, 0x2

    aput-object v1, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    new-array v0, v4, [Landroid/view/View;

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentType()I

    move-result p1

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private refreshPickers(I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/16 v1, 0xa7

    const/16 v2, 0xc2

    const/16 v3, 0xc3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v1, :cond_5

    const/16 v1, 0xad

    const/16 v6, 0xd6

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_5

    const/16 v1, 0xb8

    if-eq p1, v1, :cond_5

    if-eq p1, v6, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0O()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v6, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_1

    .line 3
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00OOO()Z

    move-result p1

    if-nez p1, :cond_4

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00Oo()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0xc0

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v2, 0xc1

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1, v4, v5, v2, v5}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZIZ)V

    goto :goto_2

    .line 6
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result p1

    if-nez p1, :cond_7

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v3

    .line 9
    :cond_6
    invoke-virtual {p1, v4, v1, v2, v5}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZIZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method private resetSmoothZoom()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;->setZoomViewVisible(Z)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$KeyEvent;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$KeyEvent;->resetZoomKeyEvent()V

    :cond_1
    return-void
.end method

.method private setExitViewResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v0, 0x7f0803da

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v0, 0x7f0803d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v1, 0x7f06034f

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/customization/ThemeResource;->setVectorColor(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private setPausePlaySwitchTarget(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v2, 0x7f11004c

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    const v2, 0x7f11004e

    :goto_0
    invoke-virtual {p1, v2, v1}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private setProgressBarVisible(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x12c

    const/4 v2, 0x2

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 3
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0808c6

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->isBottomVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->isRoundCurrentVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0808c5

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0808c8

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 10
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-array p1, v2, [F

    .line 13
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xa0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 16
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$7;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->isRoundBaseVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_5
    new-array p1, v2, [F

    .line 21
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    new-instance v0, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$8;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$8;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$9;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setShutterButtonClickEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldUseThumbnailAsExit()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private showNormalMimojiBottom()V
    .locals 4

    const-string v0, "FragmentBottomAction"

    const-string v1, "mimojid showNormalMimojiBottom"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0xb8

    invoke-static {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraSnapView;->onForceVideoStateChange(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v1, 0xc0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc3

    goto :goto_0

    :cond_1
    const/16 v0, 0xc2

    .line 8
    :goto_0
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    :goto_1
    const/4 v0, 0x1

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    const/4 v0, -0x1

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    :cond_2
    return-void
.end method

.method private showReverseConfirmDialog()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v0, 0x7f120484

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120483

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$10;

    invoke-direct {v5, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$10;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v0, 0x7f1208f5

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0Oo;

    .line 5
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 6
    new-instance v1, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$11;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$11;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showReverseConfirmDialogForDisplayFat()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120484

    const v4, 0x7f120483

    new-instance v5, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO00o;

    invoke-direct {v5, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO00o;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    const v6, 0x7f1208f5

    new-instance v7, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0OO;

    invoke-direct {v7, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0OO;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    invoke-static/range {v1 .. v7}, Lcom/android/camera/RotateDialogController;->createCustomView(Landroid/view/ViewGroup;Landroid/content/Context;IILjava/lang/Runnable;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCustomDialog:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private switchVideoCapture(Landroid/view/View;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOO0O()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x4

    const v3, 0x7f12055e

    const v4, 0x7f120576

    const/16 v5, 0xd6

    const/16 v6, 0xb4

    const/16 v7, 0xad

    const/16 v8, 0xa7

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v1, v8, :cond_5

    const/4 v12, 0x5

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_0

    move v3, v9

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v7}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v12}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v11}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v10}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_1

    .line 10
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(Landroid/view/View;)Z

    const/16 v0, 0xc2

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_2

    move v3, v4

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v10}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v10}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v11}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v11}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v10}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v12}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v11}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v10}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_0

    .line 29
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v6}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v11}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v10}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :goto_0
    move v3, v4

    .line 35
    :goto_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v6, :cond_6

    .line 36
    invoke-static {v11}, Lcom/android/camera/CameraSettings;->setIsFromProVideoMudule(Z)V

    goto :goto_2

    :cond_6
    if-ne p1, v8, :cond_7

    .line 37
    invoke-static {v9}, Lcom/android/camera/CameraSettings;->setIsFromProVideoMudule(Z)V

    goto :goto_2

    :cond_7
    if-ne p1, v5, :cond_8

    .line 38
    invoke-static {v11}, Lcom/android/camera/CameraSettings;->setFromSuperNightVideoMudule(Z)V

    goto :goto_2

    :cond_8
    if-ne p1, v7, :cond_9

    .line 39
    invoke-static {v9}, Lcom/android/camera/CameraSettings;->setFromSuperNightVideoMudule(Z)V

    .line 40
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->playSwitchCaptureVideoAnimation()V

    .line 41
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v3, :cond_a

    .line 42
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f12008c

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method private updateBottomInRecording(ZZ)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->cancelCurrentAnimation()V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v2

    .line 9
    :cond_2
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xd0

    const/16 v4, 0xcf

    const/4 v5, 0x0

    if-eq v2, v3, :cond_4

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    .line 10
    :goto_1
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xa1

    const/16 v7, 0xb7

    if-eq v3, v6, :cond_10

    const/16 v6, 0xa2

    if-eq v3, v6, :cond_c

    const/16 v6, 0xa9

    if-eq v3, v6, :cond_b

    const/16 v6, 0xac

    if-eq v3, v6, :cond_b

    const/16 v6, 0xcc

    if-eq v3, v6, :cond_c

    if-eq v3, v4, :cond_c

    const/16 v4, 0xb3

    if-eq v3, v4, :cond_a

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_c

    if-eq v3, v7, :cond_8

    const/16 v4, 0xb8

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd6

    if-eq v3, v4, :cond_b

    const/16 v4, 0xd7

    if-eq v3, v4, :cond_5

    .line 11
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 12
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 13
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 14
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto/16 :goto_5

    .line 15
    :cond_5
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 17
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 18
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto/16 :goto_5

    .line 19
    :cond_6
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 20
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 21
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 22
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v3

    const-class v4, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v3, v4}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 23
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto/16 :goto_5

    .line 24
    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto/16 :goto_5

    .line 25
    :cond_8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooO0O()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 26
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto :goto_2

    .line 27
    :cond_9
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 28
    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 30
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto/16 :goto_5

    .line 31
    :cond_a
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 34
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto :goto_5

    .line 35
    :cond_b
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 36
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 37
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 38
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto :goto_5

    .line 39
    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v3

    if-nez v3, :cond_e

    .line 40
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 41
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v3

    if-nez v3, :cond_d

    .line 42
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v3

    if-nez v3, :cond_d

    .line 43
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v3

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_3

    :cond_d
    move v3, v5

    :goto_3
    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 44
    :cond_e
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000oo()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_4

    :cond_f
    move v3, v5

    :goto_4
    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 45
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 46
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    goto :goto_5

    .line 47
    :cond_10
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 48
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    .line 49
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    .line 50
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooO0O()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 51
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto :goto_5

    .line 52
    :cond_11
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    :goto_5
    const/4 v3, 0x4

    const/16 v4, 0xa0

    const/4 v6, 0x0

    if-eqz p1, :cond_17

    .line 53
    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v8}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->needShowZoomView(I)Z

    move-result v8

    if-nez v8, :cond_12

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v8, v7, :cond_13

    .line 54
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v7

    invoke-virtual {v7}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0o0()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 55
    :cond_12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    .line 56
    invoke-virtual {v7, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v4, :cond_13

    new-array v7, v5, [I

    .line 57
    invoke-interface {v4, v3, v7}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 58
    :cond_13
    iget-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    const/16 v4, 0xc0

    if-eqz v3, :cond_15

    .line 59
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v3}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 60
    iget-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v3, :cond_14

    .line 61
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1, v6, v5, v4}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_6

    .line 62
    :cond_14
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v4, 0xc6

    invoke-virtual {v3, v6, v1, v4}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_6

    .line 63
    :cond_15
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v3, v6, v1, v4}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    .line 64
    :goto_6
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v1, :cond_19

    .line 65
    invoke-direct {p0, v5}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setPausePlaySwitchTarget(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 67
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v1, :cond_16

    .line 68
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 69
    :cond_16
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_7

    .line 71
    :cond_17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_18

    const/4 v4, 0x3

    .line 73
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v4

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v4

    const/16 v7, 0xf6

    if-ne v4, v7, :cond_18

    new-array v4, v5, [I

    .line 74
    invoke-interface {v0, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 75
    :cond_18
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getModulePersistentType()I

    move-result v3

    invoke-virtual {v0, v6, v1, v3}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    :cond_19
    :goto_7
    if-nez v2, :cond_1a

    .line 76
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    if-eqz v0, :cond_1a

    xor-int/lit8 v1, p1, 0x1

    .line 77
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 78
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 79
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1b
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 80
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1c

    const-wide/16 v3, 0xc8

    goto :goto_8

    :cond_1c
    const-wide/16 v3, 0x0

    .line 81
    :goto_8
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ZZ)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$13;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ZZ)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateShutterButtonLocation()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    .line 10
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_1
    return-void
.end method

.method private updateWhenConfigChange(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateShutterButtonLocation()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->clone()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    .line 5
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setScreenOrientation(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->reInitViewBackground(Z)V

    .line 7
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 9
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->shouldEnableSpeechShutter(I)Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingSpeechShutter(ZZ)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->removeLastSegment()V

    const-string v0, "FragmentBottomAction"

    const-string/jumbo v1, "showReverseConfirmDialog onClick positive"

    .line 17
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/module/MiLiveModule;

    if-nez v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ILiveModule;

    .line 21
    invoke-interface {v0}, Lcom/android/camera/module/ILiveModule;->doReverse()V

    .line 22
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideCustomDialog()V

    return-void

    :cond_1
    :goto_0
    const-string/jumbo v1, "showReverseConfirmDialog skip!!!"

    .line 23
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onInstallStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/ui/AdjustAnimationView;Lcom/android/camera/ui/AnimationView;Landroid/view/View;FF)V
    .locals 1

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/ui/AnimationView;->clear()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 11
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setX(F)V

    .line 12
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setY(F)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/bottom/action/Pickers;->setClickabled(Z)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    const-string v0, "FragmentBottomAction"

    const-string/jumbo v1, "showReverseConfirmDialog onClick negative"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideCustomDialog()V

    return-void
.end method

.method public adjustViewBackground()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->reInitViewBackground(Z)V

    :cond_0
    return-void
.end method

.method public announceForAccessibility(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0O0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooo/OooO00o/OooO0O0;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public canSnap()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isFeatureEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isBlockSnap()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public catchDrag(II)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public changeCamera(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooOO0O()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa4

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v5, :cond_2

    .line 5
    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v7, 0xa3

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v6, v3, [I

    const/16 v7, 0xd1

    aput v7, v6, v2

    .line 6
    invoke-interface {v5, v6}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->switchOffElementsSilent([I)V

    .line 7
    :cond_1
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->hideLighting()V

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    .line 9
    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    const-wide/16 v5, 0x12c

    if-ne v4, v3, :cond_3

    .line 10
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, -0x3ccc0000    # -180.0f

    .line 11
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x43340000    # 180.0f

    .line 15
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 18
    :goto_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string/jumbo v6, "switch camera from %d to %d, for module 0x%x"

    .line 20
    invoke-static {p1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "FragmentBottomAction"

    invoke-static {v5, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v3

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    .line 23
    invoke-static {p1, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0, v5, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    if-ne v4, v3, :cond_5

    move v2, v3

    .line 24
    :cond_5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, v2, v1}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackSwitchCameraStart(ZZI)V

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xac

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 26
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu(I)V

    .line 27
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f120034

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 29
    :cond_6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa2

    const/4 v2, 0x5

    if-eq p1, v1, :cond_c

    const/16 v1, 0xb0

    const/16 v4, 0xa6

    if-eq p1, v4, :cond_b

    const/16 v5, 0xa9

    if-eq p1, v5, :cond_a

    if-eq p1, v1, :cond_9

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_8

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_7

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 31
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 33
    invoke-virtual {p1, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 34
    invoke-virtual {p1, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_3

    .line 36
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_3

    .line 42
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_3

    .line 47
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_3

    .line 53
    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v5}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_3

    .line 59
    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_3

    .line 65
    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v7}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    :goto_3
    return-void
.end method

.method public enableStopButton(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/CameraSnapView;->setStopButtonEnable(ZZ)V

    return-void
.end method

.method public forceSwitchFront()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera(Landroid/view/View;)V

    return v1
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xf1

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0057

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSupportOrientation:Z

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->findViewByOrientation(Landroid/view/View;Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    .line 6
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCaptureProgressDelay:I

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordProgressDelay:I

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsReEnterFragment:Z

    if-eqz p1, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsReEnterFragment:Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->adjustViewBackground()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0xb8

    if-eqz p1, :cond_2

    .line 7
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v2, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimojiBottom()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "FragmentBottomAction"

    const-string v3, "notifyAfterFrameAvailable: shutter process bar is showing"

    .line 11
    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingFinish()V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setIsFPS960(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 14
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-nez p1, :cond_4

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    :cond_4
    const/4 p1, 0x4

    new-array p1, p1, [Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v0, p1, v3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    .line 17
    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v1

    aput-object v1, p1, v0

    .line 18
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->checkFeatureState()V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbLayout(Z)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa3

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    .line 9
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    .line 10
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 11
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xb7

    if-eq p1, p2, :cond_2

    const/16 p2, 0xd7

    if-ne p1, p2, :cond_3

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const p2, 0x7f1200b3

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xa2

    const v0, 0x7f1200b4

    const v1, 0x7f1200b0

    if-eq p1, p2, :cond_6

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->shouldUseThumbnailAsExit()Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 19
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->shouldUseThumbnailAsExit()Z

    move-result p1

    if-nez p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 22
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xd1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateWhenConfigChange(Z)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->refreshPickers(I)V

    .line 3
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbLayout(Z)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideCustomDialog()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v1

    const-string v2, "FragmentBottomAction"

    if-nez v1, :cond_0

    const-string/jumbo p1, "onClick: disabled"

    .line 2
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xa1

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa01

    .line 6
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xb3

    .line 8
    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-nez v1, :cond_1

    const-string/jumbo p1, "onClick: null action"

    .line 9
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v6

    .line 11
    invoke-interface {v6}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-nez v7, :cond_3

    .line 12
    invoke-interface {v6}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/IModuleState;->isShot2GalleryOrEnableParallel()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0a046b

    if-eq v7, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0a046d

    if-eq v7, v8, :cond_3

    :cond_2
    const-string/jumbo p1, "onClick: ignore click event, because module isn\'t ready"

    .line 13
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->ignoreOnClickInCustomDialog()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo p1, "onSnapClick: ignore onSnapClick event, because customDialog is Visible"

    .line 15
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, 0x1

    const-string v9, "create"

    const/4 v10, 0x0

    const/4 v11, 0x0

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string/jumbo p1, "onClick: v9_thumbnail_layout"

    .line 17
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "onClick: ignore thumbnail click event as loading thumbnail"

    .line 19
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v4, :cond_6

    .line 20
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-interface {v4, v11}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->shrink(Z)Z

    .line 22
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->shouldUseThumbnailAsExit()Z

    move-result p1

    if-nez p1, :cond_7

    const-string/jumbo p1, "onClick: v9_thumbnail_layout, onThumbnailClicked"

    .line 23
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->assertThumbnailViewRect()Landroid/graphics/Rect;

    .line 25
    invoke-interface {v1, v10}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    const-string/jumbo p1, "onClick: v9_thumbnail_layout, onReviewCancelClicked"

    .line 26
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    .line 28
    :goto_0
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    const-string/jumbo v0, "shot_thumbnail_gap"

    invoke-virtual {p1, v0}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    goto/16 :goto_5

    :sswitch_1
    const-string/jumbo p1, "onClick: v9_recording_pause"

    .line 29
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->pauseRecording()V

    goto/16 :goto_5

    .line 31
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xcc

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 32
    :pswitch_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 33
    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/16 v0, 0xa6

    .line 34
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_5

    :pswitch_2
    const-string/jumbo p1, "onClick: v9_recording_reverse"

    .line 35
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoReverseEnable:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_a

    goto :goto_1

    .line 37
    :cond_a
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->hasSegments()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 38
    :cond_b
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 39
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showReverseConfirmDialogForDisplayFat()V

    goto/16 :goto_5

    .line 40
    :cond_c
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showReverseConfirmDialog()V

    goto/16 :goto_5

    :cond_d
    :goto_1
    return-void

    :pswitch_3
    const-string/jumbo p1, "onClick: v9_recording_snap"

    .line 41
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p1, :cond_e

    goto :goto_3

    .line 43
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v0, p1, Lcom/android/camera/module/VideoModule;

    if-nez v0, :cond_f

    instance-of v1, p1, Lcom/android/camera/module/FunModule;

    if-nez v1, :cond_f

    instance-of v1, p1, Lcom/android/camera/module/MiLiveModule;

    if-nez v1, :cond_f

    instance-of v1, p1, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    if-eqz v0, :cond_10

    .line 45
    check-cast p1, Lcom/android/camera/module/VideoModule;

    .line 46
    invoke-virtual {p1, v8}, Lcom/android/camera/module/VideoModule;->takeVideoSnapShoot(Z)Z

    goto/16 :goto_5

    .line 47
    :cond_10
    instance-of v0, p1, Lcom/android/camera/module/FunModule;

    if-eqz v0, :cond_11

    .line 48
    check-cast p1, Lcom/android/camera/module/FunModule;

    .line 49
    invoke-virtual {p1}, Lcom/android/camera/module/FunModule;->takePreviewSnapShoot()V

    goto/16 :goto_5

    .line 50
    :cond_11
    instance-of v0, p1, Lcom/android/camera/module/MiLiveModule;

    if-eqz v0, :cond_12

    .line 51
    check-cast p1, Lcom/android/camera/module/MiLiveModule;

    .line 52
    invoke-virtual {p1}, Lcom/android/camera/module/MiLiveModule;->takePreviewSnapShoot()V

    goto/16 :goto_5

    .line 53
    :cond_12
    instance-of v0, p1, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    if-eqz v0, :cond_2a

    .line 54
    check-cast p1, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    .line 55
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->takeVideoSnapShot()V

    goto/16 :goto_5

    :cond_13
    :goto_2
    const-string/jumbo p1, "onClick: recording snap is not allowed!!!"

    .line 56
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_3
    return-void

    :pswitch_4
    const-string/jumbo v0, "onClick: up down switch"

    .line 57
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 59
    :cond_15
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v6}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    if-eq v0, v7, :cond_16

    .line 60
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-nez v0, :cond_16

    return-void

    .line 61
    :cond_16
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 62
    :cond_17
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideExtra()V

    .line 63
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(Landroid/view/View;)Z

    .line 64
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->playUpDownAnimation()V

    goto/16 :goto_5

    :pswitch_5
    const-string/jumbo v4, "onClick: v9_capture_recording_switch"

    .line 65
    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v1, :cond_18

    goto :goto_4

    .line 67
    :cond_18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    if-eqz v3, :cond_1a

    .line 68
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isTopExpendAnimRuning()Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    .line 69
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->switchVideoCapture(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_1b
    :goto_4
    return-void

    :pswitch_6
    const-string/jumbo v5, "onClick: v9_camera_picker"

    .line 70
    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_1c

    return-void

    .line 72
    :cond_1c
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v6}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    if-eq v2, v7, :cond_1d

    .line 73
    iget-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-nez v2, :cond_1d

    return-void

    .line 74
    :cond_1d
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->isThumbLoading()Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    if-eqz v3, :cond_1f

    .line 75
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isTopExpendAnimRuning()Z

    move-result v2

    if-eqz v2, :cond_1f

    return-void

    :cond_1f
    if-eqz v4, :cond_20

    .line 76
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 77
    invoke-interface {v4, v11}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->shrink(Z)Z

    .line 78
    :cond_20
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    .line 79
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    if-eqz v2, :cond_21

    .line 80
    invoke-virtual {v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAiTips()V

    .line 81
    invoke-virtual {v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    .line 82
    :cond_21
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideExtra()V

    .line 83
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "mimoji_click_create_switch"

    .line 84
    invoke-static {v0, v9}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_22
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    .line 86
    :cond_23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/DisplayGuideImp;

    if-eqz v0, :cond_25

    .line 87
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->isSupportUltraPixelSelf(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 88
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_24

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->ultraPixelSelf(I)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 89
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_24
    return-void

    .line 91
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera(Landroid/view/View;)V

    goto :goto_5

    :sswitch_3
    const-string/jumbo p1, "onClick: mimoji_create_back"

    .line 92
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_26

    return-void

    :cond_26
    const/4 p1, -0x1

    .line 94
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v10, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 95
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xed

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    if-eqz p1, :cond_27

    .line 97
    invoke-interface {p1, v8, v11}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onModeStateBack(IZ)V

    :cond_27
    const-string p1, "mimoji_click_create_back"

    .line 98
    invoke-static {p1, v9}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_4
    const-string/jumbo p1, "onClick: bottom_external_mode_layout"

    .line 99
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_28

    return-void

    .line 101
    :cond_28
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecordingPaused()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_5

    :cond_29
    if-eqz v5, :cond_2a

    .line 102
    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->resetToCommonMode()V

    nop

    :cond_2a
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0097 -> :sswitch_4
        0x7f0a0277 -> :sswitch_3
        0x7f0a0278 -> :sswitch_3
        0x7f0a045f -> :sswitch_2
        0x7f0a0460 -> :sswitch_2
        0x7f0a0463 -> :sswitch_1
        0x7f0a0464 -> :sswitch_1
        0x7f0a046b -> :sswitch_0
        0x7f0a046d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateWhenConfigChange(Z)V

    return-void
.end method

.method public onDragDone(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string/jumbo p1, "value_enter_more_mode_by_pop"

    .line 3
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackEnterMoreMode(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public onDragProgress(IZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    int-to-float v0, p1

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3
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

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    sub-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onDragStart(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onInterceptDrag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->resetSmoothZoom()V

    return-void
.end method

.method public onPromptExpand(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public onPromptShrink(ZLjava/lang/Runnable;)V
    .locals 6

    const-string p2, "FragmentBottomAction"

    const-string/jumbo v0, "onPromptShrink"

    .line 1
    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo p2, "trans_start"

    invoke-direct {p1, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v3, -0x3fa7000000000000L    # -100.0

    .line 5
    invoke-virtual {p1, p2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 6
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v3, "trans_end"

    invoke-direct {p2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 7
    invoke-virtual {p2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 8
    invoke-virtual {p2, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    aput-object v3, v2, v0

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 10
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getPromptAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p1, p2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsReEnterFragment:Z

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    const-string v1, "FragmentBottomAction"

    const-string/jumbo v3, "onResume->STATE_SHOW"

    .line 8
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbLayout(Z)V

    .line 10
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->needShowZoomView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;->setZoomViewVisible(Z)V

    :cond_1
    return-void
.end method

.method public onSnapClick()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const-string v1, "FragmentBottomAction"

    if-nez v0, :cond_0

    const-string/jumbo v0, "onSnapClick: disabled"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "onSnapClick: no context"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "onSnapClick: ignore onSnapClick event, because module isn\'t ready"

    .line 8
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "onSnapClick: ignore onSnapClick event, because screen slide is off"

    .line 10
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_4

    const-string/jumbo v0, "onSnapClick: no camera action"

    .line 12
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->ignoreOnClickInCustomDialog()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v0, "onSnapClick: ignore onSnapClick event, because customDialog is Visible"

    .line 14
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string/jumbo v3, "onSnapClick"

    .line 15
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xa

    if-eq v3, v2, :cond_9

    const/16 v2, 0xa2

    if-eq v3, v2, :cond_9

    const/16 v2, 0xa6

    if-eq v3, v2, :cond_7

    const/16 v2, 0xa9

    if-eq v3, v2, :cond_9

    const/16 v2, 0xac

    if-eq v3, v2, :cond_9

    const/16 v2, 0xb0

    if-eq v3, v2, :cond_7

    const/16 v2, 0xbb

    if-eq v3, v2, :cond_9

    const/16 v2, 0xcc

    if-eq v3, v2, :cond_9

    const/16 v2, 0xd3

    if-eq v3, v2, :cond_9

    const/16 v2, 0xb3

    if-eq v3, v2, :cond_9

    const/16 v2, 0xb4

    if-eq v3, v2, :cond_9

    const/16 v2, 0xb7

    if-eq v3, v2, :cond_9

    const/16 v2, 0xb8

    if-eq v3, v2, :cond_9

    const/16 v2, 0xd6

    if-eq v3, v2, :cond_9

    const/16 v2, 0xd7

    if-eq v3, v2, :cond_9

    packed-switch v3, :pswitch_data_0

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v2

    .line 18
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isBlockSnap()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v0, "onSnapClick: block snap"

    .line 19
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_6
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 21
    :cond_7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v0, "onSnapClick: doing action"

    .line 22
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_8
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 24
    :cond_9
    :pswitch_0
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSnapLongPress()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const-string v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPress"

    .line 7
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClick()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_4
    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPressCancelIn"

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel(Z)V

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xab

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 11
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_6
    :goto_0
    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPressCancelOut"

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLongPressBurst:Z

    :cond_2
    return-void
.end method

.method public onSnapPrepare()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa01

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->shrink(Z)Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapPrepare"

    .line 7
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onSwitchCameraPicker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->changeCamera(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrackSnapMissTaken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentBottomAction"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonMissTaken(J)V

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrackSnapTaken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentBottomAction"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonTaken(J)V

    return-void
.end method

.method public pauseRecording()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_2

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    if-eqz v1, :cond_7

    .line 5
    check-cast v0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->onPauseButtonClick()V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLastPauseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mLastPauseTime:J

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/MiLiveModule;

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/module/VideoSkyModule;

    if-nez v1, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ILiveModule;

    .line 12
    invoke-interface {v0}, Lcom/android/camera/module/ILiveModule;->onPauseButtonClick()V

    goto :goto_1

    :cond_5
    :goto_0
    const-string v0, "FragmentBottomAction"

    const-string/jumbo v1, "onClick: recording pause is not allowed!!!"

    .line 13
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/VideoModule;

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    :cond_7
    :goto_1
    return-void
.end method

.method public processingAudioCapture(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->startRing()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->stopRing()V

    :goto_0
    return-void
.end method

.method public processingFailed()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateLoading(Z)V

    return-void
.end method

.method public processingFinish()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    const-string v1, "FragmentBottomAction"

    const-string/jumbo v3, "processingFinish->STATE_SHOW"

    .line 5
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 7
    iput-boolean v2, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 8
    iput-boolean v2, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPostPreview:Z

    const/16 v1, 0x8

    .line 9
    invoke-direct {v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    .line 10
    iget-object v5, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v5}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    .line 11
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v5

    const/16 v6, 0xb8

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v5, v6, :cond_2

    .line 13
    iget-object v5, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v7, 0x7f120037

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    iget-object v5, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v7, 0x7f1200b0

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v5

    const-class v7, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v5, v7}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 16
    iget v7, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v8, 0xa7

    const/16 v9, 0xc3

    const/16 v10, 0xc0

    if-eq v7, v8, :cond_e

    const/16 v8, 0xad

    if-eq v7, v8, :cond_a

    const/16 v8, 0xb4

    const/16 v11, 0xc2

    if-eq v7, v8, :cond_9

    const/4 v8, -0x1

    if-eq v7, v6, :cond_6

    const/16 v6, 0xcc

    if-eq v7, v6, :cond_5

    const/16 v6, 0xcf

    if-eq v7, v6, :cond_4

    const/16 v1, 0xd6

    if-eq v7, v1, :cond_9

    goto/16 :goto_2

    .line 17
    :cond_4
    iget-object v6, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v6, v10}, Lcom/android/camera/fragment/bottom/action/Pickers;->setModulePersistentType(I)V

    .line 18
    iget-object v6, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v6, v4, v2, v10}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    .line 19
    new-instance v4, Landroid/view/animation/RotateAnimation;

    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 21
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    invoke-virtual {v4, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 23
    invoke-virtual {v4, v8}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 24
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 25
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 27
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v1

    if-nez v1, :cond_10

    .line 28
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v6, 0xc4

    invoke-virtual {v1, v4, v3, v6}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto/16 :goto_2

    .line 29
    :cond_6
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v1

    if-eqz v1, :cond_7

    move v9, v10

    goto :goto_0

    .line 30
    :cond_7
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiVideo()Z

    move-result v1

    if-eqz v1, :cond_8

    move v9, v11

    .line 31
    :cond_8
    :goto_0
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1, v9}, Lcom/android/camera/fragment/bottom/action/Pickers;->setModulePersistentType(I)V

    .line 32
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    .line 33
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v8, v4, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 34
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 35
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v1

    iget v3, v0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->showNormalMimojiBottom()V

    goto :goto_2

    .line 37
    :cond_9
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1, v4, v3, v11}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_2

    .line 38
    :cond_a
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0O()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 39
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1, v4, v3, v9}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_2

    .line 40
    :cond_b
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00OOO()Z

    move-result v1

    if-nez v1, :cond_d

    .line 41
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00Oo()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1

    .line 42
    :cond_c
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1, v4, v3, v10}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_2

    .line 43
    :cond_d
    :goto_1
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v6, 0xc1

    invoke-virtual {v1, v4, v3, v6}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_2

    .line 44
    :cond_e
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OooO()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 45
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1, v4, v3, v9}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_2

    .line 46
    :cond_f
    iget-object v1, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1, v4, v3, v10}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    .line 47
    :cond_10
    :goto_2
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 48
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v4

    invoke-static {v2, v1, v2, v3, v4}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v1

    .line 50
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    .line 51
    iget-object v3, v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 52
    iget-boolean v3, v1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v3, :cond_11

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->isLongExpose()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 53
    :cond_11
    invoke-direct {v0, v2, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    :cond_12
    return-void
.end method

.method public processingLongExposePrepare()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    invoke-static {v3, v0, v4, v1, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->longExposePrepare(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingLongExposeStart()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    invoke-static {v3, v0, v4, v1, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->longExposeStart(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingMimojiCreate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa3

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->onRestore()V

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb8

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/4 v3, 0x0

    const/16 v4, 0xc1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->onForceVideoStateChange(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    :cond_1
    return-void
.end method

.method public processingPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setPausePlaySwitchTarget(Z)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f1200b7

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    const-string v1, "FragmentBottomAction"

    const-string/jumbo v2, "processingPause->STATE_HIDE"

    .line 9
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 11
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb7

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v2, 0xc4

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_0

    .line 13
    :cond_3
    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$6;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$6;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_0
    return-void
.end method

.method public processingPostAction(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 4
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 5
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v5

    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v4, v3}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const v4, 0x7f1200b8

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    if-eq p1, v0, :cond_3

    .line 10
    invoke-direct {p0, v2, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    .line 11
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public processingPrepare()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xac

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingMimojiCreate()V

    return-void

    .line 4
    :cond_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_2

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 6
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPostPreview:Z

    .line 7
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 8
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v4

    .line 10
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 12
    invoke-direct {p0, v3, v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->disableDrag()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processingResume()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    const-string v0, "FragmentBottomAction"

    const-string/jumbo v1, "processingResume->STATE_HIDE"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->resumeRecording()V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setPausePlaySwitchTarget(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f1200b5

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa01

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->disableDrag()V

    .line 12
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb7

    const/16 v2, 0xc6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooO0O()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v1, 0xc0

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    :goto_0
    return-void
.end method

.method public processingSpeechShutter(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->startSpeech()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech(Z)V

    :goto_0
    return-void
.end method

.method public processingStart()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    const/4 v4, 0x0

    .line 5
    invoke-static {v4, v1, v0, v2, v3}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->hide()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v2, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/CameraSnapView;->setStopButtonEnable(ZZ)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 12
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xad

    const v3, 0x7f1200b6

    if-eq v1, v2, :cond_3

    const/16 v2, 0xbb

    const v4, 0x7f1200b3

    if-eq v1, v2, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget-boolean v0, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public processingWorkspace()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPostPreview:Z

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb8

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->addSegmentNow()V

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array v3, v2, [I

    .line 8
    invoke-interface {v1, v0, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_1
    const/4 v0, -0x1

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v1, 0xc0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 11
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_1

    if-eq v0, p1, :cond_4

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3
    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    .line 4
    invoke-static {v6, v8}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 5
    :cond_2
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v6}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 7
    iput-object v5, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mReverseDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->hideExtra()V

    .line 9
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v6}, Lcom/android/camera/ui/CameraSnapView;->onTimeOut()V

    .line 10
    iget-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v6, :cond_4

    .line 11
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPostPreview:Z

    .line 13
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPostProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const/16 v6, 0xb7

    if-ne v0, v6, :cond_5

    .line 15
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    return-void

    .line 16
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 17
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_6

    .line 18
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 19
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordSaveButton:Landroid/widget/ImageView;

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p3

    .line 22
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    .line 23
    invoke-virtual {p3, v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setScreenOrientation(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 24
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setIsFPS960(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    if-eqz p2, :cond_7

    move v3, v2

    goto :goto_1

    :cond_7
    move v3, v1

    .line 25
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    const/16 v0, 0xfe

    if-eq p1, v0, :cond_8

    goto :goto_2

    .line 26
    :cond_8
    invoke-virtual {p3, v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    .line 27
    :goto_2
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v3, p3}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 28
    invoke-virtual {p3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->snapSolidPattern()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 29
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->reInitViewBackground(Z)V

    goto :goto_3

    .line 30
    :cond_9
    invoke-virtual {p3}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->isRapidlyChange()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 31
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->reInitViewBackground(Z)V

    .line 32
    :cond_a
    :goto_3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->shouldEnableSpeechShutter(I)Z

    move-result p3

    invoke-virtual {p0, p3, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->processingSpeechShutter(ZZ)V

    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provideAnimateElement: newMode = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentMode = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", animateInElements = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "FragmentBottomAction"

    invoke-static {v3, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0xa3

    const/16 v4, 0xc4

    const/4 v6, -0x1

    const/16 v7, 0xc1

    const/16 v8, 0xc0

    if-eq p1, p3, :cond_20

    const/16 p3, 0xa9

    if-eq p1, p3, :cond_1f

    const/16 p3, 0xb6

    if-eq p1, p3, :cond_1e

    if-eq p1, v0, :cond_1d

    const/16 p3, 0xa6

    if-eq p1, p3, :cond_1c

    const/16 p3, 0xa7

    const/16 v0, 0xb4

    const/16 v9, 0xc2

    const/16 v10, 0xc3

    if-eq p1, p3, :cond_1a

    const/16 p3, 0xaf

    if-eq p1, p3, :cond_19

    const/16 p3, 0xb0

    if-eq p1, p3, :cond_18

    const/16 p3, 0xb3

    if-eq p1, p3, :cond_1b

    if-eq p1, v0, :cond_1a

    const/16 p3, 0xcc

    if-eq p1, p3, :cond_16

    const/16 p3, 0xcd

    if-eq p1, p3, :cond_15

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 34
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-eqz p1, :cond_20

    .line 35
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const p3, 0xff00

    invoke-virtual {p1, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    if-eqz p1, :cond_d

    .line 36
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string/jumbo p1, "provideAnimateElement->STATE_HIDE"

    .line 37
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v4, v8

    goto :goto_6

    :cond_c
    const-string/jumbo p1, "provideAnimateElement->STATE_SHOW"

    .line 38
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    move v4, v7

    goto :goto_6

    .line 39
    :pswitch_0
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_e

    move v4, v8

    goto :goto_5

    :cond_e
    move v4, v7

    :goto_5
    move v3, v1

    move p1, v2

    move p3, p1

    move v0, v6

    goto/16 :goto_c

    :pswitch_1
    move p1, v2

    move v3, p1

    move p3, v6

    goto/16 :goto_9

    .line 40
    :pswitch_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OoO00()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/16 v4, 0xc8

    :cond_f
    :goto_6
    move v3, v1

    move p1, v2

    move p3, p1

    move v0, p3

    goto/16 :goto_c

    :pswitch_3
    move p1, v2

    move v0, p1

    move v3, v0

    move p3, v6

    goto/16 :goto_a

    .line 41
    :pswitch_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class p3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, p3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 42
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result p3

    if-eqz p3, :cond_10

    move v3, v1

    move p1, v2

    move p3, p1

    move v0, v6

    move v4, v7

    move v6, p3

    goto/16 :goto_c

    .line 43
    :cond_10
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result p3

    if-eqz p3, :cond_11

    goto/16 :goto_8

    .line 44
    :cond_11
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPhoto()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    move v4, v10

    goto :goto_6

    :cond_13
    :goto_7
    move v4, v9

    goto :goto_6

    .line 45
    :pswitch_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p3

    invoke-virtual {p3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0O()Z

    move-result p3

    if-eqz p3, :cond_14

    const/16 p3, 0xd6

    if-ne p1, p3, :cond_12

    goto :goto_7

    .line 46
    :cond_14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00OOO()Z

    move-result p1

    if-nez p1, :cond_20

    .line 47
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00Oo()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto/16 :goto_b

    .line 48
    :pswitch_6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOoo()S

    move-result p1

    if-eqz p1, :cond_1b

    goto/16 :goto_b

    .line 49
    :pswitch_7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOOo0()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto/16 :goto_b

    .line 50
    :cond_15
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000Oo0o()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_8

    .line 51
    :cond_16
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_6

    .line 52
    :cond_17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_8

    .line 53
    :cond_18
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOOoO()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_b

    .line 54
    :cond_19
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p3

    const/16 v0, 0x3b2

    invoke-virtual {p3, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p3

    check-cast p3, Lcom/android/camera/module/impl/component/DisplayGuideImp;

    if-eqz p3, :cond_1b

    .line 55
    invoke-virtual {p3, p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->isSupportUltraPixelSelf(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_b

    .line 56
    :cond_1a
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p3

    invoke-virtual {p3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OooO()Z

    move-result p3

    if-eqz p3, :cond_1b

    if-ne p1, v0, :cond_12

    goto/16 :goto_7

    :cond_1b
    :goto_8
    :pswitch_8
    move v3, v1

    move p1, v2

    move p3, p1

    :goto_9
    move v0, p3

    :goto_a
    move v4, v8

    goto :goto_c

    .line 57
    :cond_1c
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0ooOO()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_b

    :cond_1d
    move v3, v1

    move p3, v2

    move v0, p3

    move p1, v6

    goto :goto_a

    :cond_1e
    :pswitch_9
    move v3, v1

    move p1, v2

    move p3, p1

    move v0, v6

    goto :goto_a

    .line 58
    :cond_1f
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo0oO()Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_4

    :cond_20
    :goto_b
    move v3, v1

    move p1, v2

    move p3, p1

    move v0, p3

    move v4, v7

    .line 59
    :goto_c
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MW"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 60
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v9

    invoke-virtual {v9}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000OOO()Z

    move-result v9

    if-eqz v9, :cond_21

    if-ne v4, v7, :cond_21

    goto :goto_d

    :cond_21
    move v8, v4

    :goto_d
    if-ne v6, v2, :cond_22

    move v4, v2

    goto :goto_e

    :cond_22
    move v4, v1

    .line 61
    :goto_e
    iput-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBackEnable:Z

    .line 62
    iget-boolean v4, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mSupportOrientation:Z

    if-nez v4, :cond_23

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result v4

    if-eqz v4, :cond_23

    move v4, v1

    .line 63
    :goto_f
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_24

    .line 64
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v7, v9}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_23
    move v4, v1

    .line 65
    :goto_10
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_24

    .line 66
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_24
    if-eq p1, v2, :cond_25

    .line 67
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1, v8}, Lcom/android/camera/fragment/bottom/action/Pickers;->setModulePersistentType(I)V

    .line 68
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1, v5, v1, v8}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    .line 69
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void

    .line 70
    :cond_25
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    if-eqz v3, :cond_26

    goto :goto_11

    :cond_26
    move-object v5, p2

    .line 71
    :goto_11
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, p3, v5, p1, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;FLandroid/view/View;)V

    .line 72
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1, v8}, Lcom/android/camera/fragment/bottom/action/Pickers;->setModulePersistentType(I)V

    .line 73
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1, p2, v2, v8}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    .line 74
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsVideoCast:Z

    if-nez p1, :cond_27

    .line 75
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 76
    :cond_27
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mMimojiBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, p2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_28

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 78
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_28
    return-void

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 6

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    const v0, 0xfffa

    const-wide/16 v1, 0x96

    const/16 v3, 0xa1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v0, :cond_0

    new-array p1, v5, [I

    aput v3, p1, v4

    .line 1
    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    new-array p1, v5, [I

    aput v3, p1, v4

    .line 4
    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 3

    const v0, 0xfffa

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070802

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xa2

    aput v1, p1, v0

    .line 5
    invoke-static {p1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

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

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateWhenConfigChange(Z)V

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
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRotateViews:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xa2

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$14;->$SwitchMap$com$android$camera$fragment$bottom$action$FragmentBottomAction$BackgroundType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const v0, 0x7f0800e1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const v0, 0x7f0800cf

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->setBackgroundResource(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setShutterButtonClickEnable(Z)V

    return-void
.end method

.method public showDocumentReviewViews(Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    array-length v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00d6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    const v1, 0x7f0a00a5

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AdjustAnimationView;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {v0, p3}, Lcom/android/camera/ui/AdjustAnimationView;->setPreviewSize(Landroid/util/Size;)V

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/AdjustAnimationView;->setBitmap(Landroid/graphics/Bitmap;[F)V

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/ui/AdjustAnimationView;->getImageRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 13
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mDocumentContainer:Landroid/view/View;

    const v2, 0x7f0a0116

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/camera/ui/AnimationView;

    .line 14
    invoke-virtual {p3, p1}, Lcom/android/camera/ui/AnimationView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 15
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 17
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 18
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 21
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    .line 24
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/bottom/action/Pickers;->setClickabled(Z)V

    .line 25
    new-instance p2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;

    invoke-direct {p2, p0, p3, v0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$4;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/ui/AnimationView;Lcom/android/camera/ui/AdjustAnimationView;Landroid/view/View;)V

    .line 26
    invoke-static {}, Lcom/android/camera/Util;->getEnterDuration()J

    move-result-wide v1

    .line 27
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/camera/ui/AdjustAnimationView;->startAnim(Landroid/animation/Animator$AnimatorListener;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showDragAnimation(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mBottomActionView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public showOrHideBottom(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCurrentBottomParent:Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public showOrHideLoadingProgress(ZZ)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p2}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p2}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 3
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public showOrHideMimojiProgress(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4, v0, v3, v1, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    iput-boolean v4, v0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsInMimojiCreate:Z

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 6
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setProgressBarVisible(I)V

    return-void
.end method

.method public switchThumbnailFunction(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbnailAsThumbnail(ZZ)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->initThumbnailAsExit()V

    :goto_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xa2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb7

    .line 4
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateLoading(Z)V
    .locals 3

    if-nez p1, :cond_5

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/Util;->isSaveToHidenFolder(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    .line 6
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xac

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd7

    if-eq v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mCaptureProgressDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordProgressDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updatePauseAndCaptureView(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v2, 0xc6

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mRecordingPause:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 7
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    const/16 v2, 0xc0

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateResourceState(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setShutterButtonClickEnable(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->show()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->setShutterButtonClickEnable(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mPickers:Lcom/android/camera/fragment/bottom/action/Pickers;

    invoke-virtual {p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;ZIZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getStartFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq p3, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 6
    invoke-virtual {p3, p1, v0, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    const-string p3, "FragmentBottomAction"

    const-string v1, "inconsistent thumbnail"

    .line 7
    invoke-static {p3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mInLoading:Z

    .line 10
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    .line 11
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    :cond_3
    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz p3, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_6

    if-eqz p4, :cond_5

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void

    .line 14
    :cond_6
    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailUseAsExit:Z

    if-nez p3, :cond_9

    .line 15
    iget-object p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 17
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p3

    const/16 p4, 0xd0

    if-eq p3, p4, :cond_7

    .line 18
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/android/camera/module/common/IUserEventMgr;->enableCameraControls(Z)V

    .line 19
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result p1

    if-eqz p2, :cond_9

    .line 21
    iget-boolean p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez p2, :cond_9

    if-eqz p1, :cond_8

    goto :goto_0

    .line 22
    :cond_8
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const p2, 0x3e99999a    # 0.3f

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const p2, 0x3fa66666    # 1.3f

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$5;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$5;-><init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)V

    .line 26
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 p2, 0x50

    .line 27
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_9
    :goto_0
    return-void
.end method
