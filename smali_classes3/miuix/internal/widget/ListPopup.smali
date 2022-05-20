.class public Lmiuix/internal/widget/ListPopup;
.super Landroid/widget/PopupWindow;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/ListPopup$ContentSize;
    }
.end annotation


# static fields
.field public static final DIM:F = 0.3f

.field public static final OFFSET_FROM_STATUS_BAR:I = 0x16

.field public static final OFFSET_X:F = 8.0f

.field public static final OFFSET_Y:F = 8.0f

.field public static final TAG:Ljava/lang/String; = "ListPopupWindow"


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public final mBackgroundPadding:Landroid/graphics/Rect;

.field public mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

.field public mContentView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mDropDownGravity:I

.field public mElevation:I

.field public mHasShadow:Z

.field public mListView:Landroid/widget/ListView;

.field public mMaxAllowedHeight:I

.field public mMaxAllowedWidth:I

.field public mMinAllowedWidth:I

.field public mMinMarginScreen:I

.field public mObserver:Landroid/database/DataSetObserver;

.field public mOffsetX:I

.field public mOffsetXSet:Z

.field public mOffsetY:I

.field public mOffsetYSet:Z

.field public mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field public mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mRootView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const v0, 0x800035

    .line 2
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 4
    new-instance v1, Lmiuix/internal/widget/ListPopup$1;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    .line 5
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    const/4 v1, -0x2

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_maximum_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    .line 9
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_minimum_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    .line 10
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 11
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 12
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 14
    new-instance v1, Lmiuix/internal/widget/ListPopup$ContentSize;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>(Lmiuix/internal/widget/ListPopup;Lmiuix/internal/widget/ListPopup$1;)V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 16
    new-instance v0, Lmiuix/internal/widget/RoundFrameLayout;

    invoke-direct {v0, p1}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 17
    new-instance v1, LOooO0OO/OooO0OO/OooO0O0/OooO0O0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0OO/OooO0O0/OooO0O0;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareContentView(Landroid/content/Context;)V

    .line 19
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 20
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->popupWindowElevation:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 21
    new-instance v0, LOooO0OO/OooO0OO/OooO0O0/OooO0Oo;

    invoke-direct {v0, p0}, LOooO0OO/OooO0OO/OooO0O0/OooO0Oo;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    return-void
.end method

.method public static synthetic access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private calculateXoffset(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2
    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    aget v1, v0, v3

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr v1, v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    add-int/2addr v1, v4

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    sub-int/2addr v1, v4

    aget v0, v0, v3

    goto :goto_0

    .line 7
    :cond_0
    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    add-int/2addr v1, v4

    .line 8
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    sub-int/2addr v1, v4

    if-gez v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    add-int/2addr v1, v4

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    :goto_0
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    .line 10
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    :cond_2
    if-eqz v3, :cond_4

    .line 11
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    if-nez v0, :cond_4

    .line 12
    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr p1, v0

    sub-int v1, v3, p1

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr p1, v0

    add-int v1, v3, p1

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    return v1
.end method

.method private calculateYoffset(Landroid/view/View;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 3
    aget v1, v1, v2

    int-to-float v1, v1

    .line 4
    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5
    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    if-lez v3, :cond_1

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v4, v4, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 6
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v3, v3, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    :goto_1
    if-ge v3, v2, :cond_3

    int-to-float v4, v0

    add-float/2addr v1, v4

    int-to-float v4, v3

    add-float/2addr v1, v4

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 8
    iget-boolean v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    add-int/2addr p1, v3

    sub-int/2addr v0, p1

    :cond_3
    return v0
.end method

.method public static changeWindowBackground(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3e99999a    # 0.3f

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 5
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move v7, v6

    move-object v8, v4

    :goto_0
    if-ge v0, v3, :cond_5

    .line 4
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v5, :cond_0

    move-object v8, v4

    move v5, v9

    :cond_0
    if-nez p2, :cond_1

    .line 5
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    :cond_1
    invoke-interface {p1, v0, v8, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    .line 9
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v9, v9, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-eqz v9, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p4, :cond_3

    .line 11
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {v9, p4}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    goto :goto_1

    :cond_3
    if-le v9, v6, :cond_4

    move v6, v9

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean p2, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez p2, :cond_6

    .line 13
    invoke-virtual {p1, v6}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    .line 14
    :cond_6
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iput v7, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    return-void
.end method

.method public static setPopupShadowAlpha(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/internal/widget/ListPopup$3;

    invoke-direct {v0}, Lmiuix/internal/widget/ListPopup$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    move-result v1

    .line 3
    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 4
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 5
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public synthetic OooO00o(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 4
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 5
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    .line 6
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public computePopupContentWidth()I
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/internal/widget/ListPopup;->measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    return-void
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMinMarginScreen()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    return v0
.end method

.method public getOffsetFromStatusBar()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    return v0
.end method

.method public prepareContentView(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method public prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 4

    const-string p2, "ListPopupWindow"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "show: anchor is null"

    .line 1
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_popup_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 4
    new-instance v2, Lmiuix/internal/widget/ListPopup$2;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/ListPopup$2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-eq v1, v3, :cond_3

    .line 6
    :cond_2
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 9
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 10
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x10

    .line 11
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    :cond_3
    iget-boolean v1, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    .line 13
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 14
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 15
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    .line 16
    :cond_4
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_5

    const-string p1, "list not found"

    .line 17
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 18
    :cond_5
    new-instance p2, LOooO0OO/OooO0OO/OooO0O0/OooO0OO;

    invoke-direct {p2, p0}, LOooO0OO/OooO0OO/OooO0O0/OooO0OO;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 21
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    if-lez p2, :cond_6

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    if-le v1, p2, :cond_6

    .line 22
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 23
    :cond_6
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v2
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setContentWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    return-void
.end method

.method public setHasShadow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    return-void
.end method

.method public setMaxAllowedHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setPopupWindowContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
