.class public Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentDollyZoomProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;
    }
.end annotation


# static fields
.field public static final STATUS_CAPTURING:I = 0x1

.field public static final STATUS_PREPARE:I = 0x0

.field public static final STATUS_PREVIEW:I = 0x3

.field public static final STATUS_SAVE:I = 0x4

.field public static final STATUS_STOP:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FragmentDollyZoomProcess"


# instance fields
.field public mBottomActionView:Landroid/view/ViewGroup;

.field public mBottomLayout:Landroid/view/ViewGroup;

.field public mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field public mCancelCapture:Landroid/widget/ImageView;

.field public mCaptureHint:Landroid/widget/TextView;

.field public mExitDialog:Landroid/view/View;

.field public mExitDialogCancel:Landroid/widget/TextView;

.field public mExitDialogConfirm:Landroid/widget/TextView;

.field public mExitDialogMessage:Landroid/widget/TextView;

.field public mGiveUpToPreview:Landroid/widget/ImageView;

.field public mIsPendingShowComposeResult:Z

.field public mIsVideoPause:Z

.field public mIsVideoPlaying:Z

.field public mOldControlStream:I

.field public mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

.field public mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

.field public mPaused:Z

.field public mPendingShare:Z

.field public mPlayButton:Landroid/widget/ImageView;

.field public mRootView:Landroid/view/View;

.field public mSaveAndShare:Landroid/widget/ImageView;

.field public mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

.field public mSaveContentValues:Landroid/content/ContentValues;

.field public mSavedPath:Ljava/lang/String;

.field public mSavedUri:Landroid/net/Uri;

.field public mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

.field public mShareDialog:Landroid/view/View;

.field public mShareMessage:Landroid/widget/TextView;

.field public mShareProgress:Landroid/widget/ProgressBar;

.field public mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSnapViewProgress:Landroid/widget/ImageView;

.field public mStatus:I

.field public mStopCapture:Landroid/widget/ImageView;

.field public mTextureVideoCallback:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;

.field public mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field public mTopLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mOldControlStream:I

    return-void
.end method

.method public static synthetic OooO00o(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr p0, v2

    float-to-double v2, p0

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public static synthetic OooO0O0(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr p0, v2

    float-to-double v2, p0

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPaused:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->pauseVideoPlay()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideShareSheet()Z

    move-result p0

    return p0
.end method

.method private alphaAnimateIn(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v0, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private alphaAnimateOut(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v0, p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private checkAndShare()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->showShareSheet()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private enableUseGuideMenu(Z)V
    .locals 4

    const-string v0, "FragmentDollyZoomProcess"

    const-string v1, "enableUseGuideMenu"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
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

    const/16 v3, 0xb3

    aput v3, v1, v2

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    :cond_0
    return-void
.end method

.method private hideCaptureHint()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    const-string/jumbo v2, "translationX"

    .line 4
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0O/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0O/OooO00o;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance v1, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$1;-><init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private hideExitDialog()Z
    .locals 3

    const-string v0, "FragmentDollyZoomProcess"

    const-string v1, "hideExitDialog"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->setSnapButtonEnable(ZZ)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hideShareSheet()Z
    .locals 2

    const-string v0, "FragmentDollyZoomProcess"

    const-string v1, "hideShareSheet"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareDialog:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initShutterButton()V
    .locals 2

    const-string v0, "FragmentDollyZoomProcess"

    const-string v1, "initShutterButton"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setTargetUiStyle(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showCirclePaintItem()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showBottomPaintItem()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech(Z)V

    return-void
.end method

.method private onSaveButtonClick(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->resetToPreview()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;

    const-string v1, "FragmentDollyZoomProcess"

    if-nez v0, :cond_1

    const-string/jumbo p1, "onSaveButtonClick: no dolly zoom action"

    .line 4
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "onSaveButtonClick"

    .line 5
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPendingShare:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 7
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->enableUseGuideMenu(Z)V

    :cond_2
    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 10
    iput p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->setProgressBarVisible(Z)V

    .line 13
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;->onSaveClicked()V

    return-void
.end method

.method private pauseVideoPlay()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPause:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPlaying:Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1}, Lcom/android/camera/ui/TextureVideoView;->pause()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private restoreVolumeControlStream()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mOldControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method

.method private resumeVideoPlay()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPause:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPlaying:Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->resume()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPlayButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setProgressBarVisible(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setSnapButtonEnable(ZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSnapButtonEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentDollyZoomProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private setVolumeControlStream(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mOldControlStream:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolumeControlStream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentDollyZoomProcess"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private showCaptureHint()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const-string/jumbo v2, "translationX"

    .line 4
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0O/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0O/OooO0O0;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showExitConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FragmentDollyZoomProcess"

    const-string/jumbo v1, "showExitConfirm"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->setSnapButtonEnable(ZZ)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogMessage:Landroid/widget/TextView;

    const v1, 0x7f120470

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    const v1, 0x7f12046f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogCancel:Landroid/widget/TextView;

    const v1, 0x7f1208f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0O/OooO0OO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0O/OooO0OO;-><init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogCancel:Landroid/widget/TextView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0O/OooO0Oo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0O/OooO0Oo;-><init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showShareSheet()V
    .locals 11

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPendingShare:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v2, 0x10000

    .line 5
    invoke-virtual {v7, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x4

    div-int/lit8 v10, v2, 0x4

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemCount()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/VVShareAdapter;->setShareInfoList(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 11
    :cond_3
    :goto_0
    new-instance v2, Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v2

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/vv/VVShareAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    .line 12
    new-instance v2, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;-><init>(III)V

    .line 13
    new-instance v3, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$2;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$2;-><init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageListener(Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;)V

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 15
    iget-object v3, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v3, v1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->initIndicator(I)V

    if-gt v1, v4, :cond_4

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareMessage:Landroid/widget/TextView;

    const v1, 0x7f1208f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$3;-><init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :goto_2
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareDialog:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_6
    :goto_3
    const-string v0, "FragmentDollyZoomProcess"

    const-string v1, "no IntentActivities"

    .line 26
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startVideoPlay(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPlaying:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPause:Z

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/TextureVideoView;->start(J)V

    const-string/jumbo p1, "value_film_play"

    .line 8
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmDollyZoomClick(Ljava/lang/String;)V

    return-void
.end method

.method private stopVideoPlay()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPlaying:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "value_dolly_zoom_exit_confirm"

    .line 1
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->enableUseGuideMenu(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x2a5

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;->onExitClicked()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->resetToPreview()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideExitDialog()Z

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideExitDialog()Z

    return-void
.end method

.method public canSnap()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffffb

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0077

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 9

    const-string v0, "FragmentDollyZoomProcess"

    const-string v1, "initView"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0120

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mRootView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const v0, 0x7f0a011e

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTopLayout:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0a0125

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const v0, 0x7f0a0123

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0124

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    const v0, 0x7f0a011c

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0121

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    const v0, 0x7f0a0126

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    const v0, 0x7f0a011a

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    const v0, 0x7f0a0122

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a011b

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const v0, 0x7f0a048e

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    const v1, 0x7f0a0492

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogMessage:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    const v1, 0x7f0a0494

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    const v1, 0x7f0a0493

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogCancel:Landroid/widget/TextView;

    const v0, 0x7f0a04bb

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareDialog:Landroid/view/View;

    const v1, 0x7f0a04bc

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareMessage:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareDialog:Landroid/view/View;

    const v1, 0x7f0a04be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareDialog:Landroid/view/View;

    const v2, 0x7f0a04bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    const v0, 0x7f0a011f

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPlayButton:Landroid/widget/ImageView;

    .line 30
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoCallback:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;-><init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoCallback:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;

    :cond_0
    const v0, 0x7f0a011d

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TextureVideoView;

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v2, 0x4

    .line 33
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoCallback:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    .line 37
    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 38
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 40
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    sub-int/2addr v4, v6

    const/4 v5, 0x2

    .line 41
    div-int/2addr v4, v5

    .line 42
    iget-object v6, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 44
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 45
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 46
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 47
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 48
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 49
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 50
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 51
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 52
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareDialog:Landroid/view/View;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 53
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 54
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x5

    new-array v6, v4, [Landroid/view/View;

    .line 61
    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPlayButton:Landroid/widget/ImageView;

    aput-object v7, v6, v2

    invoke-static {v6}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array v6, v8, [Landroid/view/View;

    .line 62
    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogConfirm:Landroid/widget/TextView;

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialogCancel:Landroid/widget/TextView;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareMessage:Landroid/widget/TextView;

    aput-object v7, v6, v5

    invoke-static {v6}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    new-array v6, v3, [Landroid/view/View;

    .line 63
    iget-object v7, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v7, v6, v1

    invoke-static {v6}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    const v6, 0x7f0a04a5

    .line 64
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const v6, 0x7f0a04a6

    .line 65
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mBottomLayout:Landroid/view/ViewGroup;

    .line 66
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mBottomActionView:Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    iget-object v6, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mBottomLayout:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTopLayout:Landroid/view/ViewGroup;

    const v4, 0x7f06034e

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 72
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignBottom()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array v0, v5, [Landroid/view/View;

    .line 75
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v0, v8, [Landroid/view/View;

    .line 76
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v1, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTopLayout:Landroid/view/ViewGroup;

    const v7, 0x7f060056

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 78
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 79
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 80
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p1

    iput p1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 81
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 82
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v0, v5, [Landroid/view/View;

    .line 84
    iget-object v6, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v6, v0, v1

    iget-object v6, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v6, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v0, v8, [Landroid/view/View;

    .line 85
    iget-object v6, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v6, v0, v1

    iget-object v6, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v6, v0, v3

    iget-object v6, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v6, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    new-array p1, v4, [Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v0, p1, v8

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v0, p1, v2

    invoke-virtual {p0, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    .line 87
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->quit()V

    :cond_3
    return-void
.end method

.method public isPreviewResult()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFirstUseDollyZoom()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/16 v0, 0x27

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 5
    invoke-interface {p1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setFirstUseDollyZoom(Z)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideExitDialog()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideShareSheet()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBackPressed mStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentDollyZoomProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->showExitConfirm()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "value_dolly_zoom_exit_preview"

    .line 4
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->resetToPreview()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-string v1, "FragmentDollyZoomProcess"

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a021c

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareDialog:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string p1, "ignore onClick, dialog show"

    .line 6
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 8
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideShareSheet()Z

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 10
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedPath:Ljava/lang/String;

    const/4 v5, 0x1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 13
    :sswitch_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    if-eqz p1, :cond_3

    const-string p1, "ignore stop capture"

    .line 14
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->stopCaptureToPreviewResult(Z)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo p1, "value_dolly_zoom_click_play_save"

    .line 16
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->onSaveButtonClick(Z)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo p1, "value_dolly_zoom_click_play_share"

    .line 18
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_6

    .line 20
    iput-boolean v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPendingShare:Z

    .line 21
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->onSaveButtonClick(Z)V

    goto :goto_0

    .line 22
    :sswitch_4
    iget-boolean p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPause:Z

    if-eqz p1, :cond_6

    .line 23
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->resumeVideoPlay()V

    goto :goto_0

    .line 24
    :sswitch_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPause:Z

    if-nez p1, :cond_6

    .line 25
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->pauseVideoPlay()V

    goto :goto_0

    .line 26
    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->showExitConfirm()V

    goto :goto_0

    .line 27
    :sswitch_7
    iget-boolean p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    if-eqz p1, :cond_4

    const-string p1, "ignore cancel capture"

    .line 28
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->enableUseGuideMenu(Z)V

    .line 30
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x2a5

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;

    if-eqz p1, :cond_5

    .line 31
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;->onCancelClicked()V

    .line 32
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->prepare(Z)V

    :cond_6
    :goto_0
    return-void

    .line 33
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore onClick, progress show "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a011a -> :sswitch_7
        0x7f0a011c -> :sswitch_6
        0x7f0a011d -> :sswitch_5
        0x7f0a011f -> :sswitch_4
        0x7f0a0121 -> :sswitch_3
        0x7f0a0122 -> :sswitch_2
        0x7f0a0126 -> :sswitch_1
        0x7f0a021c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FragmentDollyZoomProcess"

    const-string/jumbo v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FragmentDollyZoomProcess"

    const-string/jumbo v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPaused:Z

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideExitDialog()Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideShareSheet()Z

    .line 6
    iget v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->resetToPreview()V

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsVideoPause:Z

    if-nez v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->pauseVideoPlay()V

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->restoreVolumeControlStream()V

    return-void
.end method

.method public onPreviewPrepare(Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume mStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentDollyZoomProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPaused:Z

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->prepare(Z)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;->onFragmentResume()V

    :cond_1
    return-void
.end method

.method public onSaveFinish(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSaveFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentDollyZoomProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedUri:Landroid/net/Uri;

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveContentValues:Landroid/content/ContentValues;

    if-eqz p1, :cond_0

    const-string v0, "_data"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedPath:Ljava/lang/String;

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPendingShare:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->showShareSheet()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->resetToPreview()V

    return-void
.end method

.method public onSnapClick()V
    .locals 3

    const-string v0, "FragmentDollyZoomProcess"

    const-string/jumbo v1, "onSnapClick"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    .line 3
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mExitDialog:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "onSnapClick ignore click case 2"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    if-nez v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "onSnapClick ignore click case 3"

    .line 9
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "onSnapClick performClick mSaveButton"

    .line 11
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    .line 13
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "onSnapClick ignore click case 4"

    .line 14
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_6

    return-void

    .line 16
    :cond_6
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xbd

    if-eq v1, v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0xa

    .line 17
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    :goto_0
    return-void

    :cond_8
    :goto_1
    const-string/jumbo v1, "onSnapClick ignore click case 1"

    .line 18
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSnapLongPress()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 0

    return-void
.end method

.method public onSnapPrepare()V
    .locals 0

    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 0

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 0

    return-void
.end method

.method public prepare(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepare E isLandScape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentDollyZoomProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedUri:Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSavedPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPendingShare:Z

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xbd

    .line 6
    iput v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->initShutterButton()V

    .line 8
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->setProgressBarVisible(Z)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const v2, 0x7f120356

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->showCaptureHint()V

    :goto_0
    const/4 p1, 0x1

    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->enableUseGuideMenu(Z)V

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    .line 23
    invoke-direct {p0, p1, p1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->setSnapButtonEnable(ZZ)V

    .line 24
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v2, :cond_1

    new-array v3, p1, [I

    const/16 v4, 0xb3

    aput v4, v3, v0

    .line 25
    invoke-interface {v2, p1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    new-array v3, p1, [I

    const/16 v4, 0xfb

    aput v4, v3, v0

    .line 26
    invoke-interface {v2, p1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    new-array v3, p1, [I

    const/16 v4, 0xd9

    aput v4, v3, v0

    .line 27
    invoke-interface {v2, p1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    .line 28
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->stopVideoPlay()V

    .line 30
    iput v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    const-string/jumbo p1, "prepare X "

    .line 31
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processingFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTopLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    invoke-static {v1, v0, v1, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f120037

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingPrepare()V
    .locals 3

    const-string v0, "FragmentDollyZoomProcess"

    const-string/jumbo v1, "processingPrepare"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-static {v1, v0, v2, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingStart()V
    .locals 6

    const-string v0, "FragmentDollyZoomProcess"

    const-string/jumbo v1, "processingStart"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "processingStart failed because current status not STATUS_PREPARE"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v0, v1, v2, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    const/16 v2, 0x3a98

    .line 8
    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->setSpecifiedDuration(I)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 10
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v2, 0x7f1200b6

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    .line 13
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v0

    .line 16
    rem-int/lit16 v4, v0, 0xb4

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 18
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 19
    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 23
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 24
    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 25
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    int-to-float v0, v0

    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 27
    :cond_3
    :goto_0
    iput v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

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
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "provideAnimateElement mCurrentMode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIsPendingShowComposeResult "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentDollyZoomProcess"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p3, 0xbd

    if-ne p1, p3, :cond_0

    .line 6
    iget-boolean p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    const-string/jumbo p3, "provideAnimateElement restore ui"

    .line 8
    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->prepare(Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
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
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
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
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore provideRotateItem newDegree "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentDollyZoomProcess"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 2

    const-string v0, "FragmentDollyZoomProcess"

    const-string/jumbo v1, "quit"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x2a4

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public resetToPreview()V
    .locals 3

    const-string v0, "FragmentDollyZoomProcess"

    const-string/jumbo v1, "resetToPreview"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v1, :cond_1

    const-string/jumbo v1, "resetToPreview error, action null"

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    return-void
.end method

.method public showSaveAndGiveUp()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    const-string v1, "FragmentDollyZoomProcess"

    if-nez v0, :cond_0

    const-string v0, "ignore showSaveAndGiveUp"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "showSaveAndGiveUp ignore, not stop"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "showSaveAndGiveUp"

    .line 5
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->setVolumeControlStream(I)V

    .line 7
    iput v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f110054

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStopCapture:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCancelCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->setProgressBarVisible(Z)V

    .line 18
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 19
    iget-object v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->setSnapButtonEnable(ZZ)V

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;

    .line 23
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->startVideoPlay(Ljava/lang/String;)V

    return-void
.end method

.method public stopCaptureToPreviewResult(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;

    const-string v1, "FragmentDollyZoomProcess"

    if-nez v0, :cond_0

    const-string/jumbo p1, "stopCaptureToPreviewResult dollyZoomAction is null"

    .line 2
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    if-eqz v2, :cond_1

    const-string/jumbo p1, "stopCaptureToPreviewResult ignore, pending show composeResult"

    .line 4
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget v2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const-string/jumbo p1, "stopCaptureToPreviewResult ignore, not capturing"

    .line 6
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v2, "stopCaptureToPreviewResult"

    .line 7
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;->onStopClicked()V

    .line 11
    iput-boolean v3, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mIsPendingShowComposeResult:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->showSaveAndGiveUp()V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {p1, v0}, Lcom/android/camera/Util;->showFoldTips(Landroid/app/Activity;I)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x2a4

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateCaptureMessage(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "FragmentDollyZoomProcess"

    const-string p2, "ignore updateCaptureMessage, fragment not added"

    .line 3
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideCaptureHint()V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const v0, 0x7f080134

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    const v0, 0x7f080132

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->showCaptureHint()V

    :cond_4
    :goto_1
    return-void
.end method
