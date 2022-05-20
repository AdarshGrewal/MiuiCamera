.class public Lcom/android/camera/fragment/top/LabelItemView;
.super Landroid/widget/FrameLayout;
.source "LabelItemView.java"


# instance fields
.field public mLabelImageView:Lcom/android/camera/ui/ColorImageView;

.field public mMainImageView:Lcom/android/camera/ui/ColorImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/LabelItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/LabelItemView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0253

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/top/LabelItemView;->mMainImageView:Lcom/android/camera/ui/ColorImageView;

    const v1, 0x7f0a01f1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    return-void
.end method


# virtual methods
.method public getLabelView()Lcom/android/camera/ui/ColorImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    return-object v0
.end method

.method public getMainView()Lcom/android/camera/ui/ColorImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mMainImageView:Lcom/android/camera/ui/ColorImageView;

    return-object v0
.end method

.method public isLabelVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setColorAndRefresh(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mMainImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mMainImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :cond_1
    return-void
.end method

.method public setLabelImageResource(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setLabelImageShadowResource(I)V
    .locals 1

    if-gez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setLabelViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mLabelImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMainImageResource(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mMainImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMainImageShadowResource(I)V
    .locals 1

    if-gez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/LabelItemView;->mMainImageView:Lcom/android/camera/ui/ColorImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mMainImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setMainViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/LabelItemView;->mMainImageView:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
