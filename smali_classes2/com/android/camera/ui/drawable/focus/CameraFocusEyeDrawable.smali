.class public Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;
.super Ljava/lang/Object;
.source "CameraFocusEyeDrawable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraFocusEyeDrawable"


# instance fields
.field public mAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

.field public mShowAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 3
    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/4 p1, -0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetColor(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const v2, 0x3faa3d71    # 1.33f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetValues(FIIF)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public applyRule(F)V
    .locals 9

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const v3, 0x40ba2d0e    # 5.818f

    const v4, 0x4145d2f2    # 12.364f

    if-gez v1, :cond_0

    const v1, 0x3f8ba5e3    # 1.091f

    const/4 v5, 0x1

    move v8, v5

    move v5, v2

    move v2, v8

    goto :goto_0

    :cond_0
    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v5, p1, v1

    if-gez v5, :cond_1

    const v1, 0x3fba3d71    # 1.455f

    .line 1
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v5

    .line 2
    iget-object v6, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v7

    iput v7, v6, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mRoundRadius:I

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    const v1, 0x3fe8b439    # 1.818f

    .line 3
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v5

    .line 4
    iget-object v6, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v7

    iput v7, v6, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mRoundRadius:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v5, v2

    .line 5
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v6, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->setStrokeWidthDirectly(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    if-eqz v2, :cond_3

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 6
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-double v4, p1

    mul-double/2addr v4, v0

    double-to-int v5, v4

    .line 7
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    iput p1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mRoundRadius:I

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1, v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->setStickLength(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->reInitPaint()V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mShowAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getVisibility()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->getVisible()I

    move-result v0

    return v0
.end method

.method public setMiddle(FFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setMiddle(FFF)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p3, p1

    .line 2
    invoke-virtual {p0, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->applyRule(F)V

    return-void
.end method

.method public setVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    return-void
.end method

.method public startAlphaAnim(Landroid/view/View;ZJ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->cancelAnimation()V

    .line 2
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAlphaAnim() called with: parent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], inOrOut = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], duration = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    new-array p2, v0, [I

    .line 3
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-array p2, v0, [I

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 4
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0oo;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO0oo;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public startShowAnim(Landroid/view/View;I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startShowAnim: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mShowAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [F

    int-to-float p2, p2

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr v2, p2

    div-float/2addr v2, p2

    const/4 p2, 0x0

    aput v2, v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 5
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0xc8

    .line 6
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO;

    invoke-direct {v2, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 8
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    .line 9
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooOO0;

    invoke-direct {v5, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooOO0;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;Landroid/view/View;)V

    .line 10
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance p1, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable$1;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setVisible(I)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mRectPaint:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/16 v4, 0xff

    invoke-virtual {p1, v4}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->mShowAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, p2

    aput-object v2, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 15
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
