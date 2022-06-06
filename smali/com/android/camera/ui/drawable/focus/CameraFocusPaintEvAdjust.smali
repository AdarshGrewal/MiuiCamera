.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintEvAdjust.java"


# static fields
.field public static final ADJUST_ICON_LENGTH:I

.field public static final EV_ICON_MIN_MARGIN:I

.field public static final ICON_BASE_HALF_HEIGHT:I

.field public static final MARGIN:I


# instance fields
.field public mCurrentDistanceY:F

.field public mCurrentOffsetY:F

.field public mDisplayRect:Landroid/graphics/Rect;

.field public mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

.field public mEvLinInAnim:Landroid/animation/ValueAnimator;

.field public mEvValue:F

.field public mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public mLineAlpha:I

.field public mLineHeight:I

.field public mLineMargin:I

.field public mLinePaint:Landroid/graphics/Paint;

.field public mLineShadowAlpha:I

.field public mOrientation:I

.field public mRtl:Z

.field public mShadowPaint:Landroid/graphics/Paint;

.field public mShowLine:Z

.field public mStartOffsetY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    const v0, 0x41c5d70a    # 24.73f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ICON_BASE_HALF_HEIGHT:I

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    const/16 v0, 0x7f

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineShadowAlpha:I

    sget p1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    return p1
.end method

.method private isNearlyOutOfEdge()Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mOrientation:I

    div-int/lit8 v4, v3, 0x5a

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    if-eqz v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    goto :goto_0

    :goto_1
    iget v2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mOrientation:I

    if-nez v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    move v1, v5

    :cond_6
    :goto_2
    return v1

    :cond_7
    const/16 v0, 0x5a

    if-ne v3, v0, :cond_9

    int-to-float v0, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_8

    move v1, v5

    :cond_8
    return v1

    :cond_9
    const/16 v0, 0x10e

    if-ne v3, v0, :cond_a

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->EV_ICON_MIN_MARGIN:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    move v1, v5

    :cond_a
    return v1
.end method

.method private startEvLineAriseAnimIfNeed(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooO/OooO00o/OooOO0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooO/OooO00o/OooOO0;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvLinInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x7f
    .end array-data
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setLineAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setLineAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mRotatingDegree:F

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->isNearlyOutOfEdge()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->MARGIN:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    :goto_0
    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v3, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    add-float v8, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    sub-float v2, v8, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v2, v7}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sget v2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    add-float v10, v1, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v11, v1, v2

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v12, v1, v2

    const v1, 0x3fbae148    # 1.46f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v13, v1

    iget-object v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShadowPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineShadowAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ICON_BASE_HALF_HEIGHT:I

    int-to-float v2, v1

    sub-float v2, v8, v2

    sub-float/2addr v2, v12

    iget v3, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v4, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    int-to-float v1, v1

    sub-float v1, v8, v1

    int-to-float v2, v3

    sub-float v15, v1, v2

    div-float v1, v13, v9

    sub-float v2, v10, v1

    sub-float/2addr v2, v14

    sub-float v3, v12, v14

    add-float/2addr v1, v11

    add-float v4, v1, v14

    add-float v5, v15, v14

    iget-object v6, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v12

    move v4, v11

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v12, v1, v2

    iget v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineMargin:I

    int-to-float v2, v1

    sub-float v2, v12, v2

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ICON_BASE_HALF_HEIGHT:I

    int-to-float v4, v3

    add-float/2addr v4, v8

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    int-to-float v2, v3

    add-float/2addr v8, v2

    int-to-float v1, v1

    add-float/2addr v8, v1

    div-float v1, v13, v9

    sub-float v2, v10, v1

    sub-float/2addr v2, v14

    sub-float v3, v8, v14

    add-float/2addr v1, v11

    add-float v4, v1, v14

    add-float v5, v12, v14

    iget-object v6, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v8

    move v4, v11

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getEvValue()F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    return v0
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 3

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x66

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public loadResource(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V
    .locals 3

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Z)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110033

    invoke-static {v1, v2}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0O0(Landroid/content/Context;I)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0O0/OooO00o/OooO00o/OooO0o;

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)Z

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->ADJUST_ICON_LENGTH:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(F)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooO/OooO00o/OooO;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooO/OooO00o/OooO;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public playVisibleAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->start()V

    :cond_1
    return-void
.end method

.method public resetDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(F)V

    :cond_0
    return-void
.end method

.method public setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->setAlpha(I)V

    :cond_0
    return-object p0
.end method

.method public setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 5

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    new-instance v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;

    const-string v2, "**"

    const-string/jumbo v3, "sun"

    const-string/jumbo v4, "\u692d\u5706 1"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;-><init>([Ljava/lang/String;)V

    sget-object v3, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOoo:Landroid/graphics/ColorFilter;

    new-instance v4, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    invoke-direct {v4, v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v3, v4}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mExposureDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    new-instance v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;

    const-string/jumbo v3, "\u5149\u8292"

    filled-new-array {v2, v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;-><init>([Ljava/lang/String;)V

    sget-object v2, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOoo:Landroid/graphics/ColorFilter;

    new-instance v3, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    invoke-direct {v3, v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2, v3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    :cond_0
    return-object p0
.end method

.method public setDistanceY(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentDistanceY:F

    return-void
.end method

.method public setEvValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvValue:F

    return-void
.end method

.method public setLineAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    int-to-float p1, p1

    const/high16 v0, 0x42fe0000    # 127.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42040000    # 33.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineShadowAlpha:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mOrientation:I

    return-void
.end method

.method public setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mRtl:Z

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mDisplayRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setShowLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    return-void
.end method

.method public setShowLine(ZLandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/16 p1, 0x7f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mLineAlpha:I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mShowLine:Z

    invoke-direct {p0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->startEvLineAriseAnimIfNeed(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooO/OooO00o/OooOO0O;

    invoke-direct {v0, p0, p2}, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooOooO/OooO00o/OooOO0O;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mEvAdjustAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f
        0x0
    .end array-data
.end method

.method public setStartOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public updateValue(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mStartOffsetY:F

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->mCurrentOffsetY:F

    return-void
.end method
