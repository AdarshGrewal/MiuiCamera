.class public Lcom/android/camera/fragment/mode/ModeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;,
        Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final FLAG_ENTER:I = 0x2

.field public static final FLAG_SWITCH:I = 0x4

.field public static final MAX_TOP_ITEM_COUNT:I = 0xa

.field public static final TAG:Ljava/lang/String; = "ModeAdapter"

.field public static final TYPE_CAPTURE:I = 0x3

.field public static final TYPE_DOWNLOADING:I = 0x9

.field public static final TYPE_EDIT:I = 0x5

.field public static final TYPE_FOOTER:I = 0x6

.field public static final TYPE_HEADER:I = 0x1

.field public static final TYPE_LINE:I = 0x2

.field public static final TYPE_PENDING_DOWNLOAD:I = 0x7

.field public static final TYPE_SCANNER:I = 0x8

.field public static final TYPE_VIDEO:I = 0x4


# instance fields
.field public mAnimFlags:I

.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mContext:Landroid/content/Context;

.field public mDegree:F

.field public mFragmentType:I

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mMiScanner:Lcom/android/camera/scanner/IMiScanner;

.field public mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field public mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

.field public mVmFeature:Lcom/android/camera/data/observeable/VMFeature;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/FragmentMoreModeBase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-interface {p2}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    .line 6
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 7
    iput-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMiScanner:Lcom/android/camera/scanner/IMiScanner;

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mode/ModeAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/android/camera/fragment/mode/ModeAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mode/ModeAdapter$2;-><init>(Lcom/android/camera/fragment/mode/ModeAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-object v0
.end method

.method private getItem(I)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMiScanner:Lcom/android/camera/scanner/IMiScanner;

    invoke-interface {v0}, Lcom/android/camera/scanner/IMiScanner;->isSupportScanner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    .line 5
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v0, 0x0

    const v1, 0x7f080326

    const/4 v2, -0x1

    const v3, 0x7f120573

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMiScanner:Lcom/android/camera/scanner/IMiScanner;

    invoke-interface {p1}, Lcom/android/camera/scanner/IMiScanner;->startScannerApp()V

    return-void
.end method

.method public calculatePos(Landroidx/recyclerview/widget/RecyclerView;I)[I
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v4

    if-ne v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    add-int/lit8 p1, v3, -0x1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 3
    iget-object v4, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v4}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v4

    div-int/2addr p1, v4

    add-int/2addr p1, v0

    add-int/2addr p1, v0

    if-ge p2, v3, :cond_2

    sub-int/2addr p2, v0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {p1}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p1

    div-int p1, p2, p1

    add-int/2addr p1, v0

    add-int/2addr p1, v0

    aput p1, v1, v2

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {p1}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p1

    rem-int/2addr p2, p1

    add-int/2addr p2, v0

    aput p2, v1, v0

    goto :goto_2

    :cond_2
    if-le p2, v3, :cond_3

    sub-int/2addr p2, v3

    sub-int/2addr p2, v0

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v3}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v3

    div-int v3, p2, v3

    add-int/2addr v3, p1

    add-int/2addr v3, v0

    add-int/2addr v3, v0

    aput v3, v1, v2

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {p1}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result p1

    rem-int/2addr p2, p1

    add-int/2addr p2, v0

    aput p2, v1, v0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public createChangeItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMiScanner:Lcom/android/camera/scanner/IMiScanner;

    invoke-interface {v0}, Lcom/android/camera/scanner/IMiScanner;->isSupportScanner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    return v0

    .line 4
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x5

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/4 v4, 0x2

    if-eq v0, v3, :cond_7

    const/4 v5, 0x3

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_a

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x6

    return p1

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_3

    return v4

    :cond_3
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_4

    return v5

    :cond_4
    const/16 v1, 0xa2

    if-ne v0, v1, :cond_5

    const/4 p1, 0x4

    return p1

    .line 4
    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v1, v0}, Lcom/android/camera/fragment/mode/IMoreMode;->modeDownloading(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p1, 0x9

    return p1

    .line 5
    :cond_6
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v1, v0}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    .line 6
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_8

    return v1

    .line 7
    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMiScanner:Lcom/android/camera/scanner/IMiScanner;

    invoke-interface {v0}, Lcom/android/camera/scanner/IMiScanner;->isSupportScanner()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_9

    const/16 p1, 0x8

    return p1

    .line 8
    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    :cond_a
    if-nez p1, :cond_b

    return v3

    .line 9
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xff

    if-ne v0, v3, :cond_c

    return v1

    .line 10
    :cond_c
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/mode/IMoreMode;->modeShouldDownload(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    .line 11
    :cond_d
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getRotate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    return v0
.end method

.method public isDataChange()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_3

    move v3, v1

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v6, v6, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data lost."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->createTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 7
    new-instance v0, Lcom/android/camera/fragment/mode/ModeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$1;-><init>(Lcom/android/camera/fragment/mode/ModeAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;I)V
    .locals 13

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 6
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9
    iget-object v5, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    iget-object v7, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v7}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getHeaderHeightForNormal(Landroid/content/Context;III)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1c

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, v4, :cond_1c

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, v1, :cond_1c

    .line 13
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItem(I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    .line 14
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget v1, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget v6, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_4
    :goto_0
    iget v1, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    const/4 v6, -0x1

    const/4 v7, 0x7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x5

    if-eq v1, v6, :cond_12

    .line 22
    iget v6, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v6, v4, :cond_5

    .line 23
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    iget-object v6, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    iget v10, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    const v11, 0x7f06030a

    invoke-virtual {v1, v6, v10, v11}, Lcom/android/camera/customization/ThemeResource;->setBackgroundColor(Landroid/view/View;II)V

    goto :goto_1

    .line 24
    :cond_5
    iget-object v10, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    if-ne v6, v3, :cond_6

    iget v1, v0, Lcom/android/camera/data/data/ComponentDataItem;->mNewIconRes:I

    :cond_6
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    :goto_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x3f61cac1    # 0.882f

    goto :goto_2

    .line 26
    :cond_7
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x3f5020c5    # 0.813f

    goto :goto_2

    :cond_8
    move v1, v8

    .line 27
    :goto_2
    iget-object v6, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 28
    iget-object v6, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 29
    iget v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setRotation(F)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v1

    if-eq v1, v9, :cond_11

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v6, 0x8

    if-ne v1, v6, :cond_9

    goto/16 :goto_4

    .line 31
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v1

    if-eq v1, v7, :cond_b

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v6, 0x9

    if-ne v1, v6, :cond_a

    goto :goto_3

    :cond_a
    const/16 v0, 0x64

    .line 32
    invoke-virtual {p1, v0, v5}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(IZ)V

    goto/16 :goto_5

    .line 33
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez v1, :cond_c

    .line 34
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v6, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1, v6}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    .line 35
    :cond_c
    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mVmFeature:Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz v1, :cond_10

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getDownloadingProgress(I)I

    move-result v0

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v6

    const/16 v10, 0x10

    if-ne v6, v10, :cond_d

    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x11

    if-ne v11, v12, :cond_d

    .line 41
    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameDownloading()V

    .line 42
    invoke-virtual {p1, v5, v5}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(IZ)V

    goto :goto_5

    :cond_d
    if-ne v6, v10, :cond_e

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v10, 0x12

    if-ne v1, v10, :cond_e

    .line 44
    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameWaiting()V

    .line 45
    invoke-virtual {p1, v5, v5}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(IZ)V

    goto :goto_5

    :cond_e
    const/16 v1, 0x1000

    if-ne v6, v1, :cond_f

    .line 46
    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameDownloading()V

    .line 47
    invoke-virtual {p1, v0, v5}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(IZ)V

    goto :goto_5

    .line 48
    :cond_f
    invoke-virtual {p1, v5, v5}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(IZ)V

    goto :goto_5

    .line 49
    :cond_10
    invoke-virtual {p1, v5, v5}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(IZ)V

    goto :goto_5

    .line 50
    :cond_11
    :goto_4
    invoke-virtual {p1, v5, v5}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(IZ)V

    .line 51
    :cond_12
    :goto_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, v3, :cond_15

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v2, :cond_13

    goto :goto_6

    .line 53
    :cond_13
    iget-object v0, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 54
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v0, v3, :cond_14

    .line 55
    iget-object v0, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f060305

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 58
    :cond_14
    iget-object v0, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v6, 0x7f060343

    invoke-virtual {v1, v6}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 59
    :cond_15
    :goto_6
    iget-object v0, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 60
    iget-object v0, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0602f8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    :goto_7
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1c

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_16

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v7, :cond_16

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v9, :cond_1c

    .line 67
    :cond_16
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result v0

    if-ne v0, v3, :cond_19

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v9, :cond_17

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    invoke-static {v0, v4}, Lcom/android/camera/display/Display;->getMoreModeTabRow(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 69
    invoke-interface {v1}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v1

    mul-int/2addr v0, v1

    if-lt p2, v0, :cond_18

    .line 70
    :cond_17
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    .line 71
    :cond_18
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object v0

    iget-object p1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    sub-int/2addr p2, v4

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startShowNewAnimation(Landroid/view/View;I)V

    goto :goto_8

    .line 72
    :cond_19
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v9, :cond_1a

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    invoke-static {v0, v5}, Lcom/android/camera/display/Display;->getMoreModeTabRow(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 73
    invoke-interface {v1}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v1

    mul-int/2addr v0, v1

    if-lt p2, v0, :cond_1b

    .line 74
    :cond_1a
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    .line 75
    :cond_1b
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int/2addr p2, v4

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startShowOldAnimation(Landroid/view/View;I)V

    :cond_1c
    :goto_8
    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 78
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;

    if-eqz v0, :cond_4

    .line 79
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;

    .line 80
    iget p3, p2, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->type:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget p3, p2, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->downloadState:I

    const/16 v0, 0x11

    if-ne p3, v0, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameDownloading()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x12

    if-ne p3, v0, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setNameWaiting()V

    goto :goto_0

    .line 84
    :cond_3
    iget p2, p2, Lcom/android/camera/fragment/mode/ModeAdapter$PlayLoad;->progress:I

    const/4 p3, 0x1

    .line 85
    invoke-virtual {p1, p2, p3}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setProgress(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;
    .locals 6

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    const v1, 0x7f0d013f

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    if-ne p2, v3, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d013d

    .line 4
    invoke-virtual {p2, v0, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    if-ne p2, v4, :cond_1

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d013e

    .line 7
    invoke-virtual {p2, v0, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_4

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 10
    invoke-virtual {p2, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    new-instance p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    if-ne p2, v4, :cond_4

    .line 13
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    iget-object v2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 15
    invoke-interface {v2}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/fragment/mode/MoreModeHelper;->getHeaderHeightForNormal(Landroid/content/Context;III)I

    move-result v0

    invoke-direct {p2, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    new-instance p2, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 18
    :cond_4
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v0, v2, :cond_5

    const v1, 0x7f0d0140

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    new-instance v0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    iget v1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mFragmentType:I

    if-ne v1, v3, :cond_6

    .line 23
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    if-ne p2, v1, :cond_7

    .line 24
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOoO/OooO0o0;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooOoO/OooO0o0;-><init>(Lcom/android/camera/fragment/mode/ModeAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 25
    :cond_7
    iget-object p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :goto_0
    iget p2, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setRotation(F)V

    new-array p2, v4, [Landroid/view/View;

    .line 27
    iget-object v1, v0, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconLayout:Landroid/widget/FrameLayout;

    aput-object v1, p2, v5

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :goto_1
    return-object v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/ModeAdapter;->onViewAttachedToWindow(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->setRotation(F)V

    return-void
.end method

.method public setAnimFlags(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mAnimFlags:I

    return-void
.end method

.method public setRotate(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;->mDegree:F

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
