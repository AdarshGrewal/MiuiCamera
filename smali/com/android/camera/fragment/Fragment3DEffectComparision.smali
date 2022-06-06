.class public Lcom/android/camera/fragment/Fragment3DEffectComparision;
.super Landroidx/fragment/app/Fragment;
.source "Fragment3DEffectComparision.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mImageViewBack:Lcom/android/camera/ui/ColorImageView;

.field public mLottieAnimation3d:Lcom/airbnb/lottie/LottieAnimationView;

.field public mLottieAnimationOriginal:Lcom/airbnb/lottie/LottieAnimationView;

.field public mMediaPlayer3D:Landroid/media/MediaPlayer;

.field public mMediaPlayerOriginal:Landroid/media/MediaPlayer;

.field public mTextView3d:Landroid/widget/TextView;

.field public mTextViewOriginal:Landroid/widget/TextView;

.field public mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/Fragment3DEffectComparision;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/Fragment3DEffectComparision;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextViewOriginal:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/Fragment3DEffectComparision;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextView3d:Landroid/widget/TextView;

    return-object p0
.end method

.method private setAnimationView(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    return-void
.end method


# virtual methods
.method public expandViewTouchDelegate(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->right:I

    new-instance v0, Landroid/view/TouchDelegate;

    invoke-direct {v0, v2, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    const-class v1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_0
    const-class v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    sget-object v0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01d7

    if-eq p1, v0, :cond_6

    const v0, 0x7f0a03e7

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a03ea

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/camera/fragment/Fragment3DEffectComparision$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/Fragment3DEffectComparision$2;-><init>(Lcom/android/camera/fragment/Fragment3DEffectComparision;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimation3d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimation3d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimationOriginal:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f110009

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/Fragment3DEffectComparision;->setAnimationView(Lcom/airbnb/lottie/LottieAnimationView;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11000a

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextViewOriginal:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextView3d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/camera/fragment/Fragment3DEffectComparision$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/Fragment3DEffectComparision$3;-><init>(Lcom/android/camera/fragment/Fragment3DEffectComparision;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimationOriginal:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimationOriginal:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimation3d:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f110007

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/Fragment3DEffectComparision;->setAnimationView(Lcom/airbnb/lottie/LottieAnimationView;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110008

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextView3d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextViewOriginal:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d004b

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a034c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mView:Landroid/view/View;

    const p2, 0x7f0a0485

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimationOriginal:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0a0484

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimation3d:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0a03ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextViewOriginal:Landroid/widget/TextView;

    const p2, 0x7f0a03e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextView3d:Landroid/widget/TextView;

    const p2, 0x7f0a01d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/ColorImageView;

    iput-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mImageViewBack:Lcom/android/camera/ui/ColorImageView;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextViewOriginal:Landroid/widget/TextView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextView3d:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextViewOriginal:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextView3d:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mImageViewBack:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mImageViewBack:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextViewOriginal:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextView3d:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mImageViewBack:Lcom/android/camera/ui/ColorImageView;

    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextViewOriginal:Landroid/widget/TextView;

    aput-object v1, p2, p3

    iget-object p3, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mTextView3d:Landroid/widget/TextView;

    aput-object p3, p2, v0

    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->touchTint([Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mView:Landroid/view/View;

    new-instance p3, Lcom/android/camera/fragment/Fragment3DEffectComparision$1;

    invoke-direct {p3, p0}, Lcom/android/camera/fragment/Fragment3DEffectComparision$1;-><init>(Lcom/android/camera/fragment/Fragment3DEffectComparision;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mLottieAnimation3d:Lcom/airbnb/lottie/LottieAnimationView;

    const p3, 0x7f110007

    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/Fragment3DEffectComparision;->setAnimationView(Lcom/airbnb/lottie/LottieAnimationView;I)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11000a

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayerOriginal:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110008

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/Fragment3DEffectComparision;->mMediaPlayer3D:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
