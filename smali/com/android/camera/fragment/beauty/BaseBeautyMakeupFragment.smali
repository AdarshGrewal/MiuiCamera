.class public abstract Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "BaseBeautyMakeupFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;
    }
.end annotation


# static fields
.field public static final EXTRA_CLEAR:I = 0x2

.field public static final EXTRA_NONE:I = 0x3

.field public static final EXTRA_NULL:I = -0x1

.field public static final EXTRA_RESET:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BaseBeautyMakeup"


# instance fields
.field public mAlphaElement:I

.field public mAugmentItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mBetaElement:I

.field public mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

.field public mExtraItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mExtraItemWidth:I

.field public mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

.field public mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

.field public mExtraNeedScroll:Z

.field public mExtraSelectPosition:I

.field public mExtraTotalWidth:I

.field public mHeaderCustomWidth:I

.field public mHeaderRecyclerView:Landroid/widget/LinearLayout;

.field public mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mItemMargin:I

.field public mItemWidth:I

.field public mLastSelectedPosition:I

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

.field public mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

.field public mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

.field public mNeedScroll:Z

.field public mPositionFirstItem:I

.field public mPositionLastItem:I

.field public mSelectedParam:I

.field public mSelectedPosition:I

.field public mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLastSelectedPosition:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionLastItem:I

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraSelectPosition:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLastSelectedPosition:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLastSelectedPosition:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraSelectPosition:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->notifyExtraItemChanged(II)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionLastItem:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onExtraClick(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;ILcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->scrollIfNeed(ILcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->notifyItemChanged(II)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private calcExtraItemWidthAndNeedScroll()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraTotalWidth:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    .line 5
    iget v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraTotalWidth:I

    sub-int v4, v3, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v2, v4

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    .line 6
    div-int/2addr v3, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraNeedScroll:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraNeedScroll:Z

    .line 9
    iget v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraTotalWidth:I

    iget v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    div-int v3, v2, v0

    .line 10
    :goto_0
    iput v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemWidth:I

    return-void
.end method

.method private calcItemWidthAndNeedScroll()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mTotalWidth:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    .line 5
    iget v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mTotalWidth:I

    sub-int v4, v3, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v2, v4

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    .line 6
    div-int/2addr v3, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mNeedScroll:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mNeedScroll:Z

    .line 9
    iget v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mTotalWidth:I

    iget v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    div-int v3, v2, v0

    .line 10
    :goto_0
    iput v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemWidth:I

    return-void
.end method

.method private hasAlpha()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasBeta()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initAlphaItem()Lcom/android/camera/data/data/TypeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/data/data/TypeItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/data/data/TypeItem;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    const/4 v2, 0x1

    const v3, 0x7f0803cf

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0801fc

    .line 3
    iput v1, v0, Lcom/android/camera/data/data/TypeItem;->mIconRes:I

    const v1, 0x7f120230

    .line 4
    iput v1, v0, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    goto :goto_0

    .line 5
    :cond_1
    iput v3, v0, Lcom/android/camera/data/data/TypeItem;->mIconRes:I

    const v1, 0x7f1203cc

    .line 6
    iput v1, v0, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    goto :goto_0

    .line 7
    :cond_2
    iput v3, v0, Lcom/android/camera/data/data/TypeItem;->mIconRes:I

    const v1, 0x7f120233

    .line 8
    iput v1, v0, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    :goto_0
    return-object v0
.end method

.method private initBetaItem()Lcom/android/camera/data/data/TypeItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/data/data/TypeItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/data/data/TypeItem;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/android/camera/data/data/TypeItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0803cb

    .line 3
    iput v1, v0, Lcom/android/camera/data/data/TypeItem;->mIconRes:I

    const v1, 0x7f12020d

    .line 4
    iput v1, v0, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    goto :goto_0

    :cond_1
    const v1, 0x7f0803cf

    .line 5
    iput v1, v0, Lcom/android/camera/data/data/TypeItem;->mIconRes:I

    const v1, 0x7f120233

    .line 6
    iput v1, v0, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    :goto_0
    return-object v0
.end method

.method private final initItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getShineType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->getSupportedBeautyItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyExtraItemChanged(II)V
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {v1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f120465

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    if-le p2, v0, :cond_4

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private notifyItemChanged(II)V
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {v1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f120465

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    if-le p2, v0, :cond_4

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private onExtraClick(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->hasAlpha()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->hasBeta()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onBeautyNoneClick()V

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onClearClick()V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onResetClick()V

    :goto_1
    return-void
.end method

.method private scrollIfNeed(ILcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    if-eq v0, p1, :cond_4

    .line 7
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return v2

    :cond_4
    return v1
.end method

.method private setExtraItemInCenter(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private setItemInCenter(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method


# virtual methods
.method public augmentItemList()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initAlphaItem()Lcom/android/camera/data/data/TypeItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->hasBeta()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initBetaItem()Lcom/android/camera/data/data/TypeItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionLastItem:I

    .line 12
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    return-void
.end method

.method public getAnimateView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderRecyclerView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public abstract getClassString()Ljava/lang/String;
.end method

.method public getExtraList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getListItemMargin()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isNeedScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getShineType()Ljava/lang/String;
.end method

.method public abstract initExtraType()V
.end method

.method public initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$4;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a01b0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mHeaderRecyclerView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0257

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance p1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;->setScrollEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initExtraType()V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->augmentItemList()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->calcItemWidthAndNeedScroll()V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isNeedScroll()Z

    move-result p1

    if-nez p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;->setScrollEnabled(Z)V

    .line 14
    :cond_0
    new-instance p1, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAugmentItemList:Ljava/util/List;

    iget v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    iget v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionLastItem:I

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    .line 15
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setRotation(I)V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    new-instance v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 22
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    .line 23
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 24
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 25
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 26
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->setItemInCenter(I)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public isExtraNeedScroll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraNeedScroll:Z

    return v0
.end method

.method public isNeedScroll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mNeedScroll:Z

    return v0
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public abstract onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
.end method

.method public onBeautyNoneClick()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->clearBeauty()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "attr_operate_state"

    const-string v2, "attr_click_beauty_face_none"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_beauty_face"

    .line 6
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public abstract onClearClick()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0053

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onExtraItemSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraSelectPosition:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraSelectPosition:I

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->setSkinColor(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraSelectPosition:I

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->scrollIfNeed(ILcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraSelectPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->notifyItemChanged(II)V

    :cond_3
    return-void
.end method

.method public abstract onResetClick()V
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndVisibleToUser(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget p1, p1, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public openExtraView(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getExtraList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;->setScrollEnabled(Z)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->calcExtraItemWidthAndNeedScroll()V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isExtraNeedScroll()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;->setScrollEnabled(Z)V

    :cond_1
    const v0, 0x7f0a0255

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 12
    new-instance p1, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    invoke-direct {p1, v0, v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    .line 13
    new-instance v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;-><init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    new-instance p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 17
    new-instance p1, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {p1}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x96

    .line 18
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 19
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 20
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraItemList:Ljava/util/List;

    if-nez p1, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->reSelectExtraItem(Ljava/lang/String;)V

    .line 24
    iget p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraSelectPosition:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->setExtraItemInCenter(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    iget p2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraSelectPosition:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->setSelectedPosition(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    iget p2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->setRotation(I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0xc8

    invoke-static {p1, v1, p2}, Lcom/android/camera/animation/FolmeUtils;->animationSlide(Landroid/view/View;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a00eb

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    move v0, v2

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraMakeupListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setRotation(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, p1, :cond_2

    .line 14
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_3

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->setRotation(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 20
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_4
    if-ge v2, p1, :cond_4

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 p2, p2, 0x1

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_5

    :cond_5
    return-void
.end method

.method public reSelectExtraItem(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public selectFirstItem()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    iget v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    iget-object v1, v1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    iget v3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/TypeItem;

    iget v2, v2, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;IZ)V

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLastSelectedPosition:I

    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->notifyItemChanged(II)V

    :cond_1
    return-void
.end method

.method public setDegree(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setRotation(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->setRotation(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setListPadding(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isNeedScroll()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07011c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 5
    :goto_0
    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;III)V

    return-void
.end method
