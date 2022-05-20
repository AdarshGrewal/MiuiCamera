.class public Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "BokehSmoothLevelFragment.java"


# instance fields
.field public mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field public mSeekBarMaxProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mSeekBarMaxProgress:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->onLevelSelected(IZ)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0089

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SeekBarCompat;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->initBeautyItems()Ljava/util/List;

    const/16 p1, 0x64

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mSeekBarMaxProgress:I

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result p1

    float-to-int p1, p1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0808d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mSeekBarMaxProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setSeekBarPinProgress(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const v0, 0x7f120417

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    return-void
.end method

.method private onLevelSelected(IZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p2}, Lcom/android/camera/ui/SeekBarCompat;->isCenterTwoWayMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    div-int/lit8 p2, p1, 0x2

    goto :goto_0

    :cond_0
    move p2, p1

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, v2, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p2, 0x6

    .line 7
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    int-to-float p1, p1

    .line 8
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    .line 9
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoBokehRatioChanged()V

    return-void
.end method


# virtual methods
.method public beautyLevelToPosition(II)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0, p2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getAnimateView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object v0
.end method

.method public initBeautyItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SingleCheckAdapter$LevelItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0054

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewCreatedAndJumpOut()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndJumpOut()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndVisibleToUser(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public provideItemHorizontalMargin()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public setEnableClick(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method
