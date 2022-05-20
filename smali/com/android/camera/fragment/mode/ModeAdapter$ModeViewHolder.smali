.class public Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mode/ModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeViewHolder"
.end annotation


# instance fields
.field public mFgView:Landroid/view/View;

.field public mIconLayout:Landroid/widget/FrameLayout;

.field public mIconView:Landroid/widget/ImageView;

.field public mNameView:Landroid/widget/TextView;

.field public mProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a029e

    const v2, 0x7f0a029a

    const v3, 0x7f0a0299

    const v4, 0x7f0a029c

    if-ne v0, v4, :cond_0

    const v0, 0x7f0a029b

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mFgView:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x7f0a029d

    if-ne v0, v4, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mFgView:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method private addModeBackground(Landroid/view/ViewGroup;)Lcom/android/camera/ui/ModeBackground;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/ui/ModeBackground;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ModeBackground;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0290

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private addWaterBox(Landroid/view/ViewGroup;)Lcom/android/camera/ui/WaterBox;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/ui/WaterBox;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/WaterBox;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WaterBox;->setColor(I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/WaterBox;->setValue(FZ)V

    const v2, 0x7f0a0290

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 6
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public setNameDownloading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    const v1, 0x7f120375

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setNameWaiting()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    const v1, 0x7f120377

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public setProgress(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x64

    const v5, 0x7f0a029c

    if-ne v0, v5, :cond_4

    if-ne p1, v4, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-eq p2, v2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    instance-of v0, p2, Lcom/android/camera/ui/NormalRoundView;

    if-eqz v0, :cond_2

    .line 6
    check-cast p2, Lcom/android/camera/ui/NormalRoundView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/NormalRoundView;->setFill(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    instance-of v0, p2, Lcom/android/camera/ui/NormalRoundView;

    if-eqz v0, :cond_2

    .line 8
    check-cast p2, Lcom/android/camera/ui/NormalRoundView;

    invoke-virtual {p2, v3}, Lcom/android/camera/ui/NormalRoundView;->setFill(Z)V

    :cond_2
    :goto_0
    if-ge p1, v4, :cond_9

    if-ltz p1, :cond_9

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    if-nez p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->addModeBackground(Landroid/view/ViewGroup;)Lcom/android/camera/ui/ModeBackground;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    check-cast p2, Lcom/android/camera/ui/ModeBackground;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ModeBackground;->setProgress(I)V

    if-lez p1, :cond_9

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameDownloading()V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f0a029d

    if-ne v0, v5, :cond_9

    if-ne p1, v4, :cond_6

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 17
    iput-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    const v1, 0x7f0602ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_1
    if-ge p1, v4, :cond_9

    if-ltz p1, :cond_9

    .line 20
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->addWaterBox(Landroid/view/ViewGroup;)Lcom/android/camera/ui/WaterBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_8

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 24
    check-cast v0, Lcom/android/camera/ui/WaterBox;

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/ui/WaterBox;->setValue(FZ)V

    :cond_8
    if-lez p1, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameDownloading()V

    :cond_9
    :goto_2
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a029c

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a029d

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mFgView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_1
    :goto_0
    return-void
.end method
