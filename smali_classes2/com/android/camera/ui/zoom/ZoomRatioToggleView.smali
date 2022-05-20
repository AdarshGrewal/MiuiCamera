.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView;
.super Landroid/view/ViewGroup;
.source "ZoomRatioToggleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;
    }
.end annotation


# static fields
.field public static final ANIMATOR_TYPE_IMAGE_IMAGE:I = 0x6

.field public static final ANIMATOR_TYPE_IMAGE_NONE:I = 0x3

.field public static final ANIMATOR_TYPE_IMAGE_TEXT:I = 0x4

.field public static final ANIMATOR_TYPE_NONE_IMAGE:I = 0x1

.field public static final ANIMATOR_TYPE_NONE_TEXT:I = 0x0

.field public static final ANIMATOR_TYPE_TEXT_IMAGE:I = 0x5

.field public static final ANIMATOR_TYPE_TEXT_NONE:I = 0x2

.field public static final ANIMATOR_TYPE_TEXT_TEXT:I = 0x7

.field public static final ANIMATOR_TYPE_TEXT_TEXT_IMMERSIVE_OUT:I = 0x8

.field public static final INVALID_INDEX:I = -0x1

.field public static final INVALID_ZOOM_RATIO:F = -1.0f

.field public static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "ZoomRatioToggleView"

.field public static final TOUCH_SCROLL_THRESHOLD:I = 0xa

.field public static final TOUCH_STATE_CLICK:I = 0x1

.field public static final TOUCH_STATE_IDLE:I = 0x0

.field public static final TOUCH_STATE_LONG_CLICK:I = 0x3

.field public static final TOUCH_STATE_SCROLL:I = 0x2

.field public static final TOUCH_STATE_SHOWVIEW:I = 0x4

.field public static final UI_DEBUG_ENABLED:Z

.field public static final VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field public mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

.field public mCurrentModule:I

.field public mCurrentSelectedChildIndex:I

.field public final mHandler:Landroid/os/Handler;

.field public final mIndexUpdater:Ljava/lang/Runnable;

.field public mIsImmersive:Z

.field public mIsRTL:Z

.field public mIsSuppressed:Z

.field public mItemHeight:I

.field public mItemWidth:I

.field public mLongPressRunnable:Ljava/lang/Runnable;

.field public mPaint:Landroid/graphics/Paint;

.field public mRect:Landroid/graphics/Rect;

.field public mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

.field public mTouchStartX:I

.field public mTouchStartY:I

.field public mTouchState:I

.field public mUseSliderType:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mZoomArray:[F

.field public mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

.field public mZoomRatio:F

.field public mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

.field public myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ZoomRatioToggleView"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/16 p3, 0xa3

    .line 6
    iput p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    .line 7
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    .line 8
    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    .line 9
    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    .line 10
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance p2, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    .line 12
    new-instance p2, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/animation/AnimatorSet;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAtIndex(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSelectedChildIndex()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->longClickChild(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private announceCurrentZoomRatioForAccessibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clickChildAt(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAtIndex(I)V

    return-void
.end method

.method private clickChildAtIndex(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickChildAtIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ne p1, v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 7
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onClick(Lcom/android/camera/ui/zoom/ZoomRatioView;)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->showZoomChildView(ZII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static debugUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0O0:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0OO:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->Oooo0o0:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private endTouch(F)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    invoke-interface {p1, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 7
    iput-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    iput v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return-void
.end method

.method private getContainingChildIndex(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    return p1

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 11
    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    .line 12
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5

    .line 14
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 15
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5

    .line 17
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 18
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method private getDimensionPixelSize(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/camera/ui/zoom/ZoomRatioView;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 7
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_6

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_7

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_8

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_9

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_a

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_b

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_c

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_d

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_e

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_f

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_10

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_11

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_12

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_13

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_14

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_15

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_16

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_17

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 25
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_18

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_19

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1a

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1b

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1c

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1d

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 31
    :pswitch_5
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1e

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1f

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_20

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_21

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_22

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_23

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :pswitch_6
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_24

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_25

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_26

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_27

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_28

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_29

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :pswitch_7
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_2a

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_2b

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_2c

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_2d

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_2e

    invoke-static {p3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object p2

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_2f

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_11
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_14
    .array-data 4
        0x3fd5c28f    # 1.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_15
    .array-data 4
        0x3fd5c28f    # 1.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_16
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_17
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x3f800000    # 1.0f
        0x3e2b020c    # 0.167f
    .end array-data

    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x3e2b020c    # 0.167f
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_23
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_27
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_29
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2c
    .array-data 4
        0x3e2b020c    # 0.167f
        0x3f800000    # 1.0f
    .end array-data

    :array_2d
    .array-data 4
        0x3e2b020c    # 0.167f
        0x3f800000    # 1.0f
    .end array-data

    :array_2e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2f
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f020008

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 12
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lmiuix/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/view/View;Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    .line 15
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private isSupportUseSlider(I)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private longClickChild(I)V
    .locals 2

    const-string v0, "ZoomRatioToggleView"

    const-string v1, "longClickChild"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method

.method private resetAnimators()V
    .locals 3

    const-string v0, "ZoomRatioToggleView"

    const-string/jumbo v1, "resetAnimators"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/AnimatorSet;

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomInOutAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo0O0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo0O0/OooO00o;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setSelectedChildIndex()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {v0, v1}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    xor-int/2addr v1, v3

    .line 4
    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->showZoomChildView(ZII)V

    return-void
.end method

.method private showZoomChildView(ZII)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 3
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 4
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v2, p2}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v2

    .line 5
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-static {v3, v4}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_2

    .line 6
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    :cond_0
    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {v0, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    if-ne p3, v5, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    goto :goto_4

    .line 11
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_6

    .line 13
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-ne v4, p2, :cond_4

    if-ne p3, v5, :cond_3

    move v8, v2

    goto :goto_2

    .line 14
    :cond_3
    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    :goto_2
    invoke-virtual {v7, v8}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    const/4 v8, 0x4

    .line 15
    invoke-direct {p0, p1, v7, v8}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_3

    .line 16
    :cond_4
    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ne v4, v8, :cond_5

    .line 17
    invoke-virtual {v7, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    const/4 v8, 0x5

    .line 18
    invoke-direct {p0, p1, v7, v8}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_3

    :cond_5
    const/4 v8, 0x6

    .line 19
    invoke-direct {p0, p1, v7, v8}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_6
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    .line 21
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 22
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 23
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 24
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;Lcom/android/camera/ui/zoom/ZoomRatioView;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    :goto_4
    if-ne p3, v5, :cond_8

    .line 27
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz p1, :cond_8

    .line 28
    invoke-interface {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onClick(Lcom/android/camera/ui/zoom/ZoomRatioView;)V

    .line 29
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    return-void
.end method

.method private startLongPressCheck()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$5;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$5;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startScrollIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    add-int/lit8 v2, v1, -0xa

    if-lt v0, v2, :cond_1

    add-int/lit8 v1, v1, 0xa

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    add-int/lit8 v1, v0, -0xa

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/4 p1, 0x1

    return p1
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startLongPressCheck()V

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    return-void
.end method

.method private toShowView(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartX:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchStartY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result v0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomRatioView;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x4

    .line 10
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isSuppressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZoomRatioToggleView"

    const-string v0, "UI AUTOMATIC TEST: CLICKED"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAt(II)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "ZoomRatioToggleView"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    return v2

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterceptTouchEvent() MOVE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInterceptTouchEvent() DOWN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eq v0, v1, :cond_4

    return v2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTouch(Landroid/view/MotionEvent;)V

    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    move p3, p2

    goto :goto_0

    .line 2
    :cond_1
    div-int/lit8 p3, p1, 0x2

    .line 3
    :goto_0
    iget-boolean p4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    if-nez p4, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 v0, p5, 0x2

    sub-int/2addr p4, v0

    mul-int/2addr p3, p5

    sub-int/2addr p4, p3

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 v0, p5, 0x2

    sub-int/2addr p4, v0

    mul-int/2addr p3, p5

    add-int/2addr p4, p3

    .line 6
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    :goto_2
    if-ge p2, p1, :cond_4

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 8
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr v0, p4

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    add-int/2addr v1, p3

    invoke-virtual {p5, p4, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 9
    iget-boolean p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    if-nez p5, :cond_3

    .line 10
    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr p4, p5

    goto :goto_3

    .line 11
    :cond_3
    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    sub-int/2addr p4, p5

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZoomRatioToggleView"

    const-string v0, "UI AUTOMATIC TEST: LONGCLICKED"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->longClickChild(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMeasure(II)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 6
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_1

    .line 7
    :cond_2
    div-int v0, v4, v3

    :goto_1
    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    .line 8
    iput v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemHeight:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr v0, v2

    add-int/2addr v4, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v5, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 13
    invoke-static {v2, p1, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    .line 14
    invoke-static {v0, p2, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v2, "ZoomRatioToggleView"

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v6, :cond_2

    const/4 v7, 0x3

    if-eq v0, v7, :cond_5

    .line 4
    invoke-direct {p0, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    goto/16 :goto_1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTouchEvent() MOVE: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v3, :cond_3

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    .line 8
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v6, :cond_f

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    return v1

    .line 10
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->toShowView(F)V

    goto/16 :goto_1

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent() UP: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v3, :cond_6

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAt(II)V

    .line 18
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    return v3

    .line 19
    :cond_7
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-ne v0, v6, :cond_9

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8

    return v1

    .line 21
    :cond_8
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 24
    :cond_9
    invoke-direct {p0, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    goto :goto_1

    .line 25
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent() DOWN: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 28
    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v4, :cond_b

    goto :goto_0

    .line 29
    :cond_b
    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    return v1

    .line 30
    :cond_c
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eq v0, v2, :cond_d

    return v1

    .line 31
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 32
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTouch(Landroid/view/MotionEvent;)V

    :cond_f
    :goto_1
    return v3
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {v0, v1, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method public setActionListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCaptureCount(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setCaptureCount(I)V

    goto :goto_2

    .line 4
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setCaptureCount(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setCapturingMode(IZ)Z
    .locals 8

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    .line 2
    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-array p1, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p1, v1

    .line 3
    :cond_0
    array-length v2, p1

    if-gtz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomArray:[F

    if-eqz v3, :cond_3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSuppressed(ZZ)V

    return v1

    .line 6
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomArray:[F

    if-eqz p2, :cond_4

    move v3, v1

    goto :goto_1

    .line 7
    :cond_4
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v3}, Lcom/android/camera/HybridZoomingSystem;->getDefaultOpticalZoomRatioIndex(I)I

    move-result v3

    .line 8
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->resetAnimators()V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_6

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0195

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 11
    invoke-virtual {v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {v5}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    aget v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 14
    invoke-virtual {v5, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatioIndex(I)V

    if-eq v4, v3, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v1

    .line 15
    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    .line 16
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 17
    :cond_6
    iput v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    .line 18
    aget p1, p1, v3

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    .line 19
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSuppressed(ZZ)V

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->endTouch(F)V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomRatioToggleView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setImmersive(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setImmersive(ZZZ)V

    return-void
.end method

.method public setImmersive(ZZZ)V
    .locals 9

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmersive(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setImmersive() ignored: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {p2, v0}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result p2

    .line 8
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 9
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/2addr v0, v3

    const/4 v5, 0x3

    if-ne p2, v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_6

    .line 12
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 13
    invoke-virtual {v6, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    if-ne v3, p2, :cond_2

    const/4 v7, 0x7

    .line 14
    invoke-direct {p0, p1, v6, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-direct {p0, p1, v6, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v6, v4

    :goto_2
    if-ge v6, v0, :cond_6

    .line 17
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 18
    invoke-virtual {v7, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    .line 19
    div-int/lit8 v8, v0, 0x2

    if-ne v6, v8, :cond_4

    const/4 v8, 0x4

    .line 20
    invoke-direct {p0, p1, v7, v8}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_3

    :cond_4
    if-ne v6, p2, :cond_5

    .line 21
    invoke-direct {p0, p1, v7, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_3

    .line 22
    :cond_5
    invoke-direct {p0, p1, v7, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 23
    :cond_6
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 24
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 25
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 26
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;

    invoke-direct {v0, p0, p3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_9

    .line 29
    :cond_7
    iget-boolean p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-nez p3, :cond_e

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    div-int/2addr p3, v3

    const/4 v0, 0x1

    if-ne p2, p3, :cond_a

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v1, v4

    :goto_4
    if-ge v1, p3, :cond_9

    .line 32
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 33
    invoke-virtual {v2, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    if-ne v1, p2, :cond_8

    .line 34
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    const/16 v3, 0x8

    .line 35
    invoke-direct {p0, p1, v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_5

    .line 36
    :cond_8
    invoke-direct {p0, p1, v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 37
    :cond_9
    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x190

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_8

    .line 38
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v3, v4

    :goto_6
    if-ge v3, p3, :cond_d

    .line 39
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 40
    invoke-virtual {v5, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    .line 41
    div-int/lit8 v6, p3, 0x2

    if-ne v3, v6, :cond_b

    const/4 v6, 0x5

    .line 42
    invoke-direct {p0, p1, v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_7

    :cond_b
    if-ne v3, p2, :cond_c

    .line 43
    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 44
    invoke-direct {p0, p1, v5, v4}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    goto :goto_7

    .line 45
    :cond_c
    invoke-direct {p0, p1, v5, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getTypeAnimator(Ljava/util/List;Lcom/android/camera/ui/zoom/ZoomRatioView;I)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 46
    :cond_d
    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 47
    :goto_8
    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 48
    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 49
    iget-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    iget-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 51
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mShowZoomChildAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_e
    :goto_9
    return-void
.end method

.method public setRotation(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSuppressed(ZZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuppressed(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSuppressed() ignored: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_3

    .line 7
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {p1, v0}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-ne v1, p1, :cond_2

    .line 10
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 11
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    .line 13
    :goto_1
    invoke-virtual {v2, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public setUseSliderAllowed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisibility(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->viewVisibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->resetAnimators()V

    :cond_0
    return-void
.end method

.method public setZoomRatio(FI)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0, p1}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomRatio(): zooming action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomRatioToggleView"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setZoomRatio():  current index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setZoomRatio():   current zoom = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setZoomRatio():   target index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setZoomRatio():    target zoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    const-string/jumbo p1, "setZoomRatio(): mIsSuppressed"

    .line 12
    invoke-static {v2, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsImmersive:Z

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setZoomRatio(F)V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    const-string/jumbo p1, "setZoomRatio(): mIsImmersive"

    .line 16
    invoke-static {v2, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    sget-boolean p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :goto_0
    const-string/jumbo p1, "setZoomRatio(): ignored as source is toggle button"

    .line 20
    invoke-static {v2, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "setZoomRatio() must be called on main ui thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startTranslationAnimationShow()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 4
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v5

    .line 5
    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v3, v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 7
    iget-boolean v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    sub-int/2addr v6, v3

    goto :goto_1

    :cond_0
    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    sub-int v6, v3, v6

    .line 8
    :goto_1
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v7, [F

    iget v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    mul-int/2addr v6, v10

    int-to-float v6, v6

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    aput v6, v7, v2

    aput v5, v7, v8

    invoke-static {v4, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 9
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 10
    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 11
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v7, [F

    aput v5, v7, v2

    aput v5, v7, v8

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 12
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_2
    new-instance v7, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;F)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 16
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method