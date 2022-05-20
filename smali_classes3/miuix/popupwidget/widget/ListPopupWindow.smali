.class public Lmiuix/popupwidget/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;,
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;,
        Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;,
        Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;,
        Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mContext:Landroid/content/Context;

.field public mDropDownAlwaysVisible:Z

.field public mDropDownAnchorView:Landroid/view/View;

.field public mDropDownHeight:I

.field public mDropDownHorizontalOffset:I

.field public mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

.field public mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field public mDropDownVerticalOffset:I

.field public mDropDownVerticalOffsetSet:Z

.field public mDropDownWidth:I

.field public mForceIgnoreOutsideTouch:Z

.field public mHandler:Landroid/os/Handler;

.field public final mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

.field public mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mListItemExpandMaximum:I

.field public mModal:Z

.field public mObserver:Landroid/database/DataSetObserver;

.field public mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

.field public mPromptPosition:I

.field public mPromptView:Landroid/view/View;

.field public final mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

.field public final mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

.field public mShowDropDownRunnable:Ljava/lang/Runnable;

.field public mTempRect:Landroid/graphics/Rect;

.field public final mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x10102ff

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10102ff

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    .line 5
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 6
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    .line 7
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    const v0, 0x7fffffff

    .line 8
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    const/4 v0, -0x2

    .line 9
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    .line 10
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 12
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 13
    iput v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 16
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 17
    new-instance v0, Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-void
.end method

.method public static synthetic access$1000(Lmiuix/popupwidget/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-object p0
.end method

.method public static synthetic access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method private buildDropDown()I
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 3
    new-instance v5, Lmiuix/popupwidget/widget/ListPopupWindow$1;

    invoke-direct {v5, p0}, Lmiuix/popupwidget/widget/ListPopupWindow$1;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    iput-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 4
    new-instance v5, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    iget-boolean v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v6, v4

    invoke-direct {v5, v0, v6}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 5
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_0
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 10
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 11
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    new-instance v6, Lmiuix/popupwidget/widget/ListPopupWindow$2;

    invoke-direct {v6, p0}, Lmiuix/popupwidget/widget/ListPopupWindow$2;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 12
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mScrollListener:Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 13
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    .line 14
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 15
    :cond_1
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 16
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 17
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 20
    iget v8, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    if-eqz v8, :cond_3

    if-eq v8, v4, :cond_2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ListPopupWindow"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :goto_0
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 27
    invoke-virtual {v6, v0, v3}, Landroid/view/View;->measure(II)V

    .line 28
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move v0, v5

    move-object v5, v7

    goto :goto_1

    :cond_4
    move v0, v3

    .line 30
    :goto_1
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v6, v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 31
    :cond_5
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_2

    :cond_6
    move v0, v3

    .line 34
    :goto_2
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 35
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 36
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 37
    iget-boolean v7, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v7, :cond_8

    neg-int v6, v6

    .line 38
    iput v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    .line 39
    :cond_7
    iget-object v5, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move v5, v3

    .line 40
    :cond_8
    :goto_3
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    .line 41
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    move v3, v4

    .line 42
    :cond_9
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 43
    invoke-virtual {p0, v4, v6, v3}, Lmiuix/popupwidget/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    .line 44
    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_e

    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v4, v2, :cond_a

    goto :goto_5

    .line 45
    :cond_a
    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_c

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_b

    .line 46
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 47
    :cond_b
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 49
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 50
    :cond_c
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 52
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_4
    move v7, v1

    .line 53
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    const/4 v8, 0x0

    const/4 v9, -0x1

    sub-int v10, v3, v0

    const/4 v11, -0x1

    invoke-virtual/range {v6 .. v11}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompact(IIIII)I

    move-result v1

    if-lez v1, :cond_d

    add-int/2addr v0, v5

    :cond_d
    add-int/2addr v1, v0

    return v1

    :cond_e
    :goto_5
    add-int/2addr v3, v5

    return v3
.end method

.method private removePromptView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 3
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->removePromptView()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 5
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mResizePopupRunnable:Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    const/4 p3, 0x1

    .line 7
    aget v3, v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    .line 8
    aget p1, v1, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 9
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 10
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p2

    sub-int/2addr p1, p3

    :cond_1
    return p1
.end method

.method public getPopupWindow()Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/16 v2, 0x17

    const/16 v3, 0x42

    if-gez v0, :cond_0

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_a

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 5
    iget-object v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 6
    iget-object v6, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    if-eqz v6, :cond_3

    .line 7
    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v8, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 9
    invoke-static {v8, v1, v5}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$600(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v8

    :goto_0
    if-eqz v7, :cond_2

    .line 10
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 11
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v7, v6, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$600(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v6

    :goto_1
    move v7, v8

    move v8, v6

    :cond_3
    const/16 v6, 0x13

    if-eqz v4, :cond_4

    if-ne p1, v6, :cond_4

    if-le v0, v7, :cond_5

    :cond_4
    const/16 v9, 0x14

    if-nez v4, :cond_6

    if-ne p1, v9, :cond_6

    if-lt v0, v8, :cond_6

    .line 12
    :cond_5
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->clearListSelection()V

    .line 13
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 14
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    return v5

    .line 15
    :cond_6
    iget-object v10, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-static {v10, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 16
    iget-object v10, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v10, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 17
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 18
    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 19
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    if-eq p1, v6, :cond_7

    if-eq p1, v9, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_7

    goto :goto_2

    :cond_7
    return v5

    :cond_8
    if-eqz v4, :cond_9

    if-ne p1, v9, :cond_9

    if-ne v0, v8, :cond_a

    return v5

    :cond_9
    if-nez v4, :cond_a

    if-ne p1, v6, :cond_a

    if-ne v0, v7, :cond_a

    return v5

    :cond_a
    :goto_2
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->dismiss(Z)V

    :cond_1
    :goto_0
    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public performItemClick(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 4
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public postShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->setWidth(I)V

    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public setListItemExpandMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    .line 2
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->removePromptView()V

    .line 3
    :cond_0
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    .line 2
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->access$502(Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->buildDropDown()I

    move-result v5

    .line 2
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v3, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 5
    :goto_0
    iget v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, v5}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 8
    :goto_1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    iget-boolean v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_4

    .line 12
    :cond_5
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {v0, v2, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 13
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 14
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mTouchInterceptor:Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 15
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mPopup:Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v4, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v3, v4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 16
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 17
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mDropDownList:Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    :cond_7
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->clearListSelection()V

    .line 19
    :cond_8
    iget-boolean v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_9

    .line 20
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow;->mHideSelector:Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    return-void
.end method
