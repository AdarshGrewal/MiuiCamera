.class public Lcom/android/camera/fragment/top/TopExpandAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TopExpandAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public mAnchorViewX:I

.field public mComponentData:Lcom/android/camera/data/data/ComponentData;

.field public mCurrentMode:I

.field public mCurrentValue:Ljava/lang/String;

.field public mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultSelectPosition:I

.field public mExpandListener:Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;

.field public mSelectPosition:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mSelectPosition:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDatas:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mCurrentMode:I

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/top/LabelItemView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 p1, 0x80

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public getAnchorViewX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mAnchorViewX:I

    return v0
.end method

.method public getComponentData()Lcom/android/camera/data/data/ComponentData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultSelectPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDefaultSelectPosition:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDatas:Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    return p1
.end method

.method public getSelectComponentDataItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDatas:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method

.method public getSelectPosition()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mSelectPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDefaultSelectPosition:I

    :cond_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/TopExpandAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/android/camera/fragment/top/LabelItemView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const v4, 0x7f0b0022

    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0b0021

    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 7
    iget v3, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LabelItemView;->setMainImageResource(I)V

    .line 8
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    invoke-virtual {v3, v4}, Lcom/android/camera/customization/ThemeResource;->getShadowBackgroundResource(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LabelItemView;->setMainImageShadowResource(I)V

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LabelItemView;->setMainViewVisibility(I)V

    .line 10
    iget v4, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    if-lez v4, :cond_0

    .line 11
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LabelItemView;->setLabelViewVisibility(I)V

    .line 12
    iget v3, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LabelItemView;->setLabelImageResource(I)V

    .line 13
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    invoke-virtual {v3, v4}, Lcom/android/camera/customization/ThemeResource;->getShadowBackgroundResource(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LabelItemView;->setLabelImageShadowResource(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 14
    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/top/LabelItemView;->setLabelViewVisibility(I)V

    .line 15
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-static {v1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 17
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mCurrentValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    iput p2, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mDefaultSelectPosition:I

    .line 19
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mCurrentValue:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1200ae

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/Oooo00o;

    invoke-direct {p2, v1, v2, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/Oooo00o;-><init>(Lcom/android/camera/fragment/top/LabelItemView;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p2, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    :goto_1
    new-instance p1, Lcom/android/camera/fragment/top/TopExpandAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/top/TopExpandAdapter$1;-><init>(Lcom/android/camera/fragment/top/TopExpandAdapter;)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b0022

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0b0021

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mSelectPosition:I

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mCurrentMode:I

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;

    if-eqz p1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v2, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;->onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;

    .line 9
    :cond_2
    iput-object v0, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mCurrentValue:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/TopExpandAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

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

    const v0, 0x7f0d0181

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setAnchorViewX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter;->mAnchorViewX:I

    return-void
.end method
