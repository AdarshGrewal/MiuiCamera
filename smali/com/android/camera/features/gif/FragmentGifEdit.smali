.class public Lcom/android/camera/features/gif/FragmentGifEdit;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentGifEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$MimojiGifEditor;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff4

.field public static final TAG:Ljava/lang/String; = "MimojiFragmentGifEdit"


# instance fields
.field public backtrackAction:Ljava/lang/Runnable;

.field public isBackToPreviewState:Z

.field public mBackBtn:Landroid/widget/ImageView;

.field public mConcatProgressBar:Landroid/widget/ProgressBar;

.field public mConfirmBtn:Landroid/widget/ImageView;

.field public mContext:Landroid/content/Context;

.field public mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

.field public mDuration:J

.field public mGifBitmap:Landroid/graphics/Bitmap;

.field public mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

.field public mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

.field public mGifViewLayout:Landroid/view/View;

.field public mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

.field public mIlShare:Landroid/widget/LinearLayout;

.field public mIsNeedCombine:Z

.field public mIsShare:Z

.field public mLlTextureContainer:Landroid/widget/FrameLayout;

.field public mPreviewCoverView:Landroid/widget/ImageView;

.field public mTextureView:Landroid/view/TextureView;

.field public mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    new-instance v0, Lcom/android/camera/features/gif/FragmentGifEdit$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/FragmentGifEdit$1;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->backtrackAction:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/gif/FragmentGifEdit;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/gif/FragmentGifEdit;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->backtrackAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/features/gif/FragmentGifEdit;)Lcom/android/camera/features/gif/GifMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    return-object p0
.end method

.method private backToPreview()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MimojiFragmentGifEdit"

    const-string v1, "getActivity is null "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo/OooO00o/OooO00o;-><init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initGifMediaPlayer()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O000O()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    const-string v2, "close_state"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v2, Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v3, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;->setGifMediaPlayer(Lcom/android/camera/features/gif/GifMediaPlayer;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setTextureView(Landroid/view/TextureView;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setPreviewCoverView(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setConcatProgressBar(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->setGifEditLayout(Lcom/android/camera/features/gif/GifEditLayout;)V

    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/features/gif/FragmentGifEdit;->combineVideoAudio(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method private saveGif(Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_0

    const v1, 0x7f120037

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->announceForAccessibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/ImageFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/ImageFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/camera/storage/ImageSaver;->addGif(Ljava/lang/String;Landroid/net/Uri;II)V

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    return-void
.end method

.method private shareGif(Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/ImageFile;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/ImageFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/camera/storage/ImageSaver;->addGifSync(Ljava/lang/String;Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "image/gif"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f12088b

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->deleteMimojiCache(I)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    :cond_1
    const-string v0, "MimojiFragmentGifEdit"

    const-string v1, "mimoji void onCombineError[] cameraAction null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    goto :goto_0

    :cond_2
    const-string v1, "mimoji void onCombineError[] recordState null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->backtrackAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public combineVideoAudio(Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-nez p1, :cond_0

    const-string p1, "MimojiFragmentGifEdit"

    const-string p2, "mimoji void combineVideoAudio[savePath] mGifMediaPlayer null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setVideoUrl(Ljava/lang/String;J)V

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object p2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mDuration:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->openVideoUrl(Ljava/lang/String;J)V

    return-void
.end method

.method public coverGifError()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    return-void
.end method

.method public coverGifSuccess(Lcom/android/camera/storage/mediastore/ImageFile;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->shareGif(Lcom/android/camera/storage/mediastore/ImageFile;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->saveGif(Lcom/android/camera/storage/mediastore/ImageFile;)V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff4

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0080

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "MimojiFragmentGifEdit"

    const-string v0, " rootview null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mLlTextureContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mLlTextureContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a0378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    iget-object v2, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifViewPresenter;->initView(Landroid/view/View;)V

    const v0, 0x7f0a023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIlShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    const v0, 0x7f0a00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/gif/GifEditLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    const v0, 0x7f0a01f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConfirmBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xf6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->getGifBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->getGifBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->getGifBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConcatProgressBar:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->initGifMediaPlayer()V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mVideoPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "MimojiFragmentGifEdit"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p1, "onClick: ll_gif_share"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mimoji_gif_share"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEditChanged()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->shareGif(Lcom/android/camera/storage/mediastore/ImageFile;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->startVideo2Gif()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo p1, "onClick: iv_gif_confirm"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mimoji_gif_save"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsShare:Z

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEditChanged()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mConvertImageFile:Lcom/android/camera/storage/mediastore/ImageFile;

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->saveGif(Lcom/android/camera/storage/mediastore/ImageFile;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {p1}, Lcom/android/camera/features/gif/GifMediaPlayer;->startVideo2Gif()V

    goto :goto_0

    :sswitch_2
    const-string/jumbo p1, "onClick: iv_gif_back"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo p1, "onClick: gif_texture_view"

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    invoke-virtual {p1, v1}, Lcom/android/camera/features/gif/GifEditLayout;->hideBorder(Z)V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a01b0 -> :sswitch_3
        0x7f0a01f2 -> :sswitch_2
        0x7f0a01f3 -> :sswitch_1
        0x7f0a023e -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0080

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/gif/FragmentGifEdit;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    const-string v0, "MimojiFragmentGifEdit"

    const-string/jumbo v1, "onDestroy  ReleaseMedia"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->pausePlay()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifEditLayout:Lcom/android/camera/features/gif/GifEditLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifEditLayout;->hideBorder(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->isBackToPreviewState:Z

    iget-boolean v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mIsNeedCombine:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->initView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->resumePlay()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public operateGifPannelVisibleState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewPresenter:Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/gif/GifViewPresenter;->operateGifPannelVisibleState(I)V

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

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "provideAnimateElement, animateInElements"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "resetType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MimojiFragmentGifEdit"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifViewLayout:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/features/gif/FragmentGifEdit;->backToPreview()V

    :cond_0
    return-void
.end method

.method public reconfigPreviewRadio(I)V
    .locals 0

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfb

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/features/gif/GifMediaPlayer;->releaseMedia(Z)V

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mGifBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public setPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public showPreviewCover(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit;->mPreviewCoverView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfb

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
