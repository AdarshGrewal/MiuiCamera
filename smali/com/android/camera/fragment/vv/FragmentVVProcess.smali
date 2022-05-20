.class public Lcom/android/camera/fragment/vv/FragmentVVProcess;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVVProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isShareSheetInit:Z

.field public mBottomActionView:Landroid/view/ViewGroup;

.field public mBottomLayout:Landroid/view/ViewGroup;

.field public mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field public mCheckbox:Landroid/widget/CheckBox;

.field public mCheckboxLayout:Landroid/view/ViewGroup;

.field public mCheckboxText:Landroid/widget/TextView;

.field public mCombineProgress:Landroid/widget/ImageView;

.field public mConcatProgress:Landroid/widget/ProgressBar;

.field public mCurrentIndex:I

.field public mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

.field public mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

.field public mDurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public mIsIntentAction:Z

.field public mLandscapeHint:Landroid/widget/TextView;

.field public mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

.field public mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

.field public mPaused:Z

.field public mPendingShare:Z

.field public mPreviewBack:Landroid/widget/ImageView;

.field public mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPreviewCover:Landroid/widget/FrameLayout;

.field public mPreviewLayout:Landroid/widget/FrameLayout;

.field public mPreviewNext:Landroid/widget/ImageView;

.field public mPreviewPrevious:Landroid/widget/ImageView;

.field public mPreviewShare:Landroid/widget/ImageView;

.field public mPreviewStart:Landroid/widget/ImageView;

.field public mPreviewThumb:Landroid/widget/ImageView;

.field public mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

.field public mRootView:Landroid/view/View;

.field public mSaveContentValues:Landroid/content/ContentValues;

.field public mSavedPath:Ljava/lang/String;

.field public mSavedUri:Landroid/net/Uri;

.field public mSegmentPreview:Landroid/widget/ImageView;

.field public mSegmentReverse:Landroid/widget/ImageView;

.field public mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

.field public mShareProgress:Landroid/widget/ProgressBar;

.field public mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mStabilityHint:Landroid/widget/TextView;

.field public mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field public mVVDialog:Landroid/view/View;

.field public mVVDialogCancel:Landroid/widget/TextView;

.field public mVVDialogConfirm:Landroid/widget/TextView;

.field public mVVDialogMessage:Landroid/widget/TextView;

.field public mVVShare:Landroid/view/View;

.field public mVVShareMessage:Landroid/widget/TextView;

.field public mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

.field public mVideoRecordingPaused:Z

.field public mVideoRecordingStarted:Z

.field public mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

.field public mWaitingResultSurfaceTexture:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isShareSheetInit:Z

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)Lcom/android/camera/module/loader/NullHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0

    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->rotateBitmap(Landroid/graphics/Bitmap;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Lcom/android/camera/fragment/vv/VVItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/fragment/vv/FragmentVVProcess;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->pausePlay(ZZ)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/fragment/vv/FragmentVVProcess;IZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideShareSheet()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideVVDialog()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Lcom/android/camera/storage/mediastore/VideoFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/vv/FragmentVVProcess;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->stopSegmentPreview(Z)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/android/camera/fragment/vv/FragmentVVProcess;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Lcom/android/camera/ui/TextureVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/vv/FragmentVVProcess;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->startPlay(Landroid/view/Surface;)V

    return-void
.end method

.method private checkAndShare()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->showShareSheet()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private fitThin(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v1, 0x3f59999a    # 0.85f

    if-lez v0, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 6
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method private hideShareSheet()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v2

    :cond_0
    return v1
.end method

.method private hideVVDialog()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initHandler()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess$13;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$13;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initTextureView()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/TextureVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 4
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCover:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setScaleType(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$8;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$8;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewAutomatic()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    sget-object v2, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->WORKSPACE_PATH:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentWorkspaceItem(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->prepare(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    :cond_0
    return-void
.end method

.method private intoResultPreview()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConcat"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->updateThumbnail()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->startPlay(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showFoldTips(Landroid/app/Activity;I)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_1
    return-void
.end method

.method private isFullSegmentsPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecordingFinished()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private onProcessingSateChanged(I)V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onResultCombineFinished(Z)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onResultCombineFinished(Z)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0032

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 11
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 19
    :pswitch_4
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 21
    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f110054

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-nez p1, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 35
    :pswitch_6
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSegmentsChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    const/4 v0, -0x1

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    :goto_1
    return-void
.end method

.method private pausePlay(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->stopSegmentPreview(Z)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isFullSegmentsPlaying()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1, v2}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    .line 8
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xe4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p2, p2, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_click_play_all_pause"

    invoke-static {v0, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->pausePlay()V

    :cond_5
    :goto_1
    return-void
.end method

.method private previewLastSegment()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "previewLastSegment"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    move v2, v0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->getSegmentPath(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->start()V

    :cond_3
    return-void
.end method

.method private resumePlay()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->intoResultPreview()V

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePlay failed, vv is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    .line 7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->resumePlay()V

    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Lcom/android/camera/module/loader/NullHolder;
    .locals 7

    if-nez p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 5
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, v4

    div-float/2addr v2, v1

    .line 6
    invoke-virtual {v5, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 p1, 0x0

    move-object v0, p0

    .line 7
    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object p0, v0

    :cond_2
    move-object p1, p0

    goto :goto_0

    .line 9
    :catch_0
    sget-object p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "rotate out of memory"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :catch_1
    :goto_0
    invoke-static {p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method private showReverseConfirmDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogMessage:Landroid/widget/TextView;

    const v1, 0x7f120484

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    const v1, 0x7f120483

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    const v1, 0x7f1208f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$1;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$2;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showShareSheet()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->pausePlay(ZZ)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v2, 0x10000

    .line 6
    invoke-virtual {v7, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->fitThin(Landroid/view/View;)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->fitThin(Landroid/view/View;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->fitThin(Landroid/view/View;)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShareMessage:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->fitThin(Landroid/view/View;)V

    .line 13
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isShareSheetInit:Z

    const/4 v3, 0x2

    const/4 v11, 0x4

    if-nez v2, :cond_4

    .line 14
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemTextMinHeight(Landroid/content/Context;)I

    move-result v5

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemTextHeight(Landroid/content/Context;)I

    move-result v6

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v11, :cond_3

    move v8, v3

    goto :goto_0

    :cond_3
    move v8, v4

    .line 18
    :goto_0
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v6, v5

    mul-int/2addr v6, v8

    add-int/2addr v9, v6

    iput v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 19
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/2addr v2, v11

    .line 20
    iput-boolean v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isShareSheetInit:Z

    move v10, v2

    goto :goto_1

    :cond_4
    move v10, v0

    .line 21
    :goto_1
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemCount()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/vv/VVShareAdapter;->setShareInfoList(Ljava/util/List;)V

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 24
    :cond_6
    :goto_2
    new-instance v2, Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v2

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/vv/VVShareAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    .line 25
    new-instance v2, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    invoke-direct {v2, v3, v11, v4}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;-><init>(III)V

    .line 26
    new-instance v3, Lcom/android/camera/fragment/vv/FragmentVVProcess$11;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$11;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageListener(Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;)V

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 28
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v3, v1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->initIndicator(I)V

    if-gt v1, v4, :cond_7

    .line 29
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 30
    :cond_7
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    :goto_3
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    if-nez v1, :cond_8

    .line 32
    new-instance v1, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    invoke-direct {v1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    .line 33
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 35
    :cond_8
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShareMessage:Landroid/widget/TextView;

    const v2, 0x7f1208f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShareMessage:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/fragment/vv/FragmentVVProcess$12;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$12;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    const/4 v1, -0x1

    .line 38
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 39
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    .line 40
    :cond_9
    :goto_5
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "no IntentActivities"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startPlay(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->startPlay(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method private startSave()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSave"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mWaitingResultSurfaceTexture:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/VMProcessing;->updateState(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/LiveModuleSubVV;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/module/LiveModuleSubVV;->showPreview()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVSave(Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/camera/fragment/vv/FragmentVVProcess$6;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$6;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 12
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private stopSegmentPreview(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSegmentPreview fromUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_click_play_segement_exit"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateThumbnail()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigVV;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->getSegmentPath(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/camera/FileCompat;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOO0;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOO;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onProcessingSateChanged(I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/module/loader/NullHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public canSnap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffd

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00c2

    return v0
.end method

.method public getSaveContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getSaveVideoFile()Lcom/android/camera/storage/mediastore/VideoFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mRootView:Landroid/view/View;

    const v0, 0x7f0a04ad

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a04b7

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCover:Landroid/widget/FrameLayout;

    const v0, 0x7f0a048a

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a04bd

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a04b2

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    const v0, 0x7f0a04af

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    const v0, 0x7f0a04b1

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a04a4

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f0a04b3

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f0a04b0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    const v0, 0x7f0a04b5

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    const v0, 0x7f0a04ae

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    const v0, 0x7f0a04ba

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    const v0, 0x7f0a04b9

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a04b6

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    const v0, 0x7f0a04c0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    const v0, 0x7f0a048e

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const v1, 0x7f0a0492

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogMessage:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const v1, 0x7f0a0494

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const v1, 0x7f0a0493

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    const v1, 0x7f0a0490

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a048f

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0491

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxText:Landroid/widget/TextView;

    const v0, 0x7f0a04bb

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    const v1, 0x7f0a04bc

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShareMessage:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    const v1, 0x7f0a04be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    const v2, 0x7f0a04bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    const v0, 0x7f0a04b8

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/vv/VVProgressView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x1

    .line 34
    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 35
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 36
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 37
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    div-int/2addr v4, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 38
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 39
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v4

    sub-int/2addr v4, v6

    sub-int/2addr v4, v0

    sub-int/2addr v6, v4

    .line 40
    div-int/2addr v6, v5

    .line 41
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 43
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 44
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 45
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 47
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 49
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    .line 69
    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v4, v0, v1

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    aput-object v4, v0, v5

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    const/4 v6, 0x3

    aput-object v4, v0, v6

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    const/4 v7, 0x4

    aput-object v4, v0, v7

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    const/4 v8, 0x5

    aput-object v4, v0, v8

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array v0, v2, [Landroid/view/View;

    .line 70
    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    new-array v0, v6, [Landroid/view/View;

    .line 71
    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    aput-object v4, v0, v1

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShareMessage:Landroid/widget/TextView;

    aput-object v4, v0, v5

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    const v0, 0x7f0a04a5

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const v0, 0x7f0a04a6

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomLayout:Landroid/view/ViewGroup;

    .line 74
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomActionView:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mBottomLayout:Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 78
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignBottom()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array v0, v5, [Landroid/view/View;

    .line 82
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v0, v6, [Landroid/view/View;

    .line 83
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v1, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 85
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 86
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 87
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 88
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v0, v5, [Landroid/view/View;

    .line 90
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v0, v6, [Landroid/view/View;

    .line 91
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v3, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    new-array p1, v8, [Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    aput-object v0, p1, v5

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v0, p1, v6

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v0, p1, v7

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    .line 93
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/VMProcessing;

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    .line 94
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOOO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOOO;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/data/observeable/VMProcessing;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    .line 95
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->quit()V

    goto :goto_1

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->initViewAutomatic()V

    :goto_1
    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->initViewAutomatic()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->stopSegmentPreview(Z)V

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideVVDialog()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideShareSheet()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a021c

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVShare:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 7
    :sswitch_0
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_segment_reverse"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result p1

    if-eq p1, v1, :cond_3

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_reverse"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->showReverseConfirmDialog()V

    goto/16 :goto_0

    .line 11
    :sswitch_1
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_segment_preview"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMProcessing;->getCurrentState()I

    move-result p1

    if-eq p1, v1, :cond_4

    return-void

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_click_play_segment"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->previewLastSegment()V

    goto/16 :goto_0

    .line 15
    :sswitch_2
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_preview_share"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_click_play_share"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_7

    .line 18
    iput-boolean v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    .line 19
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->startSave()V

    goto/16 :goto_0

    .line 20
    :sswitch_3
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_preview_save"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_click_play_save"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->quitLiveRecordPreview(Z)V

    goto/16 :goto_0

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->startSave()V

    goto :goto_0

    .line 25
    :sswitch_4
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_preview_play"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_click_play_all_resume"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->resumePlay()V

    goto :goto_0

    .line 28
    :sswitch_5
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_preview_next"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isRecordingFinished()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 30
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object p1, p1, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    const-string/jumbo v0, "value_vv_click_play_all"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->intoResultPreview()V

    goto :goto_0

    .line 33
    :sswitch_6
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_preview_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->showExitConfirm()V

    goto :goto_0

    .line 35
    :sswitch_7
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_dialog"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :sswitch_8
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: live_share_item"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideShareSheet()Z

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 39
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    :cond_7
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a021c -> :sswitch_8
        0x7f0a048e -> :sswitch_7
        0x7f0a04a4 -> :sswitch_6
        0x7f0a04ae -> :sswitch_5
        0x7f0a04b0 -> :sswitch_4
        0x7f0a04b1 -> :sswitch_3
        0x7f0a04b3 -> :sswitch_2
        0x7f0a04b9 -> :sswitch_1
        0x7f0a04ba -> :sswitch_0
    .end sparse-switch
.end method

.method public onCombinePrepare(Landroid/content/ContentValues;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->initHandler()V

    .line 4
    new-instance p1, Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/camera/storage/mediastore/VideoFile;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/android/camera/storage/mediastore/VideoFile;->initialize(ZLandroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public onKeyCodeCamera()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->isRecordingFinished()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onSnapClick()V

    return-void
.end method

.method public onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedUri:Landroid/net/Uri;

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSavedPath:Ljava/lang/String;

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->showShareSheet()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPaused:Z

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->pausePlay(ZZ)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideVVDialog()Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->hideShareSheet()Z

    return-void
.end method

.method public onRecordingFragmentUpdate(IJ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoRecordingStarted:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/vv/VVProgressView;->updateDuration(IJ)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onSegmentsChanged()V

    return-void
.end method

.method public onRecordingNewFragmentStart(IJLcom/android/camera/fragment/vv/VVWorkspaceItem;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentIndex:I

    return-void
.end method

.method public onResultCombineFinished(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "combineFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPendingShare:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "combineFinished and share"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/LiveModuleSubVV;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/module/LiveModuleSubVV;->startSaveToLocal()V

    return-void

    .line 9
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "combineSuccess and share is not allowed!!!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "combineFinished and finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 12
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess$10;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$10;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onResultPreviewFinished(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPaused:Z

    return-void
.end method

.method public onSnapClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_8

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_5

    return-void

    .line 13
    :cond_5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xb3

    if-eq v1, v2, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    iget-boolean v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoRecordingStarted:Z

    if-eqz v1, :cond_7

    return-void

    .line 15
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value_vv_start_segment_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iget-object v2, v2, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 16
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    :cond_8
    :goto_0
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

.method public prepare(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentVVItem:Lcom/android/camera/fragment/vv/VVItem;

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mIsIntentAction:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xb3

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showPaintCenterVVItem()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result p2

    :goto_0
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p1, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 26
    iget-object v3, p1, Lcom/android/camera/fragment/vv/VVItem;->durationList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-ge v0, p2, :cond_1

    .line 27
    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_1
    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->onSegmentsChanged()V

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    iget-object p2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/vv/VVProgressView;->setDurationList(Ljava/util/List;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 33
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->initTextureView()V

    return-void
.end method

.method public processingFinish()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoRecordingStarted:Z

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mStabilityHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0, v1, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingPrepare()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVideoRecordingStarted:Z

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v1, v0, v2, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingResume()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentReverse:Landroid/widget/ImageView;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mSegmentPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mProgressView:Lcom/android/camera/ui/vv/VVProgressView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0, v2, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_0

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    :cond_1
    long-to-int v1, v3

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->setSpecifiedDuration(I)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 12
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public processingStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->processingResume()V

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
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->initViewAutomatic()V

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
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public quitLiveRecordPreview(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->pausePlay(ZZ)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVmProcessing:Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->reset()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    if-eqz v0, :cond_8

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 14
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "checked: confirm"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->confirmOperation()V

    goto :goto_0

    .line 16
    :cond_3
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "checked: remove"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->removeSelf()V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getLastSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 19
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "uncheck: undo"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->undo()V

    goto :goto_0

    .line 21
    :cond_5
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "uncheck: remove"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->removeSelf()V

    goto :goto_0

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getLastSize()I

    move-result v0

    if-lez v0, :cond_7

    if-nez p1, :cond_7

    .line 24
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "finish: undo"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->undo()V

    goto :goto_0

    .line 26
    :cond_7
    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v1, "finish: remove"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->removeSelf()V

    .line 28
    :cond_8
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_9

    .line 29
    sget-object p1, Lcom/android/camera/fragment/vv/FragmentVVProcess;->TAG:Ljava/lang/String;

    const-string v0, "concat error, action null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    if-eqz p1, :cond_a

    .line 30
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_1

    .line 31
    :cond_a
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe6

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public showExitConfirm()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    move v2, v0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mDurationList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCurrentWorkspaceItem:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getLastSize()I

    move-result v0

    :goto_1
    const/4 v3, 0x1

    if-lez v0, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v1

    .line 6
    :goto_2
    iget-object v5, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    if-nez v2, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    if-eqz v5, :cond_9

    .line 7
    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 9
    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxText:Landroid/widget/TextView;

    const v2, 0x7f120471

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    const v0, 0x7f1208f5

    const v2, 0x7f12046f

    const v6, 0x7f120470

    .line 12
    iget-object v7, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;

    invoke-direct {v8, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$3;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    iget-object v7, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object v6, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/fragment/vv/FragmentVVProcess$4;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/camera/fragment/vv/FragmentVVProcess$4;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;ZZ)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialogCancel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/fragment/vv/FragmentVVProcess$5;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess$5;-><init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCheckboxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    move v1, v3

    :cond_a
    invoke-static {v4, v5, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVV2Exit(ZZZ)V

    .line 19
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mVVDialog:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe6

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setDurationText(Ljava/lang/String;)V

    return-void
.end method
