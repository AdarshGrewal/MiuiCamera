.class public Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;
.super Lcom/android/camera/fragment/CommonRecyclerViewHolder;
.source "WatermarkHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WatermarkHolder"


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mIndex:I

.field public mSelectedIndicator:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    const v0, 0x7f0a028f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0290

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindHolder(ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getResRvItem()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getImageView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mIndex:I

    return v0
.end method

.method public getSelectedIndicator()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public updateSelectItem(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f08016e

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getTintResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/holder/WatermarkHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
