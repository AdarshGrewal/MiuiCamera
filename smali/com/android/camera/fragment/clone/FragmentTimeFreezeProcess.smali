.class public Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;
.super Lcom/android/camera/fragment/clone/FragmentCloneProcess;
.source "FragmentTimeFreezeProcess.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FragmentTimeFreezeProcess"


# instance fields
.field public mDoubleSlideBar:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

.field public mGotoShare:Z

.field public mIsPause:Z

.field public mIsPlaying:Z

.field public mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field public mThumbnails:Landroid/widget/FrameLayout;

.field public mTimeFreezing:Z

.field public final thumbnailView:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->thumbnailView:[Landroid/widget/ImageView;

    return-void
.end method

.method private hideAdjustButtons()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideBottomPaintItem()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mDoubleSlideBar:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private hideCaptureHint()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideThumbnails()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mThumbnails:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mThumbnails:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onTimeFreezeClick()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    const-string v1, "FragmentTimeFreezeProcess"

    if-nez v0, :cond_0

    const-string/jumbo v0, "onTimeFreezeClicked: no clone action"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "onTimeFreezeClicked"

    .line 3
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "value_time_freeze_click_reset"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "value_time_freeze_click_freeze"

    :goto_0
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onTimeFreezeClicked()V

    return-void
.end method

.method private pauseVideoPlay()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->pause()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showPlayButton()V

    return-void
.end method

.method private resetTimeFreezeButton()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    :cond_0
    return-void
.end method

.method private resumeVideoPlay()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->resume()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    return-void
.end method

.method private showEditPage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->SAVE:Lcom/android/camera/fragment/clone/Status;

    const-string v2, "FragmentTimeFreezeProcess"

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "showResetAndSaveEdit ignore, not stop"

    .line 2
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "showResetAndSaveEdit"

    .line 3
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/android/camera/fragment/clone/Status;->EDIT:Lcom/android/camera/fragment/clone/Status;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mResetEdit:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mDoubleSlideBar:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->alphaAnimateIn(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private showThumbnails()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070718

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f070717

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f070713

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mThumbnails:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showFrameLayoutSubView(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method private showTimeFreezeButton()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->onFilmRatioChanged(ZZ)V

    return-void
.end method

.method private startVideoPlay(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPause:Z

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/TextureVideoView;->start(J)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    return-void
.end method

.method private stopVideoPlay()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const-string v1, "FragmentTimeFreezeProcess"

    if-nez v0, :cond_0

    const-string v0, "ignore updateCaptureMessage, fragment not added"

    .line 7
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    if-eqz v0, :cond_1

    const-string v0, "ignore updateCaptureMessage, hint has been pined"

    .line 9
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideCaptureHint()V

    return-void
.end method

.method public synthetic OooO00o(ILandroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->showThumbnails()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->showEditPage()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->updatePlayPos(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->thumbnailView:[Landroid/widget/ImageView;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic OooO00o(IZ)V
    .locals 4

    .line 11
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPaused:Z

    const-string v1, "FragmentTimeFreezeProcess"

    if-eqz v0, :cond_0

    const v0, 0x7f1202c6

    if-ne p1, v0, :cond_0

    const-string p1, "ignore updateCaptureMessage, paused"

    .line 12
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "ignore updateCaptureMessage, fragment not added"

    .line 14
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    if-eqz v0, :cond_2

    const-string p1, "ignore updateCaptureMessage, hint has been pined"

    .line 16
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v0, 0x7f1202cb

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$1;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateCaptureHintBackground(Z)V

    .line 22
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCaptureHint()V

    return-void

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public checkModeValidation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->quit()V

    :cond_0
    return-void
.end method

.method public enableUseGuideMenu(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0xa4

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2
    invoke-interface {v0, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    new-array v1, v1, [I

    const/16 v2, 0xfb

    aput v2, v1, v4

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    :cond_0
    return-void
.end method

.method public getDurationVideoRecording()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffff9

    return v0
.end method

.method public hideCaptureMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0o;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideShareSheet()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideShareSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "value_time_freeze_click_play_share_cancel"

    .line 2
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public initShutterButton(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initShutterButton "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentTimeFreezeProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd5

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    .line 4
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->setCameraSnapView(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech(Z)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a00da

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TextureVideoView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const v0, 0x7f0a03e2

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mThumbnails:Landroid/widget/FrameLayout;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->thumbnailView:[Landroid/widget/ImageView;

    const v1, 0x7f0a03d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->thumbnailView:[Landroid/widget/ImageView;

    const v1, 0x7f0a03da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->thumbnailView:[Landroid/widget/ImageView;

    const v1, 0x7f0a03db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->thumbnailView:[Landroid/widget/ImageView;

    const v1, 0x7f0a03dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->thumbnailView:[Landroid/widget/ImageView;

    const v1, 0x7f0a03dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->thumbnailView:[Landroid/widget/ImageView;

    const v1, 0x7f0a03de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const v0, 0x7f0a0128

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mDoubleSlideBar:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    .line 13
    invoke-super {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->initView(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mThumbnails:Landroid/widget/FrameLayout;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const v0, 0x7f1203d7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public isVideoMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

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
    invoke-super {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFirstUseTimeFreeze()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa0

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/16 v0, 0x26

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 6
    invoke-interface {p1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setFirstUseTimeFreeze(Z)V

    :cond_0
    return-void
.end method

.method public onBackPress()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->enableUseGuideMenu(Z)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onExitClicked()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->resetToPreview()V

    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/xiaomi/fenshen/FenShenCam$Mode;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/16 v0, 0x1a3

    const-string v1, "FragmentTimeFreezeProcess"

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string/jumbo p2, "value_time_freeze_click_play_share"

    .line 2
    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideShareSheet()Z

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitToDummyClone:Z

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    .line 6
    sget-object p2, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    iput-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->isVideoMode()Z

    move-result v9

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    .line 10
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    :goto_0
    move v2, v3

    goto/16 :goto_2

    .line 13
    :sswitch_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPause:Z

    if-eqz p1, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resumeVideoPlay()V

    goto :goto_1

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->pauseVideoPlay()V

    .line 16
    :goto_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPause:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPause:Z

    goto :goto_0

    .line 17
    :sswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onClick: clone_save_edit: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mThumbnails:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onSaveButtonClick(Z)V

    const-string/jumbo p1, "value_time_freeze_click_play_save"

    .line 20
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz p1, :cond_2

    .line 22
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onSaveEditClicked()V

    .line 23
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showSaveAndGiveUp(Z)V

    const-string/jumbo p1, "value_save_edit_click"

    .line 24
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo p1, "onClick: clone_reset_edit"

    .line 25
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz p1, :cond_3

    .line 27
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onResetEditClicked()V

    :cond_3
    const-string/jumbo p1, "value_reset_edit_click"

    .line 28
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :sswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onClick: clone_give_up_to_preview, sIsEdit="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mThumbnails:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 31
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showSaveAndGiveUp(Z)V

    .line 32
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz p1, :cond_4

    .line 33
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onGiveUpEditClicked()V

    :cond_4
    const-string/jumbo p1, "value_cancel_edit_click"

    .line 34
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo p1, "value_clone_click_giveup"

    .line 35
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showExitConfirm(Z)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo p1, "onClick: clone_adjust"

    .line 37
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideAdjustButtons()V

    .line 39
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz p1, :cond_6

    .line 40
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onAdjustClicked()V

    :cond_6
    const-string/jumbo p1, "value_adjust_click"

    .line 41
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00bd -> :sswitch_5
        0x7f0a00c0 -> :sswitch_4
        0x7f0a00d1 -> :sswitch_3
        0x7f0a00d5 -> :sswitch_2
        0x7f0a00da -> :sswitch_1
        0x7f0a021c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCountDownFinished()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->onTimeFreezeClick()V

    return-void
.end method

.method public onFilmRatioChanged(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 6
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 8
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onPause()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->onTimeFreezeClick()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->stopVideoPlay()V

    return-void
.end method

.method public onReplayPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReplayResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPlayButton:Landroid/widget/ImageView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooOO0;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveFinish(Lcom/xiaomi/fenshen/FenShenCam$Mode;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resetTimeFreezeButton()V

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPendingShare:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveContentValues:Landroid/content/ContentValues;

    if-eqz p1, :cond_1

    const-string p2, "_data"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onSnapClick(Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    return-void
.end method

.method public onThumbnailResult([BIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onThumbnailResult: index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentTimeFreezeProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p4, 0x0

    .line 5
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p3, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mThumbnails:Landroid/widget/FrameLayout;

    new-instance p4, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;

    invoke-direct {p4, p0, p2, p3}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0Oo;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;ILandroid/graphics/Bitmap;)V

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTimeFreezeStateChange(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f0803f8

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->updateSnapStatus(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v0, 0x7f0803f7

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->updateSnapStatus(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/CameraSnapView;->skipDrawCenter(Z)V

    :goto_0
    return-void
.end method

.method public prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideThumbnails()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->stopVideoPlay()V

    return-void
.end method

.method public processingFinish()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0, v1, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f120037

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingStart()V
    .locals 6

    const-string v0, "FragmentTimeFreezeProcess"

    const-string/jumbo v1, "processingResume"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v0, v2, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->getDurationVideoRecording()I

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->setSpecifiedDuration(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result v1

    .line 13
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

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

    if-eqz v1, :cond_1

    .line 18
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 20
    :goto_0
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v2

    .line 21
    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 22
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setRotation(F)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 26
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 28
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setRotation(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public provideAnimateElement(I)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public resetToPreview(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    return-void
.end method

.method public resumeFragment()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->startVideoPlay(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resetTimeFreezeButton()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->showTimeFreezeButton()V

    .line 6
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xd5

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onFragmentResume()V

    :cond_3
    return-void
.end method

.method public setSlideChangeListener(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mDoubleSlideBar:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->setOnRangeListener(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;)V

    return-void
.end method

.method public showSaveAndGiveUp(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideThumbnails()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mAdjustButton:Lcom/android/camera/ui/ScrollTextview;

    const v0, 0x7f12096a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showAdjustButton()V

    return-void
.end method

.method public updateCaptureMessage(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0o0;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO00/OooO0o0;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCaptureMessage(Ljava/lang/String;Z)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPaused:Z

    const-string v1, "FragmentTimeFreezeProcess"

    if-eqz v0, :cond_0

    const-string p1, "ignore updateCaptureMessage, paused"

    .line 3
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "ignore updateCaptureMessage, fragment not added"

    .line 5
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateCaptureHintBackground(Z)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCaptureHint()V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateEditPos(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mDoubleSlideBar:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->updateSlidePos(FF)V

    return-void
.end method

.method public updatePlayPos(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mDoubleSlideBar:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/clone/DoubleSlideSeekBar;->setPlayPos(F)V

    return-void
.end method

.method public updatePreviewUI()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resetTimeFreezeButton()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showSaveAndGiveUp(Z)V

    return-void
.end method
