.class public Lcom/android/camera/ui/drawable/AutoHibernationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AutoHibernationDrawable.java"


# static fields
.field public static final ALPHA_HINT:I = 0x66

.field public static final ALPHA_OUTSTANDING:I = 0xff


# instance fields
.field public mBaseRadius:F

.field public mDuration:J

.field public mIsClockwise:Z

.field public mLastDrawAlpha:I

.field public mLineHeight:F

.field public mMiddleX:F

.field public mMiddleY:F

.field public mOnce:Z

.field public mPaint:Landroid/graphics/Paint;

.field public mPreTimeAnimator:Landroid/animation/ValueAnimator;

.field public mStart:F

.field public mTimeAngle:F

.field public mTimeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    .line 4
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    .line 5
    iput v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLastDrawAlpha:I

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mDuration:J

    .line 7
    iput v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mStart:F

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0700fb

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLineHeight:F

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    return p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    iput-object v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    iput-object v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mBaseRadius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xb4

    if-ge v1, v4, :cond_7

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-nez v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    :goto_1
    add-float/2addr v3, v4

    .line 4
    iget v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleX:F

    iget v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleY:F

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5
    iget v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    cmpg-float v4, v3, v4

    const/16 v5, 0x66

    const/16 v6, 0xff

    if-gez v4, :cond_4

    .line 6
    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    if-eqz v4, :cond_2

    move v5, v6

    .line 7
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    const/high16 v6, 0x43af0000    # 350.0f

    cmpl-float v6, v4, v6

    const v7, 0x43b18000    # 355.0f

    if-lez v6, :cond_3

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    .line 8
    iput v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLastDrawAlpha:I

    .line 9
    :cond_3
    iget v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    .line 10
    iget v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLastDrawAlpha:I

    goto :goto_2

    .line 11
    :cond_4
    iget-boolean v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    .line 12
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    iget v9, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleX:F

    iget v4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleY:F

    sub-float v8, v4, v0

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mLineHeight:F

    add-float v10, v4, v5

    iget-object v11, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setWidthHeight(FF)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    .line 1
    iput v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleX:F

    div-float v1, p2, v0

    .line 2
    iput v1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mMiddleY:F

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mBaseRadius:F

    return-void
.end method

.method public startRecord(JFZ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mDuration:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mStart:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    if-eq p4, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->cancelAnimation()V

    .line 6
    :cond_2
    iput-wide p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mDuration:J

    .line 7
    iput p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mStart:F

    .line 8
    iput-boolean p4, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$1;-><init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;-><init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p4, :cond_3

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method public startRecordForFastmotion(IFZ)V
    .locals 3

    .line 1
    iput-boolean p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mOnce:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v2, p2, v1

    aput v2, v0, p3

    const/4 p3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, p3

    .line 4
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    sub-float p2, v1, p2

    div-float/2addr p2, v1

    int-to-float v0, p1

    mul-float/2addr p2, v0

    float-to-long v0, p2

    .line 5
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$3;

    invoke-direct {p3, p0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$3;-><init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;-><init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mPreTimeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
