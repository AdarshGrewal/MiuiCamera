.class public Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FastMotionDescriptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->onBindViewHolder(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mType:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mTextDesc:Landroid/widget/TextView;

    iget-object p2, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mTypeDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoDesc:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoDesc:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    iget v3, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoCover:I

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-virtual {p2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-virtual {p2, v2}, Lcom/android/camera/ui/FastmotionTextureVideoView;->setLoop(Z)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    new-instance v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;-><init>(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;)V

    iget-object p1, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-virtual {p1}, Lcom/android/camera/ui/FastmotionTextureVideoView;->start()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0047

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0048

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0174

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/FastmotionTextureVideoView;

    const v0, 0x7f0a0171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0173

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0175

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/MaskCircleCornerView;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070205

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v4, v3

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v5, v4

    iput v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    float-to-double v4, v4

    int-to-double v6, v3

    const-wide v8, 0x40031eb851eb851fL    # 2.39

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v8

    double-to-int p2, v4

    add-int/lit8 v0, p2, -0x5

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x5

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    double-to-int p2, v6

    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    new-instance p2, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
