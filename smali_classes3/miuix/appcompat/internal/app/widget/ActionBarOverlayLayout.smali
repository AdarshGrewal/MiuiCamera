.class public Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;,
        Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field public mActionBar:Lmiuix/appcompat/app/ActionBar;

.field public mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field public mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field public mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field public mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field public mActionMode:Landroid/view/ActionMode;

.field public mAnimating:Z

.field public mBaseContentInsets:Landroid/graphics/Rect;

.field public mBaseInnerInsets:Landroid/graphics/Rect;

.field public mCallback:Landroid/view/Window$Callback;

.field public mContentAutoFitSystemWindow:Z

.field public mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

.field public mContentInsets:Landroid/graphics/Rect;

.field public mContentMask:Landroid/view/View;

.field public mContentMaskInsets:Landroid/graphics/Rect;

.field public mContentView:Landroid/view/View;

.field public mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

.field public mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

.field public mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

.field public mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

.field public mFixedHeightMajor:Landroid/util/TypedValue;

.field public mFixedHeightMinor:Landroid/util/TypedValue;

.field public mFixedWidthMajor:Landroid/util/TypedValue;

.field public mFixedWidthMinor:Landroid/util/TypedValue;

.field public mInnerInsets:Landroid/graphics/Rect;

.field public mLastBaseContentInsets:Landroid/graphics/Rect;

.field public mLastInnerInsets:Landroid/graphics/Rect;

.field public mOffsetInWindow:[I

.field public mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

.field public mOverlayMode:Z

.field public mRequestFitSystemWindow:Z

.field public mRootSubDecor:Z

.field public mTranslucentStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    .line 14
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 16
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 17
    sget p3, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 18
    :cond_0
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 20
    sget p3, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 21
    :cond_1
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 22
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 23
    sget p3, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 24
    :cond_2
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 25
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 26
    sget p3, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 27
    :cond_3
    sget p2, Lmiuix/appcompat/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz p2, :cond_4

    .line 28
    sget p2, Lmiuix/appcompat/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 29
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$202(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Landroid/view/Window$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method public static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 2
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v1, :cond_0

    .line 3
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 4
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v1, :cond_1

    .line 5
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move p3, v0

    :cond_1
    if-eqz p6, :cond_2

    .line 6
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_2

    .line 7
    iput p6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move p3, v0

    :cond_2
    if-eqz p5, :cond_3

    .line 8
    iget p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p2, :cond_3

    .line 9
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    return v0
.end method

.method private computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    .line 3
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 5
    iput p1, p2, Landroid/graphics/Rect;->top:I

    :cond_1
    return-void
.end method

.method private createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method private dismissContextMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    :cond_0
    return-void
.end method

.method private getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHeightMeasureSpec(I)I
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_1
    if-eqz v2, :cond_4

    .line 6
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-eqz v3, :cond_4

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    .line 7
    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    :goto_2
    float-to-int v4, v0

    goto :goto_3

    :cond_2
    const/4 v5, 0x6

    if-ne v3, v5, :cond_3

    .line 8
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    goto :goto_2

    :cond_3
    :goto_3
    if-lez v4, :cond_4

    .line 9
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_4
    return p1
.end method

.method private getWidthMeasureSpec(I)I
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_1
    if-eqz v2, :cond_4

    .line 6
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-eqz v3, :cond_4

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    .line 7
    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    :goto_2
    float-to-int v4, v0

    goto :goto_3

    :cond_2
    const/4 v5, 0x6

    if-ne v3, v5, :cond_3

    .line 8
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    goto :goto_2

    :cond_3
    :goto_3
    if-lez v4, :cond_4

    .line 9
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_4
    return p1
.end method

.method private internalShowContextMenu(Landroid/view/View;FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    .line 5
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;FF)Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isBottomAnimating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    return v0
.end method

.method private isLayoutHideNavigation()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pullChildren()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x1020002

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 3
    sget v0, Lmiuix/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 4
    sget v1, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    :cond_0
    return-void
.end method


# virtual methods
.method public animateContentMarginBottom(I)V
    .locals 7

    .line 1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 3
    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 4
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 5
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBackPressed(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result p1

    if-nez p1, :cond_4

    .line 5
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->hideOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :cond_4
    :goto_0
    return v1
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1}, Lmiuix/appcompat/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_4

    .line 5
    invoke-direct {p0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 8
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010586

    invoke-static {v0, v1, v3}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 11
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 12
    :cond_4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/MiuixUIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 14
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v3

    .line 15
    :goto_2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 18
    :cond_7
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    const/4 v7, 0x1

    .line 19
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result p1

    if-nez p1, :cond_8

    move v8, v2

    goto :goto_3

    :cond_8
    move v8, v3

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    .line 20
    invoke-direct/range {v4 .. v10}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result p1

    goto :goto_4

    :cond_9
    move p1, v3

    .line 21
    :goto_4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_a

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v1

    or-int/2addr p1, v1

    .line 24
    :cond_a
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v0, :cond_b

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 26
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 28
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_c
    move v2, p1

    :goto_5
    if-eqz v2, :cond_d

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 30
    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p1

    return p1
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-object v0
.end method

.method public getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-object v0
.end method

.method public getBottomInset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getInsetHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getContentMask()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .locals 2

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public isRootSubDecor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return v0
.end method

.method public isTranslucentStatus()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 2
    :goto_1
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateAllClipView()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->pullChildren()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 19

    move-object/from16 v7, p0

    .line 1
    invoke-direct/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getWidthMeasureSpec(I)I

    move-result v8

    move/from16 v0, p2

    .line 2
    invoke-direct {v7, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getHeightMeasureSpec(I)I

    move-result v9

    .line 3
    iget-object v10, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 4
    iget-object v11, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    const/4 v12, 0x0

    move v6, v12

    move v13, v6

    move v14, v13

    move v15, v14

    .line 5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 6
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v5, v10, :cond_1

    if-eq v5, v11, :cond_1

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    move v4, v9

    move-object/from16 v17, v5

    move/from16 v5, v16

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 11
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 12
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v15

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 14
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 15
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    if-gtz v0, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_4
    move v6, v12

    goto :goto_3

    :cond_5
    move v0, v12

    move v6, v0

    .line 16
    :goto_3
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isSplitActionBar()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v1

    move/from16 v16, v1

    goto :goto_4

    :cond_6
    move/from16 v16, v12

    .line 18
    :goto_4
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_7

    if-lez v0, :cond_7

    .line 21
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    .line 22
    :cond_7
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_8

    .line 24
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 25
    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 26
    :cond_8
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 27
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    .line 28
    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 29
    :cond_9
    iget-boolean v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_a

    .line 30
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 31
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    add-int v0, v0, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    .line 32
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_b

    if-lez v0, :cond_c

    .line 33
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_5

    .line 34
    :cond_b
    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 35
    :cond_c
    :goto_5
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, v16

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 36
    :goto_6
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_f

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_d

    .line 38
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 39
    :cond_d
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 40
    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 41
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 42
    :cond_e
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 43
    :cond_f
    :goto_7
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isBottomAnimating()Z

    move-result v0

    if-nez v0, :cond_10

    .line 44
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v5, v17

    move v12, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    goto :goto_8

    :cond_10
    move v12, v6

    .line 45
    :goto_8
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_12

    .line 46
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-nez v16, :cond_11

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    :cond_11
    move/from16 v2, v16

    invoke-virtual {v10, v0, v12, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 47
    :cond_12
    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_13

    .line 48
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    :cond_13
    :goto_9
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    if-eqz v0, :cond_15

    .line 50
    :cond_14
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-super {v7, v0}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    .line 53
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_17

    .line 54
    iget-object v0, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a

    :cond_16
    const/4 v3, 0x0

    const v0, 0x1020002

    .line 56
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 58
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    :goto_a
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v8

    move v4, v9

    .line 60
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 61
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 63
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 64
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v10

    if-eqz v11, :cond_18

    .line 65
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 66
    iget-object v2, v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v8

    move v4, v9

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 68
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 72
    invoke-static {v1, v8, v10}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v10, 0x10

    .line 73
    invoke-static {v0, v9, v2}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v0

    .line 74
    invoke-virtual {v7, v1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 8

    .line 1
    iget-object v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v0, 0x0

    const/4 v7, 0x1

    aput v0, v6, v7

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    aget p2, p2, v7

    neg-int p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v1, 0x0

    const/4 v10, 0x1

    aput v1, v9, v10

    .line 2
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 3
    invoke-virtual/range {v1 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 4
    :cond_0
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    aget v2, v2, v10

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestFitSystemWindows()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    return-void
.end method

.method public setActionBar(Lmiuix/appcompat/app/ActionBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    return-void
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mAnimating:Z

    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setContentMask(Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 2
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isOled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$drawable;->miuix_appcompat_window_content_mask_oled:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$drawable;->miuix_appcompat_window_content_mask_oled:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiuix/appcompat/app/OnStatusBarChangeListener;

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return-void
.end method

.method public setRootSubDecor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return-void
.end method

.method public setSplitActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarBottom:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clear()V

    .line 7
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->internalShowContextMenu(Landroid/view/View;FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 8
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 10
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 11
    instance-of v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 14
    :cond_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1

    .line 16
    :cond_1
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
