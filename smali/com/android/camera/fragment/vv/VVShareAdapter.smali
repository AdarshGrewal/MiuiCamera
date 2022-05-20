.class public Lcom/android/camera/fragment/vv/VVShareAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VVShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mItemTextHeight:I

.field public mItemWidth:I

.field public mNeedMarquee:Z

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mShareInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/view/View$OnClickListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    iput-object p3, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mShareInfoList:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 5
    iput p5, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mItemWidth:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mNeedMarquee:Z

    .line 8
    invoke-static {p1}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemTextHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mItemTextHeight:I

    return-void
.end method

.method public static synthetic OooO00o(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public static getItemTextHeight(Landroid/content/Context;)I
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const v1, 0x7f120479

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x400999999999999aL    # 3.2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 8
    invoke-static {p0}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemTextMinHeight(Landroid/content/Context;)I

    move-result p0

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getItemTextMinHeight(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0707fc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mShareInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVShareAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mShareInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a021b

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a021f

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mItemTextHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-boolean p2, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mNeedMarquee:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 13
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOo;

    invoke-direct {p2, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/Oooooo/OooOOo;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVShareAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d00c4

    .line 3
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v1, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mItemWidth:I

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    aput-object p1, p2, v0

    .line 5
    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    .line 6
    new-instance p2, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setShareInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVShareAdapter;->mShareInfoList:Ljava/util/List;

    return-void
.end method
