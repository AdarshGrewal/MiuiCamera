.class public Lmiuix/springback/view/SpringBackLayoutHelper;
.super Ljava/lang/Object;
.source "SpringBackLayoutHelper.java"


# static fields
.field public static final INVALID_POINTER:I = -0x1


# instance fields
.field public mActivePointerId:I

.field public mInitialDownX:F

.field public mInitialDownY:F

.field public mScrollOrientation:I

.field public mTarget:Landroid/view/ViewGroup;

.field public mTargetScrollOrientation:I

.field public mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 3
    iput-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    .line 4
    iput p2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public checkOrientation(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 6
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    sub-float/2addr v1, v0

    .line 7
    iget v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    sub-float/2addr p1, v0

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    .line 9
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    iput v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    goto :goto_1

    .line 10
    :cond_5
    iput v1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    .line 11
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mActivePointerId:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_7

    return-void

    .line 14
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownY:F

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mInitialDownX:F

    .line 16
    iput v1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    :cond_8
    :goto_1
    return-void
.end method

.method public isTouchInTarget(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 5
    fill-array-data v1, :array_0

    .line 6
    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 7
    aget v0, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    .line 8
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int p1, p1

    float-to-int v0, v2

    .line 9
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/springback/view/SpringBackLayoutHelper;->checkOrientation(Landroid/view/MotionEvent;)V

    .line 2
    iget p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mScrollOrientation:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTargetScrollOrientation:I

    if-eq p1, v2, :cond_0

    .line 3
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 4
    :cond_0
    iget-object p1, p0, Lmiuix/springback/view/SpringBackLayoutHelper;->mTarget:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return v0
.end method
