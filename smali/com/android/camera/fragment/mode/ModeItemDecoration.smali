.class public Lcom/android/camera/fragment/mode/ModeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ModeItemDecoration.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ModeItemDecoration"


# instance fields
.field public mBottomMargin:I

.field public mContext:Landroid/content/Context;

.field public mHorMargin:I

.field public mModeListHorMargin:I

.field public mPerLineCount:I

.field public mTopMargin:I

.field public mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V
    .locals 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mType:I

    invoke-interface {p2}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mPerLineCount:I

    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getPanelWidth(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    goto :goto_1

    :cond_1
    if-ne p3, v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    :goto_1
    iget v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mPerLineCount:I

    mul-int v3, v2, v1

    sub-int/2addr p2, v3

    iget v3, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mModeListHorMargin:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr p2, v3

    mul-int/2addr v2, v4

    div-int/2addr p2, v2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    invoke-static {p1, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getTopMarginForNormal(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    if-eq p3, v4, :cond_5

    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    if-ne p3, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-static {p1, v1, p2}, Lcom/android/camera/Display;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p1

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705ab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p1, v1

    :goto_4
    iput p1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget p4, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mHorMargin:I

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mBottomMargin:I

    iget v1, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mTopMargin:I

    iget v2, p0, Lcom/android/camera/fragment/mode/ModeItemDecoration;->mType:I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    if-eq p2, v2, :cond_6

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p2

    if-eq p2, v5, :cond_3

    if-eq p2, v4, :cond_3

    const/4 p3, 0x6

    if-ne p2, p3, :cond_6

    :cond_3
    move p4, v3

    move v0, p4

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->isFooter4PopupStyle(II)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {p1, p4, v1, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
