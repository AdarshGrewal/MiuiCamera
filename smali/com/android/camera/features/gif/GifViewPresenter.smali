.class public Lcom/android/camera/features/gif/GifViewPresenter;
.super Ljava/lang/Object;
.source "GifViewPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final GIF_EDIT_SHOW:I = 0x12f

.field public static final Gif_EDIT_HIDE:I = 0xca

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

.field public mIsAccelerateOpen:Z

.field public mIsClearBgOpen:Z

.field public mIsReverseOpen:Z

.field public mLlAccelerate:Landroid/widget/LinearLayout;

.field public mLlAccelerate2:Landroid/widget/LinearLayout;

.field public mLlClearBg:Landroid/widget/LinearLayout;

.field public mLlClearBgOut:Landroid/widget/LinearLayout;

.field public mLlReverse:Landroid/widget/LinearLayout;

.field public mLlReverse2:Landroid/widget/LinearLayout;

.field public mLlThreeButton:Landroid/widget/LinearLayout;

.field public mLlTwoButton:Landroid/widget/LinearLayout;

.field public mRlGifBottomOperate:Landroid/widget/RelativeLayout;

.field public rlGifConsume:Landroid/widget/RelativeLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/gif/GifViewPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/gif/GifViewPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    .line 5
    iput-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private doAccelerateGif()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->enableSpeedFilter(Z)V

    return-void
.end method

.method private doClearGifBackgroud()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->enableVideoSegmentFilter(Z)V

    return-void
.end method

.method private doReverseGif()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->enableReverseFilter(Z)V

    return-void
.end method

.method private initGifView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0351

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a034e

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->rlGifConsume:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a022b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0a022c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0229

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a022a

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBgOut:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0223

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0224

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0230

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0231

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x5

    new-array p1, p1, [Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->updateOperateState()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifViewPresenter;->initGifView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    sget-object v0, Lcom/android/camera/features/gif/GifViewPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick reverse"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->updateOperateState()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->doReverseGif()V

    const-string v0, "mimoji_gif_reverse"

    .line 7
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :sswitch_1
    sget-object v0, Lcom/android/camera/features/gif/GifViewPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick clear bg"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->updateOperateState()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->doClearGifBackgroud()V

    const-string v0, "mimoji_gif_remove_background"

    .line 12
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :sswitch_2
    sget-object v0, Lcom/android/camera/features/gif/GifViewPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClick accelerate"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->updateOperateState()V

    .line 16
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifViewPresenter;->doAccelerateGif()V

    const-string v0, "mimoji_gif_speed"

    .line 17
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOOOo;

    invoke-direct {v0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOOOo;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0223 -> :sswitch_2
        0x7f0a0224 -> :sswitch_2
        0x7f0a0229 -> :sswitch_1
        0x7f0a0230 -> :sswitch_0
        0x7f0a0231 -> :sswitch_0
    .end sparse-switch
.end method

.method public operateGifPannelVisibleState(I)V
    .locals 1

    const/16 v0, 0xca

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setGifMediaPlayer(Lcom/android/camera/features/gif/GifMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/android/camera/features/gif/GifMediaPlayer;

    return-void
.end method

.method public updateOperateState()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f1200ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    const v2, 0x7f120518

    const v3, 0x7f08018b

    const v4, 0x7f08018a

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0oO0Ooo()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v5, 0x8

    if-eqz v1, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v6, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v6}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsClearBgOpen:Z

    const v2, 0x7f120519

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 20
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    :goto_2
    iget-boolean v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mIsReverseOpen:Z

    const v2, 0x7f12051d

    if-eqz v1, :cond_4

    .line 23
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 31
    :goto_3
    iget-object v0, p0, Lcom/android/camera/features/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
