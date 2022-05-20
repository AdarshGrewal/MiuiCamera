.class public Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;
.super Lcom/android/camera/fragment/EffectItemAdapter;
.source "FragmentLighting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/lighting/FragmentLighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightingAdapter"
.end annotation


# instance fields
.field public mComponentRunningLighting:Lcom/android/camera/data/data/ComponentData;

.field public mContent:[Ljava/lang/String;

.field public mCount:I

.field public mCurrentMode:I

.field public mDegree:I

.field public mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;Lcom/android/camera/data/data/runing/ComponentRunningLighting;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/android/camera/fragment/EffectItemAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;)V

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mCurrentMode:I

    .line 3
    iput-object p3, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4
    iput-object p4, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mComponentRunningLighting:Lcom/android/camera/data/data/ComponentData;

    .line 5
    invoke-virtual {p4}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mCount:I

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->updateContent(Landroid/content/Context;)V

    return-void
.end method

.method private updateContent(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mContent:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mComponentRunningLighting:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mContent:[Ljava/lang/String;

    iget v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mCount:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0256

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mComponentRunningLighting:Lcom/android/camera/data/data/ComponentData;

    iget v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mComponentRunningLighting:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 6
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0258

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    iget v4, v2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez v4, :cond_0

    .line 8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const-string v4, ""

    .line 9
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    iget v4, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 11
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v5, v2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iget-object v6, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 12
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 14
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 16
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00de

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;-><init>(Lcom/android/camera/fragment/EffectItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mDegree:I

    return-void
.end method

.method public updateData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mComponentRunningLighting:Lcom/android/camera/data/data/ComponentData;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->mCount:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/lighting/FragmentLighting$LightingAdapter;->updateContent(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
