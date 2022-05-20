.class public Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;
.super Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
.source "ActionBarMovableLayout.java"


# static fields
.field public static final DBG:Z = false

.field public static final DEFAULT_SPRING_BACK_DURATION:I = 0x320

.field public static final STATE_DOWN:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UP:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivePointerId:I

.field public mFlinging:Z

.field public mInitialMotionY:I

.field public mInitialMotionYSet:Z

.field public mIsBeingDragged:Z

.field public mIsSpringBackEnabled:Z

.field public mLastMotionX:F

.field public mLastMotionY:F

.field public final mMaximumVelocity:I

.field public final mMinimumVelocity:I

.field public mMotionY:I

.field public mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

.field public mOverScrollDistance:I

.field public mScrollRange:I

.field public mScrollStart:I

.field public mScroller:Landroid/widget/OverScroller;

.field public mState:I

.field public mTabScrollView:Landroid/view/View;

.field public mTabViewVisibility:I

.field public final mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 3
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 4
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    const/16 v1, 0x8

    .line 5
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 7
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout:[I

    sget v2, Lmiuix/appcompat/R$attr;->actionBarMovableLayoutStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_overScrollRange:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 10
    :cond_0
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_scrollRange:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 11
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBarMovableLayout_scrollStart:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 12
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTouchSlop:I

    .line 14
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 17
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private inChild(Landroid/view/View;II)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 5
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-ne p1, v5, :cond_1

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    add-int/2addr v1, p1

    add-int/2addr v3, p1

    :cond_1
    if-lt p3, v1, :cond_2

    if-ge p3, v3, :cond_2

    if-lt p2, v2, :cond_2

    if-ge p2, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isTabViewVisibilityChanged()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 4
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    if-eq v0, v1, :cond_0

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public applyTranslationY(F)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->motionToTranslation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    const/4 v3, 0x0

    sub-int v4, v1, v0

    const/4 v5, 0x0

    .line 6
    iget v6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->springBack()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method public computeVerticalVelocity()I
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public ensureTabScrollView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarTop:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    return-void
.end method

.method public fling(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method public getOverScrollDistance()I
    .locals 1

    .line 1
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScrollRange()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    return v0
.end method

.method public getScrollStart()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    return v0
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, p5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 7
    invoke-static {p2, v1, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v0

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v0

    sub-int/2addr p3, v0

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    sub-int/2addr p3, v0

    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    invoke-static {p4, p3, p5}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p3

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public motionToTranslation(F)F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMask()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    return v3

    :cond_1
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_0

    .line 11
    :cond_4
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->recycleVelocityTracker()V

    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollEnd()V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initOrResetVelocityTracker()V

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 21
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->isTabViewVisibilityChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    .line 3
    :goto_1
    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    if-nez p3, :cond_3

    .line 4
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    if-gez p3, :cond_2

    .line 5
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 6
    :cond_2
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    .line 7
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    :cond_3
    if-eqz p1, :cond_4

    .line 8
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    :cond_4
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0

    int-to-float p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 2
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez p2, :cond_0

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    mul-int/lit8 p3, p3, 0x2

    if-le p2, p3, :cond_0

    .line 5
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    if-eqz p2, :cond_0

    neg-int p1, p1

    int-to-float p1, p1

    const p3, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p3

    const/16 p3, 0x1f4

    .line 6
    invoke-interface {p2, p1, p3}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onFling(FI)V

    :cond_0
    return-void
.end method

.method public onScroll(F)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-interface {v0, v1, p1}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onScroll(IF)V

    :cond_0
    return-void
.end method

.method public onScrollBegin()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onStartScroll()V

    :cond_0
    return-void
.end method

.method public onScrollEnd()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onStopScroll()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 2
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_9

    const/4 v14, -0x1

    if-eq v0, v12, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-direct/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 7
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 8
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-boolean v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 10
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v14, :cond_3

    return v13

    .line 11
    :cond_3
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    .line 12
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v0, v15, v0

    float-to-int v2, v0

    .line 13
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 14
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v8

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 15
    iget v4, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 16
    iput v15, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    if-eqz v0, :cond_a

    .line 17
    iget v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v0, :cond_4

    .line 18
    iput-boolean v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 19
    iput v14, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 20
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 21
    invoke-virtual/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    :cond_4
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    iput-boolean v12, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 25
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 26
    iget-object v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_0

    .line 28
    :cond_6
    iget-boolean v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_a

    .line 29
    iput-boolean v13, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 30
    iput v14, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 31
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    if-le v1, v2, :cond_7

    .line 33
    invoke-virtual {v10, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->fling(I)V

    goto :goto_0

    .line 34
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v9

    .line 35
    iget-object v3, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    iget v5, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 37
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->springBack()V

    goto :goto_0

    .line 38
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 39
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    :cond_a
    :goto_0
    return v12
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalScrollRange()I

    move-result p3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    move-result p5

    const/4 p7, 0x1

    const/4 p9, 0x0

    if-le p3, p5, :cond_0

    move p3, p7

    goto :goto_0

    :cond_0
    move p3, p9

    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, p7, :cond_1

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p9

    goto :goto_2

    :cond_2
    :goto_1
    move p1, p7

    :goto_2
    add-int/2addr p4, p2

    if-nez p1, :cond_3

    move p8, p9

    :cond_3
    add-int/2addr p8, p6

    if-le p4, p8, :cond_4

    move p4, p8

    goto :goto_3

    :cond_4
    if-gez p4, :cond_5

    move p4, p9

    goto :goto_3

    :cond_5
    move p7, p9

    .line 3
    :goto_3
    invoke-virtual {p0, p9, p4, p9, p7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    return p7
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public setInitialMotionY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mInitialMotionY:I

    return-void
.end method

.method public setMotionY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->onScroll(F)V

    return-void
.end method

.method public setOnScrollListener(Lmiuix/appcompat/app/ActionBar$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 1

    .line 1
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    :cond_0
    return-void
.end method

.method public setScrollRange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollRange:I

    return-void
.end method

.method public setScrollStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScrollStart:I

    return-void
.end method

.method public setSpringBackEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    return-void
.end method

.method public shouldStartScroll(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mActivePointerId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3
    sget-object p1, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    const-string v0, "invalid pointer index"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 6
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 8
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 9
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    float-to-int v6, v1

    float-to-int v7, p1

    invoke-direct {p0, v5, v6, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v5

    .line 10
    iget-object v8, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-direct {p0, v8, v6, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v7

    :goto_1
    if-eqz v5, :cond_7

    .line 11
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mTouchSlop:I

    if-le v3, v5, :cond_7

    if-le v3, v4, :cond_7

    .line 12
    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v3, :cond_5

    if-gez v0, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_5
    if-lez v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mOnScrollListener:Lmiuix/appcompat/app/ActionBar$OnScrollListener;

    if-eqz v3, :cond_6

    .line 15
    invoke-interface {v3}, Lmiuix/appcompat/app/ActionBar$OnScrollListener;->onContentScrolled()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v7

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_9

    .line 16
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 17
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mLastMotionX:F

    if-lez v0, :cond_8

    move v2, v7

    .line 18
    :cond_8
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mState:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 20
    invoke-interface {p1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return v3
.end method

.method public springBack()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    .line 3
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    neg-int v0, v1

    :goto_0
    move v5, v0

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method
