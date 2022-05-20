.class public abstract Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraFocusCommonAnimateDrawable.java"


# static fields
.field public static final BIG_ALPHA:I = 0xff

.field public static final COLOR_PAINT_YELLOW:I = -0x31ea

.field public static final FOCUS_FAIL_ANIM_COST_MS:I = 0xc8

.field public static final I_ROUND_RADIUS:I

.field public static final I_STICK_LENGTH:I

.field public static final LOCK_PAINT_COLOR:I = -0x31ea

.field public static final RECT_DOWN_BIG:F = 1.52f

.field public static final RECT_DOWN_SMALL:F = 1.0f

.field public static final STROKE_WIDTH:F = 1.33f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mFocusingAnimator:Landroid/animation/ValueAnimator;

.field public mIsTouchFocus:Z

.field public mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

.field public mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

.field public mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

.field public mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

.field public mSuccessFlag:I

.field public mTouchDownAnimator:Landroid/animation/ValueAnimator;

.field public pendingState:I

.field public rotateItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/ui/drawable/CameraPaintBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->TAG:Ljava/lang/String;

    const v0, 0x3f3a1cac    # 0.727f

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->I_ROUND_RADIUS:I

    const v0, 0x4151999a    # 13.1f

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->I_STICK_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->rotateItem:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->aCameraFocusPaintOuterRect(Landroid/content/Context;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;

    move-result-object v0

    const v1, 0x3faa3d71    # 1.33f

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->withStrokeWidthDp(F)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;

    move-result-object v0

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->I_ROUND_RADIUS:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->withRoundRadius(I)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;

    move-result-object v0

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->I_STICK_LENGTH:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->withStickLength(I)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->build()Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    .line 8
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    .line 9
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvText:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvText;

    .line 10
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintEvAdjust:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setStartOffsetY(F)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->updateValue(F)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->updateValue(F)V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->getCenterIndicator()Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->updateValue(F)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public synthetic OooO0o0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public cancelFocusingAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public abstract cancelResetCenter()V
.end method

.method public abstract cancelSuccessAnimation()V
.end method

.method public getCenterIndicator()Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintCenterIndicator:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->getCenterIndicator()Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setupLottie(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    return-void
.end method

.method public isAnimatorRunning(Landroid/animation/Animator;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setRotatingDegree(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->rotateItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setRotatingDegree(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start3ALockSuccessAnimation()Landroid/animation/Animator;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/16 v1, -0x31ea

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setBaseWidthPercent(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const v1, 0x3fb56042    # 1.417f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5
    new-instance v4, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0Oo;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    new-instance v4, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v0, [F

    .line 7
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 8
    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0OO;

    invoke-direct {v3, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0OO;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    new-instance v3, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$4;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$4;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 12
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 13
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startCaptureIndicatorAnimation()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 5
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0oO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0oO;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f96872b    # 1.176f
    .end array-data
.end method

.method public startFocusFailAnimation()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFocusFailAnimation() called E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setBaseWidthPercent(F)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const v1, 0x3f9ae148    # 1.21f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0o0;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 15
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFocusFailAnimation() called X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract startFocusSuccessAnimation(IZ)V
.end method

.method public startFocusingAnimation()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFocusingAnimation: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    .line 4
    new-instance v2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0o;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$3;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mFocusingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0xa6
    .end array-data
.end method

.method public startNormalFocusSuccessAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public startTouchDownAnimation()V
    .locals 3

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelSuccessAnimation()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelResetCenter()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
