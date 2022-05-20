.class public Lmiuix/androidbasewidget/widget/SpringScroller;
.super Ljava/lang/Object;
.source "SpringScroller.java"


# static fields
.field public static final HORIZONTAL:I = 0x1

.field public static final MAX_DELTA_TIME:F = 0.016f

.field public static final VALUE_THRESHOLD:F = 1.0f

.field public static final VERTICAL:I = 0x2


# instance fields
.field public mCurrX:D

.field public mCurrY:D

.field public mCurrentTime:J

.field public mEndX:D

.field public mEndY:D

.field public mFinished:Z

.field public mLastStep:Z

.field public mOrientation:I

.field public mOriginStartY:D

.field public mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

.field public mStartTime:J

.field public mStartX:D

.field public mStartY:D

.field public mVelocity:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    return-void
.end method


# virtual methods
.method public final abortAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 4
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    .line 5
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    return v1

    .line 6
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrentTime:J

    .line 7
    iget-wide v4, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const v2, 0x3c83126f    # 0.016f

    .line 8
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 9
    :goto_0
    iget-wide v3, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrentTime:J

    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    .line 10
    iget v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 11
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    iget-wide v8, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    iget-wide v10, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lmiuix/androidbasewidget/widget/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    .line 12
    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    float-to-double v7, v2

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iput-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    .line 13
    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    .line 14
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    invoke-virtual {p0, v5, v6, v2, v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->isAtEquilibrium(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    goto :goto_1

    .line 16
    :cond_3
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    goto :goto_1

    .line 17
    :cond_4
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    iget-wide v8, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    iget-wide v10, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lmiuix/androidbasewidget/widget/SpringOperator;->updateVelocity(DFDD)D

    move-result-wide v3

    .line 18
    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    float-to-double v7, v2

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iput-wide v5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    .line 19
    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    .line 20
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    invoke-virtual {p0, v5, v6, v2, v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->isAtEquilibrium(DD)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    goto :goto_1

    .line 22
    :cond_5
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    :goto_1
    return v1

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrX()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getCurrY()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    double-to-int v0, v0

    return v0
.end method

.method public final getFinalX()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    double-to-int v0, v0

    return v0
.end method

.method public final getStartX()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    double-to-int v0, v0

    return v0
.end method

.method public isAtEquilibrium(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2

    int-to-double v0, p1

    .line 1
    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    return-void
.end method

.method public startScroll(FFFFF)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 2
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    float-to-double v0, p1

    .line 3
    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    float-to-double v0, p2

    .line 4
    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    float-to-double v0, p3

    .line 5
    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    .line 6
    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mOriginStartY:D

    double-to-int v0, v0

    int-to-double v0, v0

    .line 7
    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    float-to-double v0, p4

    .line 8
    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    float-to-double v0, p5

    .line 9
    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    cmpg-double p5, v0, v2

    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f666666    # 0.9f

    if-gtz p5, :cond_0

    .line 11
    new-instance p5, Lmiuix/androidbasewidget/widget/SpringOperator;

    invoke-direct {p5, v1, v0}, Lmiuix/androidbasewidget/widget/SpringOperator;-><init>(FF)V

    iput-object p5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    goto :goto_0

    .line 12
    :cond_0
    new-instance p5, Lmiuix/androidbasewidget/widget/SpringOperator;

    invoke-direct {p5, v1, v0}, Lmiuix/androidbasewidget/widget/SpringOperator;-><init>(FF)V

    iput-object p5, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    :goto_0
    sub-float/2addr p4, p3

    .line 13
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mOrientation:I

    .line 14
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    return-void
.end method
