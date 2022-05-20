.class public Lcom/android/camera/fragment/dialog/FragmentLiveReview;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentLiveReview.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xffff1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PAUSE_AFTER_PLAY:I = 0xa

.field public static final STATE_PENDING_PLAY:I = 0x2

.field public static final STATE_PENDING_RESUME:I = 0x5

.field public static final STATE_PENDING_SAVE:I = 0x8

.field public static final STATE_PENDING_SHARE:I = 0x6

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_SAVE:I = 0x9

.field public static final STATE_SHARE:I = 0x7

.field public static final STATE_WAIT_SURFACE_CREATE:I = 0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAudioString:Ljava/lang/String;

.field public mBottomActionView:Landroid/view/ViewGroup;

.field public mBottomLayout:Landroid/view/ViewGroup;

.field public mBottomRotationView:Landroid/view/ViewGroup;

.field public mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field public mCancelProgress:Landroid/widget/ProgressBar;

.field public mComposeState:I

.field public mComposeStateConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

.field public mComposeStateEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentBottomParent:Landroid/view/ViewGroup;

.field public mExitDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mFirstFrame:Landroid/graphics/Bitmap;

.field public mLiveDialog:Landroid/view/View;

.field public mLiveDialogCancel:Landroid/widget/TextView;

.field public mLiveDialogConfirm:Landroid/widget/TextView;

.field public mLiveDialogMessage:Landroid/widget/TextView;

.field public mLiveShare:Landroid/view/View;

.field public mLiveShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

.field public mLiveShareMessage:Landroid/widget/TextView;

.field public mLiveShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

.field public mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

.field public mPaused:Z

.field public mPlayStateConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

.field public mPlayStateEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

.field public mPlayerState:I

.field public mPreviewBack:Landroid/widget/ImageView;

.field public mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPreviewCover:Landroid/widget/FrameLayout;

.field public mPreviewImage:Landroid/widget/ImageView;

.field public mPreviewLayout:Landroid/widget/FrameLayout;

.field public mPreviewShare:Landroid/widget/ImageView;

.field public mPreviewStart:Landroid/widget/ImageView;

.field public mPreviewStartProgress:Landroid/widget/ProgressBar;

.field public mRootView:Landroid/view/View;

.field public mSaveContentValues:Landroid/content/ContentValues;

.field public mSavePath:Ljava/lang/String;

.field public mSaveProgress:Landroid/widget/ImageView;

.field public mSaved:Z

.field public mSavedUri:Landroid/net/Uri;

.field public mSegmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field public mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

.field public mShareAndExit:Landroid/view/ViewGroup;

.field public mShareCancel:Landroid/view/View;

.field public mShareProgress:Landroid/widget/ProgressBar;

.field public mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

.field public mTextureView:Landroid/view/TextureView;

.field public mTimeView:Landroid/widget/TextView;

.field public mTopLayout:Landroid/view/ViewGroup;

.field public mUIStateConsumer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUIStateDisposable:Lio/reactivex/disposables/Disposable;

.field public mUIStateEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUiState:I

.field public mVerticalBottomLayout:Landroid/view/ViewGroup;

.field public mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

.field public mVideoHeight:I

.field public mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveReview@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    .line 4
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0O0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0O0;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateConsumer:Lio/reactivex/functions/Consumer;

    .line 5
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0o;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateConsumer:Lio/reactivex/functions/Consumer;

    .line 6
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0o0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0o0;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateConsumer:Lio/reactivex/functions/Consumer;

    .line 7
    new-instance v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$1;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lcom/android/camera/module/impl/component/MiLivePlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/android/camera/fragment/dialog/FragmentLiveReview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/view/TextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    return p0
.end method

.method public static synthetic access$2002(Lcom/android/camera/fragment/dialog/FragmentLiveReview;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/android/camera/fragment/dialog/FragmentLiveReview;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideVVDialog()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->releaseCover()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initPlayer()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoHeight:I

    return p0
.end method

.method private checkAndShare()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showShareSheet()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->shareMore()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private findViewByOrientation(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCurrentBottomParent:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomLayout:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v6, 0x7f0a020d

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    .line 11
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v6, 0x7f0a0208

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    .line 12
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v6, 0x7f0a0213

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/CameraSnapView;

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 13
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v6, 0x7f0a0212

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    .line 14
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v6, 0x7f0a0219

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    .line 15
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v6, 0x7f0a0220

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    .line 16
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v6, 0x7f0a0214

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    .line 17
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const v6, 0x7f0a021d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    const v6, 0x7f0a021e

    .line 18
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 20
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    const v6, 0x7f0a021a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareCancel:Landroid/view/View;

    .line 21
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTopLayout:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v6

    const v7, 0x7f060094

    invoke-virtual {v6, v7}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 23
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v5

    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 24
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 25
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 26
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 29
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 30
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 31
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 32
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 33
    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 35
    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAndExit:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v4, v2, [Landroid/view/View;

    .line 37
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    aput-object v5, v4, v3

    invoke-virtual {p0, p1, v4}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v4, v2, [Landroid/view/View;

    .line 38
    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v5, v4, v3

    invoke-virtual {p0, p1, v4}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/view/View;

    .line 39
    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v4, p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    aput-object v1, p1, v3

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v1, p1, v0

    invoke-virtual {p0, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    goto/16 :goto_2

    .line 40
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->updateShutterButtonLocation()V

    .line 41
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTopLayout:Landroid/view/ViewGroup;

    const v4, 0x7f06034e

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 42
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a02ec

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a02eb

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    .line 44
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a02ee

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CameraSnapView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 45
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a02ed

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    .line 46
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a02f0

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a02f1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    .line 48
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a02ef

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    .line 49
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const v4, 0x7f0a048e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialog:Landroid/view/View;

    const v4, 0x7f0a0492

    .line 50
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogMessage:Landroid/widget/TextView;

    .line 51
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialog:Landroid/view/View;

    const v4, 0x7f0a0494

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogConfirm:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialog:Landroid/view/View;

    const v4, 0x7f0a0493

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogCancel:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const v4, 0x7f0a04bb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    const v4, 0x7f0a04bc

    .line 54
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareMessage:Landroid/widget/TextView;

    .line 55
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    const v4, 0x7f0a04be

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    const v4, 0x7f0a04bf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    new-array p1, v0, [Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogCancel:Landroid/widget/TextView;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogConfirm:Landroid/widget/TextView;

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareMessage:Landroid/widget/TextView;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private fitThin(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-lez v0, :cond_0

    int-to-double v0, v0

    const-wide v2, 0x3fe89374bc6a7efaL    # 0.768

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 3
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    :cond_0
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v1, 0x3f59999a    # 0.85f

    if-lez v0, :cond_1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 5
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 8
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method private getCurStateString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getStateString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "STATE_UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "STATE_PAUSE_AFTER_PLAY"

    return-object p1

    :pswitch_1
    const-string p1, "STATE_SAVE"

    return-object p1

    :pswitch_2
    const-string p1, "STATE_PENDING_SAVE"

    return-object p1

    :pswitch_3
    const-string p1, "STATE_SHARE"

    return-object p1

    :pswitch_4
    const-string p1, "STATE_PENDING_SHARE"

    return-object p1

    :pswitch_5
    const-string p1, "STATE_PENDING_RESUME"

    return-object p1

    :pswitch_6
    const-string p1, "STATE_PAUSED"

    return-object p1

    :pswitch_7
    const-string p1, "STATE_PLAYING"

    return-object p1

    :pswitch_8
    const-string p1, "STATE_PENDING_PLAY"

    return-object p1

    :pswitch_9
    const-string p1, "STATE_WAIT_SURFACE_CREATE"

    return-object p1

    :pswitch_a
    const-string p1, "STATE_IDLE"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasFrame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideShareSheet()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v1, Lmiuix/view/animation/QuarticEaseInInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/QuarticEaseInInterpolator;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    const/16 v1, 0xc8

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hideVVDialog()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialog:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialog:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private initPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "initPlayer"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    .line 4
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0OO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0OO;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    .line 5
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateConsumer:Lio/reactivex/functions/Consumer;

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 8
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0oO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0oO;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    .line 9
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 10
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateConsumer:Lio/reactivex/functions/Consumer;

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 12
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0Oo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO0Oo;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    .line 13
    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateConsumer:Lio/reactivex/functions/Consumer;

    .line 15
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 16
    new-instance v0, Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    .line 17
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setStateListener(Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;)V

    return-void
.end method

.method private initTextureView()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 7
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$2;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private isComposing()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

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

.method private orientationBottomView(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomRotationView:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 5
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v3

    add-int/lit16 v3, v3, -0xa0

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 8
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/lit16 v3, v3, -0xa0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    .line 12
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 13
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 15
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 16
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 18
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setViewBackground(Ljava/lang/Boolean;)V

    .line 19
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomRotationView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomRotationView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomRotationView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 23
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomRotationView:Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private releaseCover()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mFirstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private setUiState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ui state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateEmitter:Lio/reactivex/ObservableEmitter;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setViewBackground(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0800e2

    goto :goto_0

    :cond_1
    const p1, 0x7f0800e1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method private shareMore()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    const v3, 0x7f120472

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Util;->shareMediaToMore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/CharSequence;Z)Z

    return-void
.end method

.method private showCover()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private showExitConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogMessage:Landroid/widget/TextView;

    const v1, 0x7f120470

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogConfirm:Landroid/widget/TextView;

    const v1, 0x7f12046f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogCancel:Landroid/widget/TextView;

    const v1, 0x7f1208f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$8;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$8;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialogCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$9;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$9;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialog:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showExitConfirmNormal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120470

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12046f

    new-instance v2, Lcom/android/camera/fragment/dialog/FragmentLiveReview$6;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$6;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1208f5

    new-instance v2, Lcom/android/camera/fragment/dialog/FragmentLiveReview$5;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$5;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 8
    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$7;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$7;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showShareSheet()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v3, 0x10000

    .line 7
    invoke-virtual {v8, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "no IntentActivities"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->fitThin(Landroid/view/View;)V

    .line 12
    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->fitThin(Landroid/view/View;)V

    .line 13
    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->fitThin(Landroid/view/View;)V

    .line 14
    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareMessage:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->fitThin(Landroid/view/View;)V

    .line 15
    :cond_3
    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemTextMinHeight(Landroid/content/Context;)I

    move-result v4

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemTextHeight(Landroid/content/Context;)I

    move-result v6

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v12, 0x2

    if-le v7, v1, :cond_4

    move v7, v12

    goto :goto_0

    :cond_4
    move v7, v5

    .line 19
    :goto_0
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v6, v4

    mul-int/2addr v6, v7

    add-int/2addr v9, v6

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 20
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v11, v3, 0x4

    .line 21
    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemCount()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/vv/VVShareAdapter;->setShareInfoList(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 24
    :cond_6
    :goto_1
    new-instance v3, Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v6, v3

    move-object v9, v2

    move-object v10, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/fragment/vv/VVShareAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    .line 25
    new-instance v3, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    invoke-direct {v3, v12, v1, v5}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;-><init>(III)V

    .line 26
    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$3;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v3, v1}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageListener(Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;)V

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 28
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->initIndicator(I)V

    if-gt v1, v5, :cond_7

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 30
    :cond_7
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    :goto_2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    if-nez v0, :cond_8

    .line 32
    new-instance v0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    .line 33
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareMessage:Landroid/widget/TextView;

    const v1, 0x7f1208f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShareMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/dialog/FragmentLiveReview$4;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview$4;-><init>(Lcom/android/camera/fragment/dialog/FragmentLiveReview;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :goto_3
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showTime(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3a98

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v0

    const/4 p1, 0x0

    .line 5
    invoke-static {v0, v1, p1, p1}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f0600da

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private startSave(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skip save, caz ui state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skip save, caz composer state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x6

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startSave"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->combineVideoAudio()V

    return-void
.end method

.method private startSaveToLocal()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/storage/mediastore/VideoFile;->setDateTaken(J)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v3, v0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/storage/ImageSaver;->addVideo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;ZZLjava/util/List;)Landroid/net/Uri;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "can\'t add to db."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private updateShutterButtonLocation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
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

    .line 7
    :cond_1
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

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    .line 9
    invoke-static {v2}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Integer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI state consumer get state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p1, v1, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

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

    move-result-object v0

    const v3, 0x7f0b0032

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 11
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 33
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 35
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 38
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f110054

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 41
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showTime(Ljava/util/List;)V

    .line 44
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 46
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public synthetic OooO0O0(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public synthetic OooO0O0(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateEmitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method public synthetic OooO0OO(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    const/4 v2, 0x7

    const/16 v3, 0x9

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-ne p1, v3, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onComposed error, state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_0

    .line 10
    :cond_4
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 11
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 12
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public attemptStartPlay()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startPlay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initTextureView()V

    :goto_0
    return-void
.end method

.method public combineVideoAudio()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "_data"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->stopPlayer()V

    .line 5
    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->useScopedStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "videoFile is NULL, will not save"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/VideoFile;->insertContentValues()Landroid/net/Uri;

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->startCompose(Lcom/android/camera/storage/mediastore/VideoFile;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->startCompose(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 11
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "save path is NULL, will not save"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xffff1

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0089

    return v0
.end method

.method public getSaveContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0215

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTopLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a020f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomRotationView:Landroid/view/ViewGroup;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTopLayout:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0a04a5

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v0, 0x7f0a04a6

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a02f2

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVerticalBottomLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a020e

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a04b7

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCover:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0393

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareAndExit:Landroid/view/ViewGroup;

    .line 15
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->findViewByOrientation(Z)V

    const v0, 0x7f0a0209

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStartProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0a0211

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTimeView:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v4, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v4, 0x7f110054

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    const v0, 0x7f0a0210

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v4, 0x2

    aput-object v0, p1, v4

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array p1, v1, [Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mBottomActionView:Landroid/view/ViewGroup;

    const v0, 0x7f06009a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 48
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 50
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x43340000    # 180.0f

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->orientationBottomView(F)V

    goto :goto_1

    :cond_2
    const/high16 p1, 0x43870000    # 270.0f

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->orientationBottomView(F)V

    goto :goto_1

    :cond_3
    const/high16 p1, 0x42b40000    # 90.0f

    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->orientationBottomView(F)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->orientationBottomView(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAfterFrameAvailable ui state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showCover()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    const/16 p1, 0xa

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_0
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
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTopLayout:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p2

    const p3, 0x7f060094

    invoke-virtual {p2, p3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideVVDialog()Z

    move-result p1

    if-nez p1, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirm()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirmNormal()V

    :cond_4
    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a021c

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveShare:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mLiveDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 5
    :sswitch_0
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_bottom_action"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6
    :sswitch_1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: vv_dialog"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7
    :sswitch_2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: orientation_live_preview_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirm()V

    goto/16 :goto_0

    .line 9
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: live_share_item"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 11
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    .line 12
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    goto/16 :goto_0

    .line 13
    :sswitch_4
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_share_cancel"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    goto/16 :goto_0

    .line 15
    :sswitch_5
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    return-void

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_share"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mi_live_click_share"

    .line 17
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-nez p1, :cond_3

    const/4 p1, 0x7

    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    goto/16 :goto_0

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_b

    .line 22
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSave(Z)V

    goto/16 :goto_0

    .line 23
    :sswitch_6
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_save"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    return-void

    :cond_4
    const-string p1, "mi_live_click_done"

    .line 25
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    if-nez p1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavePath:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 28
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSaveToLocal()V

    .line 29
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    goto :goto_0

    .line 30
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startSave(Z)V

    goto :goto_0

    .line 31
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->quitLiveRecordPreview(Z)V

    goto :goto_0

    .line 32
    :sswitch_7
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v3, :cond_7

    return-void

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_play"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    .line 35
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    if-ne p1, v4, :cond_8

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    goto :goto_0

    :cond_8
    if-ne p1, v3, :cond_9

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->resumePlay()V

    goto :goto_0

    .line 38
    :cond_9
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "skip start play~"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :sswitch_8
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eq p1, v2, :cond_a

    return-void

    .line 40
    :cond_a
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_layout"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0, v1, v4}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    goto :goto_0

    .line 42
    :sswitch_9
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showExitConfirmNormal()V

    :cond_b
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a020d -> :sswitch_9
        0x7f0a020e -> :sswitch_8
        0x7f0a0210 -> :sswitch_7
        0x7f0a0212 -> :sswitch_6
        0x7f0a0213 -> :sswitch_6
        0x7f0a0214 -> :sswitch_5
        0x7f0a021a -> :sswitch_4
        0x7f0a021c -> :sswitch_3
        0x7f0a02ec -> :sswitch_2
        0x7f0a02ed -> :sswitch_6
        0x7f0a02ee -> :sswitch_6
        0x7f0a02ef -> :sswitch_5
        0x7f0a048e -> :sswitch_1
        0x7f0a04a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveProgress:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public onHibernate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHibernate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    :cond_0
    return-void
.end method

.method public onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showShareSheet()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->shareMore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause ui state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->pausePlay(ZZ)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideVVDialog()Z

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->hideShareSheet()Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume ui state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->showCover()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->attemptStartPlay()V

    const/16 v0, 0xa

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    :cond_0
    return-void
.end method

.method public pausePlay(ZZ)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->isComposing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->pausePlayer()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "skip pause play, caz state is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->stopPlayer()V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->pausePlayer()V

    :cond_5
    :goto_1
    return-void
.end method

.method public prepare(Landroid/content/ContentValues;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "prepare fail, state is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaved:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSavedUri:Landroid/net/Uri;

    .line 5
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    const-string/jumbo p2, "resolution"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "x"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 10
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    const/4 p2, 0x1

    .line 11
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoHeight:I

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v2, :cond_1

    .line 13
    iget v3, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoWidth:I

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    .line 14
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    iget-object v8, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mAudioString:Ljava/lang/String;

    .line 15
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/module/impl/component/MiLivePlayer;->init(IIIILjava/util/List;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->startPlay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 18
    :goto_0
    new-instance p1, Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/storage/mediastore/VideoFile;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/storage/mediastore/VideoFile;->initialize(ZLandroid/content/Intent;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, p2}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

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
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->updateShutterButtonLocation()V

    int-to-float p1, p3

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->orientationBottomView(F)V

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
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewShare:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewBack:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPreviewStart:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public quitLiveRecordPreview(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "quitLiveRecordPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string v0, "concat error, action null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->hintFoldTips(Landroid/app/Activity;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUIStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 10
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mComposeStateDisposable:Lio/reactivex/disposables/Disposable;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->release()V

    .line 13
    iput-object v1, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mSegmentData:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method public resumePlay()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mUiState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip resume play, caz state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->getCurStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->resumePlayer()V

    :cond_1
    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->initTextureView()V

    return-void
.end method

.method public startLiveRecordSaving()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    :cond_1
    return-void
.end method

.method public startPlay(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPaused:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->setUiState(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->cancelCompose()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->mPlayer:Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->startPlayer(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegister"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf2

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
