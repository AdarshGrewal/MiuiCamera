.class public Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
.source "FragmentMimojiFullScreen.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isVideoSaved:Z

.field public mAlertTopHintHideRunnable:Ljava/lang/Runnable;

.field public mBottomActionView:Landroid/view/ViewGroup;

.field public mBottomLayout:Landroid/view/ViewGroup;

.field public mBottomTimbreLayout:Landroid/view/ViewGroup;

.field public mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field public mCancelProgress:Landroid/widget/ProgressBar;

.field public mCombineProgress:Landroid/widget/ImageView;

.field public mConcatProgress:Landroid/widget/ProgressBar;

.field public mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

.field public mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

.field public mHandler:Landroid/os/Handler;

.field public mIsOnShare:Z

.field public mMImojiViewLayout:Landroid/view/View;

.field public mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

.field public mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mMimojiViewStub:Landroid/view/ViewStub;

.field public mPreviewBack:Landroid/widget/ImageView;

.field public mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPreviewCoverBitmap:Landroid/graphics/Bitmap;

.field public mPreviewCoverView:Landroid/widget/ImageView;

.field public mPreviewLayout:Landroid/widget/FrameLayout;

.field public mPreviewShare:Landroid/widget/ImageView;

.field public mPreviewStart:Landroid/widget/ImageView;

.field public mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

.field public mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

.field public mSaveUri:Landroid/net/Uri;

.field public mSavedPath:Ljava/lang/String;

.field public mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

.field public mShareCancel:Landroid/view/View;

.field public mShareLayout:Landroid/view/ViewGroup;

.field public mShareProgress:Landroid/widget/ProgressBar;

.field public mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mTimeView:Landroid/widget/TextView;

.field public mTopLayout:Landroid/widget/FrameLayout;

.field public mTotalRecording:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO0Oo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->isVideoSaved:Z

    return p1
.end method

.method private adjustViewBackground()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    const v1, 0x7f060094

    const v2, 0x7f07005f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move v2, v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v1

    add-int/2addr v1, v0

    move v0, v4

    move v2, v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move v2, v4

    .line 9
    :goto_0
    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    .line 10
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 14
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    return-void
.end method

.method private adjustViewTintColor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06034f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/customization/ThemeResource;->isFullScreen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private alertTintColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->isYellowTintColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private checkAndShare()Z
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mIsOnShare:Z

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "MIMOJI"

    const-string v3, "mp4"

    .line 4
    invoke-static {v2, v3}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v3, v2, v5, v0}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->copy2ShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSaveUri:Landroid/net/Uri;

    .line 7
    iput-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const/4 v2, 0x2

    .line 8
    invoke-static {v2, v3}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-interface {v3}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSaveUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v1}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->isVideoSaved:Z

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSaveUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const v5, 0x7f1208da

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/camera/Util;->shareMediaToMore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/CharSequence;Z)Z

    .line 12
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideTimbreLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private getFragmentMiMoji()Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v2, "getFragmentMiMoji(): fragment is null"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v2, "getFragmentMiMoji(): fragment is not added yet"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    return-object v0
.end method

.method private getMimojiPara()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    if-eqz v0, :cond_6

    .line 2
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    array-length v2, v0

    if-gt v2, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v2, v0, v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, " "

    :goto_1
    const-string v1, "cartoon"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "human"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "person"

    goto :goto_2

    :cond_5
    const-string v1, "custom"

    .line 8
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_3
    const-string v0, "null"

    return-object v0
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-interface {v2}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private hideShareSheet()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v1, Lmiuix/view/animation/QuarticEaseInInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/QuarticEaseInInterpolator;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    const/16 v1, 0xc8

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private hideTimbreLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiPanelState(I)V

    .line 3
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;ZZ)Z

    :cond_0
    return-void
.end method

.method private initMimojiView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0a020e

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0192

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a043e

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TextureVideoView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    const v0, 0x7f0a009f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    const v0, 0x7f0a0190

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01d4

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    const v0, 0x7f0a0430

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    const v0, 0x7f0a0209

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0219

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    const v0, 0x7f0a0220

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0208

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0211

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    const v0, 0x7f0a0213

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 14
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    const v0, 0x7f0a0212

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a020d

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f0a0214

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f0a0210

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    .line 22
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->adjustViewTintColor()V

    const v0, 0x7f0a021d

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a021e

    .line 24
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a021a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareCancel:Landroid/view/View;

    .line 27
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    .line 35
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    const v2, 0x7f0a0215

    .line 36
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTopLayout:Landroid/widget/FrameLayout;

    .line 37
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 39
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 40
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/view/View;

    .line 41
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array v3, v0, [Landroid/view/View;

    .line 42
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    .line 43
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    const v4, 0x7f0a04a5

    .line 44
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    const v4, 0x7f0a04a6

    .line 45
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    .line 46
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    .line 49
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignBottom()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array v2, v5, [Landroid/view/View;

    .line 54
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    aput-object v3, v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v2, v5, [Landroid/view/View;

    .line 55
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v1, v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 57
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 58
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 59
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 60
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v3, v5, [Landroid/view/View;

    .line 62
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    aput-object v4, v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v3, v5, [Landroid/view/View;

    .line 63
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v4, v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/view/View;

    .line 64
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, p1, v1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    aput-object v1, p1, v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    .line 65
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    const v0, 0x7f06009a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method private onPreviewResume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mIsOnShare:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mIsOnShare:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->resumePlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pausePlay()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void resumePlay[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->pausePlay()Z

    return-void
.end method

.method private removeTimbreLayout()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiPanelState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterProtocol()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji void removeTimbreLayout[] Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private resumePlay()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void resumePlay[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->resumePlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void resumePlay fail"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private shareMore()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f120472

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v2, "failed to share video shareMore "

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showExitConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->createExitConfirmDialog(Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;)V

    return-void
.end method

.method private showShareSheet()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 4
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v2, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    array-length v2, v2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_3

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_1
    if-ge v7, v2, :cond_2

    .line 10
    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    aget-object v4, v4, v7

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    new-instance v4, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_ICON:[I

    aget v10, v3, v7

    sget-object v3, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_NAME:[I

    aget v11, v3, v7

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 12
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 13
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v5, "no default share entry"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v3

    goto :goto_4

    .line 14
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget v0, v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-le v0, v3, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_7

    .line 15
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v5, "not match default share strategy"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_4
    if-eqz v0, :cond_8

    .line 16
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->shareMore()V

    return-void

    .line 17
    :cond_8
    new-instance v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    add-int/lit8 v6, v2, 0x1

    const v9, 0x7f0802d7

    const v10, 0x7f12008d

    const-string v7, "com.android.camera"

    const-string v8, "more"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$2;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$2;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070365

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 20
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40b00000    # 5.5f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 21
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    mul-int/lit8 v5, v0, 0x2

    sub-int/2addr v3, v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v3, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->getItemCount()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_9

    goto :goto_5

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->setShareInfoList(Ljava/util/List;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 25
    :cond_a
    :goto_5
    new-instance v3, Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v3, v1, p0, v2}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    .line 26
    new-instance v1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FullScreen"

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 28
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 29
    new-instance v1, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 30
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addHeader(Landroid/view/View;)V

    .line 33
    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    :goto_6
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result v0

    if-lez v0, :cond_b

    .line 38
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 40
    :cond_b
    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v1, Lmiuix/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/QuarticEaseOutInterpolator;-><init>()V

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    const/16 v1, 0xc8

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    .line 45
    :cond_c
    :goto_7
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v1, "no IntentActivities"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showTimbreLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiPanelState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0190

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->refreshMimojiList()I

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method private startCombine()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO00o;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startPlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->startPlay()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiPreview()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {p1, v2, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;ZZ)Z

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {p1, v0, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;ZZ)Z

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 19
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfc

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p1, :cond_6

    .line 21
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    invoke-interface {p1, v0, p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->init(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;)Z

    move-result v2

    :cond_6
    if-eqz v2, :cond_7

    .line 22
    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->startPlay()V

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    .line 25
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {p1, p2}, Lcom/android/camera/Util;->showFoldTips(Landroid/app/Activity;I)Lio/reactivex/disposables/Disposable;

    return-void

    .line 26
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->alertTop(IIJ)V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->quitMimojiRecordPreview()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 3
    instance-of v1, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->quitMimojiRecordPreview()V

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCombine()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const-string v1, "mimoji_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const-string v1, "mimoji_deal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "MIMOJI"

    const-string v1, "mp4"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->copy2ShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSaveUri:Landroid/net/Uri;

    .line 7
    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineSuccess([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    :goto_0
    return-void
.end method

.method public alertTop(IIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->alertTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public concatResult(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void concatResult[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO0OO;

    invoke-direct {v1, p0, p2, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO0OO;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff3

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d009d

    return v0
.end method

.method public getMimojiVideoSavePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimojiVideoSaveUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPreviewCover()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0284

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiViewStub:Landroid/view/ViewStub;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    return-void
.end method

.method public isMimojiRecordPreviewShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OooO0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 5
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a019b

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    .line 10
    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o000O()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f0a019b

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p1, p2, v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideShareSheet()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showExitConfirm()V

    :goto_0
    return v1

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getFragmentMiMoji()Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;->onBackEvent(I)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    .line 7
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "mimoji_play_share"

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 9
    :sswitch_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_bottom_action"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10
    :sswitch_1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onClick: live_share_item"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    .line 12
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideShareSheet()V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    const-string v3, "more"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->shareMore()V

    goto/16 :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    :cond_3
    move-object v7, v0

    .line 18
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    .line 19
    :try_start_0
    invoke-static {v0, v7}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-interface {v1}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v2}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v6

    .line 21
    iget-object v3, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 22
    :catch_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto/16 :goto_0

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto/16 :goto_0

    .line 24
    :sswitch_2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_share_cancel"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideShareSheet()V

    goto/16 :goto_0

    .line 26
    :sswitch_3
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: mimoji_preview_share"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 28
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string v0, "concat not finished, skip share~"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getMimojiPara()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_6

    .line 31
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "uri null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto :goto_0

    .line 33
    :sswitch_4
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: mimoji_preview_save"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    .line 35
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getMimojiPara()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mimoji_play_save"

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->pausePlay()V

    .line 37
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 40
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->startCombine()V

    goto :goto_0

    .line 41
    :sswitch_5
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_play"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideShareSheet()V

    .line 43
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->startPlay()V

    goto :goto_0

    .line 44
    :sswitch_6
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_layout"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 46
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideTimbreLayout()V

    return-void

    .line 47
    :sswitch_7
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: live_preview_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showExitConfirm()V

    goto :goto_0

    .line 49
    :sswitch_8
    sget-object p1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: btn_mimoji_change_timbre"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showTimbreLayout()V

    :cond_6
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a009f -> :sswitch_8
        0x7f0a020d -> :sswitch_7
        0x7f0a020e -> :sswitch_6
        0x7f0a0210 -> :sswitch_5
        0x7f0a0212 -> :sswitch_4
        0x7f0a0213 -> :sswitch_4
        0x7f0a0214 -> :sswitch_3
        0x7f0a021a -> :sswitch_2
        0x7f0a021c -> :sswitch_1
        0x7f0a04a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCombineError()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO0o0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs onCombineSuccess([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCombineSuccess() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 4
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO0O0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO0O0/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onMimojiSaveToLocalFinished(Landroid/net/Uri;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIMOJI onMimojiSaveToLocalFinished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->pausePlay()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onPreviewResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->isVideoSaved:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 5
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CREATE_MODLE_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->isVideoSaved:Z

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    .line 8
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

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

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    :cond_1
    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->provideRotateItem(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method public quitMimojiRecordPreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiActionState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->setMimojiActionState(I)V

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mIsOnShare:Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->setPreviewCover(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showPreviewCover(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->removeTimbreLayout()V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->onDestory()V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xf9

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isMaterialDownloading()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->cancelMaterialDownload()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    return-void
.end method

.method public setPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRecordingTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTotalRecording:J

    return-void
.end method

.method public showPreviewCover(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :goto_0
    return-void
.end method

.method public startMimojiRecordPreview()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->isVideoSaved:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->initMimojiView(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 10
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 11
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 12
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showPreviewCover(Z)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->adjustViewBackground()V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->adjustViewTintColor()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiPanelState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 17
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 18
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 20
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 21
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 23
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 24
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 25
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 26
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 27
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 28
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 29
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 30
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 31
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 32
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x3ec28f5c    # 0.38f

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 33
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/customization/ThemeResource;->isFullScreen()Z

    move-result v1

    const v3, 0x7f110054

    if-eqz v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 36
    :goto_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    .line 38
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 40
    :cond_3
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 41
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xf6

    .line 42
    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v1, :cond_4

    .line 43
    iget-wide v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTotalRecording:J

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3a98

    .line 44
    invoke-static/range {v3 .. v8}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v3

    .line 45
    invoke-static {v3, v4, v0, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    const v4, 0x7f0600da

    invoke-virtual {v3, v4}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    .line 50
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public startMimojiRecordSaving()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xf9

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->removeTimbreLayout()V

    .line 4
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
