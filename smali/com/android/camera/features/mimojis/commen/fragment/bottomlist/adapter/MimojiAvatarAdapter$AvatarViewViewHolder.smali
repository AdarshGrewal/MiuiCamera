.class public Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
.source "MimojiAvatarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AvatarViewViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
        "Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;",
        ">;"
    }
.end annotation


# instance fields
.field public downlaodLayout:Landroid/widget/FrameLayout;

.field public mAdapterSelectState:Ljava/lang/String;

.field public mDotIndicator:Landroid/view/View;

.field public mItemImageView:Landroid/widget/ImageView;

.field public mMultiIndicator:Landroid/view/View;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mRectIndicator:Landroid/view/View;

.field public mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    invoke-static {p2, v0}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;I)V

    const v0, 0x7f0a027e

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a027f

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mRectIndicator:Landroid/view/View;

    const v0, 0x7f0a0282

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mDotIndicator:Landroid/view/View;

    const v0, 0x7f0a027d

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mMultiIndicator:Landroid/view/View;

    const v0, 0x7f0a027c

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a049c

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0129

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->downlaodLayout:Landroid/widget/FrameLayout;

    .line 11
    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->access$000(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private updateContentDescription(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;ZI)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    if-lez v0, :cond_0

    .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget p1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    if-lez v0, :cond_1

    .line 5
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget p1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1200ae

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateItemDownloadState(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v0

    const v1, 0x7f0803e9

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->isCloudItem()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    const-string v1, "add_state"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3eae147b    # 0.34f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f110048

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder$1;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V

    invoke-static {v0, v1}, Lcom/android/camera/animation/FolmeUtils;->animateShrink(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unknown state"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120480

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private updateSelectIndicator(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mMultiIndicator:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-array p1, v0, [Landroid/view/View;

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mRectIndicator:Landroid/view/View;

    aput-object p2, p1, v2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mDotIndicator:Landroid/view/View;

    aput-object p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->alphaGone([Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/android/camera/Util;->correctionSelectView(Landroid/view/View;Z)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 5
    iget-object v3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->isPrefabModel(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v3

    if-le v3, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->isIsPreHuman()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mAdapterSelectState:Ljava/lang/String;

    const-string v4, "close_state"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-array v3, v1, [Landroid/view/View;

    .line 8
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mDotIndicator:Landroid/view/View;

    aput-object v4, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->alphaShow([Landroid/view/View;)V

    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    new-array v3, v1, [Landroid/view/View;

    .line 9
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mDotIndicator:Landroid/view/View;

    aput-object v4, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->alphaGone([Landroid/view/View;)V

    move v3, v2

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getDefaultFrame()I

    move-result v4

    if-lez v4, :cond_5

    .line 11
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mMultiIndicator:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->isIsNeedAnim()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mMultiIndicator:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v5

    if-nez v5, :cond_4

    const/high16 v5, -0x3ccc0000    # -180.0f

    goto :goto_2

    :cond_4
    const/high16 v5, 0x43340000    # 180.0f

    :goto_2
    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    sget v5, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    int-to-long v5, v5

    .line 15
    invoke-virtual {v4, v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 17
    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setIsNeedAnim(Z)V

    .line 18
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v4

    if-le v4, v0, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->isIsPreHuman()Z

    move-result p1

    if-nez p1, :cond_6

    const p1, 0x7f0800cd

    goto :goto_3

    :cond_6
    const p1, 0x7f0800cc

    .line 19
    :goto_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mRectIndicator:Landroid/view/View;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mRectIndicator:Landroid/view/View;

    float-to-double v4, p2

    const-wide v6, 0x3ffd47ae147ae148L    # 1.83

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int p2, v4

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v4

    invoke-virtual {p1, v0, p2, v4}, Lcom/android/camera/customization/ThemeResource;->setBackgroundTintStroke(Landroid/view/View;II)V

    new-array p1, v1, [Landroid/view/View;

    .line 21
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mRectIndicator:Landroid/view/View;

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->alphaShow([Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Lcom/android/camera/Util;->correctionSelectView(Landroid/view/View;Z)V

    .line 23
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOo0O/OooO00o;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public getRotateViews()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mMultiIndicator:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mDotIndicator:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->downlaodLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public setData(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->access$100(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;)Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    const-string v2, "close_state"

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mAdapterSelectState:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mMultiIndicator:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "add_state"

    const/4 v5, 0x7

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    const v6, 0x7f080307

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    invoke-virtual {p1, v5}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mStateImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 11
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    .line 13
    invoke-virtual {p1, v5}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    .line 14
    :cond_4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    const v3, 0x7f0802fa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->getFrame()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl2:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 16
    :goto_1
    iget-object v3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->coverPath:Ljava/lang/String;

    if-eqz v3, :cond_7

    new-instance v3, Ljava/io/File;

    iget-object v6, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->coverPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 17
    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->coverPath:Ljava/lang/String;

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->isCloudItem()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->iconUrl:Ljava/lang/String;

    :cond_8
    :goto_2
    if-nez v2, :cond_9

    return-void

    .line 19
    :cond_9
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    new-instance v6, Lcom/bumptech/glide/signature/ObjectKey;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    .line 23
    invoke-static {v3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;->access$200(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 25
    :goto_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x2

    if-le v2, v6, :cond_a

    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->updateItemDownloadState(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;)V

    .line 27
    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v2

    if-eq v2, v5, :cond_a

    new-array p1, v6, [Landroid/view/View;

    .line 28
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mRectIndicator:Landroid/view/View;

    aput-object p2, p1, v3

    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mDotIndicator:Landroid/view/View;

    aput-object p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->alphaGone([Landroid/view/View;)V

    return-void

    .line 29
    :cond_a
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->mAdapterSelectState:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    move v1, v3

    .line 30
    :goto_4
    invoke-direct {p0, p1, v1}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->updateSelectIndicator(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)V

    .line 31
    invoke-direct {p0, p1, v1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->updateContentDescription(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;ZI)V

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter$AvatarViewViewHolder;->setData(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;I)V

    return-void
.end method
