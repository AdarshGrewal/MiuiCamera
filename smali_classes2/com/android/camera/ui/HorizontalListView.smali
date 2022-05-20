.class public Lcom/android/camera/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/HorizontalListView$OnSingleTapDownListener;,
        Lcom/android/camera/ui/HorizontalListView$OnValueChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VISIBLE_ITEM_COUNT:I = 0x6

.field public static final MIN_DELTA_FOR_SCROLLING:I = 0xa

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mBlockNotification:Z

.field public mCurrentX:I

.field public mDataChanged:Z

.field public mDataObserver:Landroid/database/DataSetObserver;

.field public mDisplayOffset:I

.field public mGesture:Landroid/view/GestureDetector;

.field public mIsRecording:Z

.field public mIsScrollingPerformed:Z

.field public mItemWidth:I

.field public mLastSelectImageListItem:Landroid/view/View;

.field public mLeftViewIndex:I

.field public mMainContentProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

.field public mMaxVisibleItemCount:I

.field public mMaxX:I

.field public mNextX:I

.field public mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field public mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field public mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field public mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mPaddingWidth:I

.field public mPresetWidth:I

.field public mPreviousSelectViewIndex:I

.field public mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mRightViewIndex:I

.field public mScroller:Landroid/widget/Scroller;

.field public mSelectCenter:Z

.field public mSelectViewIndex:I

.field public mTouchDown:Z

.field public mTouchMoveEnable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/HorizontalListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    const p2, 0x7fffffff

    .line 4
    iput p2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 5
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 6
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    const/16 p2, 0xb4

    .line 8
    iput p2, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    .line 9
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    .line 10
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    .line 11
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    .line 13
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchMoveEnable:Z

    const/4 p1, 0x6

    .line 14
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxVisibleItemCount:I

    .line 15
    new-instance p1, Lcom/android/camera/ui/HorizontalListView$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/HorizontalListView$1;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 16
    new-instance p1, Lcom/android/camera/ui/HorizontalListView$4;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/HorizontalListView$4;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 17
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/HorizontalListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->justify(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/HorizontalListView;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mMainContentProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return p1
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/HorizontalListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/HorizontalListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/HorizontalListView;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private cacheChildItem(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private fillList(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListRight(II)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 6
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/HorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .locals 5

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, v4, :cond_0

    .line 5
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 8
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 10
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    .line 11
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillListRight(II)V
    .locals 5

    :goto_0
    add-int v0, p1, p2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v0, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget v4, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v1, v4, :cond_0

    .line 5
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    const/4 v1, -0x1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 10
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_1

    .line 11
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 12
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-gez v0, :cond_2

    .line 13
    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 14
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getChildWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    return v0
.end method

.method private declared-synchronized initView()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    .line 7
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 8
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    const v2, 0x7fffffff

    .line 9
    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    .line 10
    iget-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v2, :cond_0

    .line 11
    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    .line 12
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 13
    :cond_0
    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 14
    :goto_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 15
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private justify(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge v0, v3, :cond_1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v0, v0, 0x2

    .line 5
    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-le v2, v0, :cond_3

    move v2, v0

    .line 6
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    if-eq v2, v0, :cond_6

    if-nez p1, :cond_5

    .line 7
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isShown()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/HorizontalListView;->scrollTo(I)V

    goto :goto_2

    .line 9
    :cond_5
    :goto_1
    iput v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    :cond_6
    :goto_2
    return-void
.end method

.method private loadItems()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureChildWidth()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxVisibleItemCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 4
    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 6
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 7
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v0, :cond_1

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    return-void
.end method

.method private notifyItemSelect(Landroid/view/View;IJ)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v3, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v3, :cond_1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .line 3
    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 4
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v4, :cond_2

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-wide v8, p3

    .line 5
    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 8
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 10
    :cond_4
    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-direct {p0, p3}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result p3

    if-ne p2, p3, :cond_6

    .line 11
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 13
    :cond_5
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mLastSelectImageListItem:Landroid/view/View;

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method private positionItems(I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v1

    .line 5
    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    div-int/lit8 v2, v2, 0x2

    .line 6
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 8
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-ge v8, v2, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-le v8, v2, :cond_0

    move v8, v4

    goto :goto_1

    :cond_0
    move v8, v5

    :goto_1
    add-int v9, v0, p1

    .line 10
    invoke-virtual {v7, v0, v5, v9, v1}, Landroid/view/View;->layout(IIII)V

    if-ge v0, v2, :cond_1

    if-le v9, v2, :cond_1

    move v0, v4

    goto :goto_2

    :cond_1
    move v0, v5

    .line 11
    :goto_2
    invoke-virtual {v7, v0}, Landroid/view/View;->setActivated(Z)V

    .line 12
    iget-boolean v10, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v10, :cond_2

    if-eqz v0, :cond_2

    if-nez v8, :cond_2

    .line 13
    invoke-direct {p0, v3}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result v0

    .line 14
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-direct {p0, v7, v0, v10, v11}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    move v0, v9

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move v2, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, p1

    if-gtz v3, :cond_0

    .line 3
    iget v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->getChildWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    .line 4
    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    .line 5
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    sub-int/2addr v2, v0

    .line 7
    invoke-virtual {p0, v0, v2}, Landroid/widget/AdapterView;->removeViewsInLayout(II)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move v2, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 11
    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->cacheChildItem(Landroid/view/View;)V

    .line 12
    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v2, v2, -0x1

    .line 13
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-le v0, v2, :cond_3

    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v0, v2

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterView;->removeViewsInLayout(II)V

    :cond_3
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private toDataIndex(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method private toViewIndex(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 7
    invoke-direct {p0, v1}, Lcom/android/camera/ui/HorizontalListView;->justify(Z)V

    .line 8
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    goto :goto_0

    .line 9
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    .line 10
    iput-boolean v1, p0, Lcom/android/camera/ui/HorizontalListView;->mBlockNotification:Z

    :goto_0
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    return v0
.end method

.method public isTouchMoveEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchMoveEnable:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float p1, p3

    float-to-int v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onLayout(ZIIII)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->initView()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 7
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 8
    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalListView;->mDataChanged:Z

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    .line 9
    :goto_0
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 10
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->getCurrX()I

    move-result p4

    .line 11
    iput p4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 12
    :cond_2
    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    if-gtz p4, :cond_3

    .line 13
    iput p3, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 14
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 15
    :cond_3
    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget p5, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    if-lt p4, p5, :cond_4

    .line 16
    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxX:I

    iput p4, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    .line 17
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 18
    :cond_4
    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    iget p5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int/2addr p4, p5

    .line 19
    iget p5, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iput p5, p0, Lcom/android/camera/ui/HorizontalListView;->mCurrentX:I

    .line 20
    invoke-direct {p0, p4}, Lcom/android/camera/ui/HorizontalListView;->removeNonVisibleItems(I)V

    .line 21
    invoke-direct {p0, p4}, Lcom/android/camera/ui/HorizontalListView;->fillList(I)V

    .line 22
    invoke-direct {p0, p4}, Lcom/android/camera/ui/HorizontalListView;->positionItems(I)V

    .line 23
    iget-object p4, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->isFinished()Z

    move-result p4

    if-eqz p4, :cond_8

    if-eqz p1, :cond_5

    goto :goto_1

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->loadItems()V

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchDown:Z

    if-nez p1, :cond_9

    .line 26
    iput-boolean p3, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 27
    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz p1, :cond_6

    .line 28
    new-instance p1, Lcom/android/camera/ui/HorizontalListView$3;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/HorizontalListView$3;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 29
    :cond_6
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    if-eq p1, p3, :cond_9

    .line 30
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le p1, p3, :cond_7

    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-gt p1, p3, :cond_7

    .line 31
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result p1

    .line 32
    iget p3, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iget p4, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    invoke-virtual {p0, p3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 33
    iget-object p3, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p3

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    .line 34
    :cond_7
    iget p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    goto :goto_2

    .line 35
    :cond_8
    :goto_1
    new-instance p1, Lcom/android/camera/ui/HorizontalListView$2;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/HorizontalListView$2;-><init>(Lcom/android/camera/ui/HorizontalListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    .line 37
    :cond_a
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    .line 6
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    .line 7
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 8
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->measureChildWidth()V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalListView;->reset()V

    return-void
.end method

.method public setAdapterWithInitPostion(Landroid/widget/ListAdapter;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->justify(Z)V

    return-void
.end method

.method public setIsRecording(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsRecording:Z

    return-void
.end method

.method public setItemWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mItemWidth:I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectCenter:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPaddingWidth:I

    .line 4
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mDisplayOffset:I

    :cond_0
    return-void
.end method

.method public setMainContentProtocol(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mMainContentProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    return-void
.end method

.method public setMaxVisibleItemCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mMaxVisibleItemCount:I

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPresetWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mPresetWidth:I

    return-void
.end method

.method public setSelection(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toViewIndex(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/HorizontalListView;->mPreviousSelectViewIndex:I

    .line 4
    iput p1, p0, Lcom/android/camera/ui/HorizontalListView;->mSelectViewIndex:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/HorizontalListView;->mIsRecording:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0OO()V

    .line 8
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/HorizontalListView;->mLeftViewIndex:I

    if-le p1, v0, :cond_2

    iget v1, p0, Lcom/android/camera/ui/HorizontalListView;->mRightViewIndex:I

    if-ge p1, v1, :cond_2

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->toDataIndex(I)I

    move-result p1

    .line 11
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/camera/ui/HorizontalListView;->notifyItemSelect(Landroid/view/View;IJ)V

    .line 12
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mIsScrollingPerformed:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->justify(Z)V

    :cond_3
    return-void
.end method

.method public setTouchMoveEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/HorizontalListView;->mTouchMoveEnable:Z

    return-void
.end method
