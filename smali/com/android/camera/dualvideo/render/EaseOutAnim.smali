.class public Lcom/android/camera/dualvideo/render/EaseOutAnim;
.super Ljava/lang/Object;
.source "EaseOutAnim.java"


# instance fields
.field public final mDuration:I

.field public final mStartTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mStartTime:Ljava/lang/Long;

    .line 3
    iput p1, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mDuration:I

    return-void
.end method

.method private transEaseOut(F)F
    .locals 8

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3fe51b71758e2196L    # 0.6596

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x400351eb851eb852L    # 2.415

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x4005f7ced916872bL    # 2.746

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    const-wide v0, 0x3f7950331e3a7daaL    # 0.00618

    add-double/2addr v2, v0

    double-to-float p1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method


# virtual methods
.method public getRatio()F
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    long-to-float v0, v0

    .line 3
    iget v1, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->transEaseOut(F)F

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    iget v2, p0, Lcom/android/camera/dualvideo/render/EaseOutAnim;->mDuration:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
