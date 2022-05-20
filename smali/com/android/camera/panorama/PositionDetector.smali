.class public Lcom/android/camera/panorama/PositionDetector;
.super Ljava/lang/Object;
.source "PositionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/panorama/PositionDetector$DiffManager;
    }
.end annotation


# static fields
.field public static final COMPLETED:I = 0x1

.field public static final ERROR_IDLE:I = -0x1

.field public static final ERROR_OUT_OF_RANGE:I = -0x3

.field public static final ERROR_REVERSE:I = -0x2

.field public static final IDLE_THRES_RATIO:I = 0x2

.field public static final IDLE_TIME:J = 0xb2d05e00L

.field public static final OK:I = 0x0

.field public static final PREVIEW_LONG_SIDE_CROP_RATIO:F = 0.8f

.field public static final REVERSE_THRES_RATIO:I = 0x7

.field public static final SPEED_CHECK_CONTINUOUSLY_TIMES:I = 0x5

.field public static final SPEED_CHECK_IGNORE_TIMES:I = 0xf

.field public static final SPEED_CHECK_MODE:I = 0x1

.field public static final SPEED_CHECK_MODE_AVERAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PositionDetector"

.field public static final TOO_FAST_THRES_RATIO:D = 0.8

.field public static final TOO_SLOW_THRES_RATIO:D = 0.05

.field public static final WARNING_TOO_FAST:I = 0x2

.field public static final WARNING_TOO_SLOW:I = 0x3


# instance fields
.field public count:J

.field public volatile cur_x:D

.field public volatile cur_y:D

.field public final direction:I

.field public final frame_rect:Landroid/graphics/RectF;

.field public idle_rect:Landroid/graphics/RectF;

.field public idle_start_time:J

.field public idle_thres:D

.field public mCameraOrientation:I

.field public final mDiffManager:Lcom/android/camera/panorama/PositionDetector$DiffManager;

.field public mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

.field public mIsFrontCamera:Z

.field public mPreviewFrameRect:Landroid/graphics/Rect;

.field public mPreviewHeight:I

.field public mPreviewViewHeight:I

.field public mPreviewViewWidth:I

.field public mPreviewWidth:I

.field public final output_height:I

.field public final output_width:I

.field public peak:D

.field public prev_x:D

.field public prev_y:D

.field public reset_idle_timer:Z

.field public reverse_thres:D

.field public reverse_thres2:D

.field public too_fast_count:I

.field public too_fast_thres:D

.field public too_slow_count:I

.field public too_slow_thres:D


# direct methods
.method public constructor <init>(Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;Landroid/view/ViewGroup;ZIIIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->frame_rect:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Lcom/android/camera/panorama/PositionDetector$DiffManager;

    invoke-direct {v0}, Lcom/android/camera/panorama/PositionDetector$DiffManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->mDiffManager:Lcom/android/camera/panorama/PositionDetector$DiffManager;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    .line 6
    iput-object p1, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewHeight:I

    .line 10
    iput-boolean p3, p0, Lcom/android/camera/panorama/PositionDetector;->mIsFrontCamera:Z

    .line 11
    iput p4, p0, Lcom/android/camera/panorama/PositionDetector;->mCameraOrientation:I

    .line 12
    iput p5, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewWidth:I

    .line 13
    iput p6, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewHeight:I

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->count:J

    .line 15
    iput p7, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    .line 16
    iput p8, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    .line 17
    iput p9, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/camera/panorama/PositionDetector;->reset_idle_timer:Z

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/android/camera/panorama/PositionDetector;->too_fast_count:I

    iput p2, p0, Lcom/android/camera/panorama/PositionDetector;->too_slow_count:I

    const-wide/16 p2, 0x0

    .line 20
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->prev_y:D

    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->prev_x:D

    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    .line 21
    iget p4, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    const-wide p5, 0x3f80624dd2f1a9fcL    # 0.008

    const-wide v0, 0x3f40624dd2f1a9fcL    # 5.0E-4

    const p7, 0x3ca3d70a    # 0.02f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3d8f5c29    # 0.07f

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz p4, :cond_9

    if-eq p4, p1, :cond_6

    const/4 p1, 0x2

    if-eq p4, p1, :cond_3

    const/4 p1, 0x3

    if-eq p4, p1, :cond_0

    goto/16 :goto_8

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget p4, p0, Lcom/android/camera/panorama/PositionDetector;->mCameraOrientation:I

    add-int p8, p1, p4

    rem-int/lit16 p8, p8, 0x168

    if-eq p8, v5, :cond_2

    add-int/2addr p1, p4

    rem-int/lit16 p1, p1, 0x168

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    int-to-double p1, p9

    .line 23
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    :goto_1
    int-to-float p1, p9

    mul-float/2addr v3, p1

    float-to-double p2, v3

    .line 25
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres:D

    mul-float/2addr v2, p1

    float-to-double p2, v2

    .line 26
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres2:D

    mul-float/2addr p1, p7

    float-to-double p1, p1

    .line 27
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->idle_thres:D

    int-to-double p1, p9

    mul-double/2addr v0, p1

    .line 28
    iput-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->too_slow_thres:D

    mul-double/2addr p1, p5

    .line 29
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->too_fast_thres:D

    goto/16 :goto_8

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget p4, p0, Lcom/android/camera/panorama/PositionDetector;->mCameraOrientation:I

    add-int p8, p1, p4

    rem-int/lit16 p8, p8, 0x168

    if-eq p8, v5, :cond_5

    add-int/2addr p1, p4

    rem-int/lit16 p1, p1, 0x168

    if-ne p1, v4, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    goto :goto_3

    :cond_5
    :goto_2
    int-to-double p1, p9

    .line 32
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    :goto_3
    int-to-float p1, p9

    mul-float/2addr v3, p1

    float-to-double p2, v3

    .line 33
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres:D

    mul-float/2addr v2, p1

    float-to-double p2, v2

    .line 34
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres2:D

    mul-float/2addr p1, p7

    float-to-double p1, p1

    .line 35
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->idle_thres:D

    int-to-double p1, p9

    mul-double/2addr v0, p1

    .line 36
    iput-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->too_slow_thres:D

    mul-double/2addr p1, p5

    .line 37
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->too_fast_thres:D

    goto :goto_8

    .line 38
    :cond_6
    iget-object p1, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget p4, p0, Lcom/android/camera/panorama/PositionDetector;->mCameraOrientation:I

    add-int p9, p1, p4

    rem-int/lit16 p9, p9, 0x168

    if-eq p9, v5, :cond_8

    add-int/2addr p1, p4

    rem-int/lit16 p1, p1, 0x168

    if-ne p1, v4, :cond_7

    goto :goto_4

    :cond_7
    int-to-double p1, p8

    .line 39
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    goto :goto_5

    .line 40
    :cond_8
    :goto_4
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    :goto_5
    int-to-float p1, p8

    mul-float/2addr v3, p1

    float-to-double p2, v3

    .line 41
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres:D

    mul-float/2addr v2, p1

    float-to-double p2, v2

    .line 42
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres2:D

    mul-float/2addr p1, p7

    float-to-double p1, p1

    .line 43
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->idle_thres:D

    int-to-double p1, p8

    mul-double/2addr v0, p1

    .line 44
    iput-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->too_slow_thres:D

    mul-double/2addr p1, p5

    .line 45
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->too_fast_thres:D

    goto :goto_8

    .line 46
    :cond_9
    iget-object p1, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget p1, p1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget p4, p0, Lcom/android/camera/panorama/PositionDetector;->mCameraOrientation:I

    add-int p9, p1, p4

    rem-int/lit16 p9, p9, 0x168

    if-eq p9, v5, :cond_b

    add-int/2addr p1, p4

    rem-int/lit16 p1, p1, 0x168

    if-ne p1, v4, :cond_a

    goto :goto_6

    .line 47
    :cond_a
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    goto :goto_7

    :cond_b
    :goto_6
    int-to-double p1, p8

    .line 48
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    :goto_7
    int-to-float p1, p8

    mul-float/2addr v3, p1

    float-to-double p2, v3

    .line 49
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres:D

    mul-float/2addr v2, p1

    float-to-double p2, v2

    .line 50
    iput-wide p2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres2:D

    mul-float/2addr p1, p7

    float-to-double p1, p1

    .line 51
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->idle_thres:D

    int-to-double p1, p8

    mul-double/2addr v0, p1

    .line 52
    iput-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->too_slow_thres:D

    mul-double/2addr p1, p5

    .line 53
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->too_fast_thres:D

    :goto_8
    return-void
.end method

.method private checkSpeed()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    iget-wide v3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    .line 3
    iget-wide v5, p0, Lcom/android/camera/panorama/PositionDetector;->prev_x:D

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    .line 5
    iget-wide v5, p0, Lcom/android/camera/panorama/PositionDetector;->prev_y:D

    :goto_0
    sub-double/2addr v3, v5

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 7
    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->mDiffManager:Lcom/android/camera/panorama/PositionDetector$DiffManager;

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/PositionDetector$DiffManager;->add(D)V

    const-wide/16 v3, 0xf

    .line 8
    iget-wide v5, p0, Lcom/android/camera/panorama/PositionDetector;->count:J

    cmp-long v0, v3, v5

    const/4 v3, 0x0

    if-gez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->mDiffManager:Lcom/android/camera/panorama/PositionDetector$DiffManager;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PositionDetector$DiffManager;->getDiff()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/panorama/PositionDetector;->too_slow_thres:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->mDiffManager:Lcom/android/camera/panorama/PositionDetector$DiffManager;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PositionDetector$DiffManager;->getDiff()D

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/camera/panorama/PositionDetector;->too_fast_thres:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 11
    :goto_1
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->too_slow_count:I

    if-lez v0, :cond_3

    iput v3, p0, Lcom/android/camera/panorama/PositionDetector;->too_slow_count:I

    .line 12
    :cond_3
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->too_fast_count:I

    if-lez v0, :cond_4

    iput v3, p0, Lcom/android/camera/panorama/PositionDetector;->too_fast_count:I

    :cond_4
    return v1
.end method

.method private isComplete()Z
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    iget-wide v3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    .line 3
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    .line 4
    iget v5, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewWidth:I

    div-int/2addr v5, v2

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    .line 6
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    .line 7
    iget v5, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewWidth:I

    div-int/2addr v5, v2

    .line 8
    :goto_0
    iget v6, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    const/16 v7, 0x5a

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v9, :cond_5

    if-eq v6, v1, :cond_5

    .line 9
    iget-object v1, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-eq v1, v7, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    div-int/2addr v5, v2

    sub-int/2addr v0, v5

    int-to-double v0, v0

    cmpl-double v0, v3, v0

    if-lez v0, :cond_2

    move v8, v9

    :cond_2
    return v8

    .line 11
    :cond_3
    :goto_1
    div-int/2addr v5, v2

    int-to-double v0, v5

    cmpg-double v0, v3, v0

    if-gez v0, :cond_4

    move v8, v9

    :cond_4
    return v8

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v1, v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-eq v1, v7, :cond_8

    if-nez v1, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    div-int/2addr v5, v2

    int-to-double v0, v5

    cmpg-double v0, v3, v0

    if-gez v0, :cond_7

    move v8, v9

    :cond_7
    return v8

    .line 14
    :cond_8
    :goto_2
    div-int/2addr v5, v2

    sub-int/2addr v0, v5

    int-to-double v0, v0

    cmpl-double v0, v3, v0

    if-lez v0, :cond_9

    move v8, v9

    :cond_9
    return v8
.end method

.method private isIdle()Z
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-boolean v2, p0, Lcom/android/camera/panorama/PositionDetector;->reset_idle_timer:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v3, p0, Lcom/android/camera/panorama/PositionDetector;->reset_idle_timer:Z

    .line 4
    iput-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->idle_start_time:J

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/android/camera/panorama/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 6
    iget-wide v4, p0, Lcom/android/camera/panorama/PositionDetector;->idle_thres:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 7
    new-instance v2, Landroid/graphics/RectF;

    iget-wide v6, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    sub-double/2addr v6, v4

    double-to-float v6, v6

    iget-wide v7, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    sub-double/2addr v7, v4

    double-to-float v7, v7

    iget-wide v8, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    add-double/2addr v8, v4

    double-to-float v8, v8

    iget-wide v9, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    add-double/2addr v9, v4

    double-to-float v4, v9

    invoke-direct {v2, v6, v7, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/camera/panorama/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    :cond_1
    const-wide v4, 0xb2d05e00L

    .line 8
    iget-wide v6, p0, Lcom/android/camera/panorama/PositionDetector;->idle_start_time:J

    sub-long/2addr v0, v6

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-gez v0, :cond_2

    return v1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    iget-wide v4, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    double-to-float v2, v4

    iget-wide v4, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    double-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iput-boolean v1, p0, Lcom/android/camera/panorama/PositionDetector;->reset_idle_timer:Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    :cond_3
    return v3
.end method

.method private isReverse()Z
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cur_x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", cur_y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PositionDetector"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 3
    iget-wide v3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    .line 4
    iget-wide v5, p0, Lcom/android/camera/panorama/PositionDetector;->prev_x:D

    .line 5
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    .line 7
    iget-wide v5, p0, Lcom/android/camera/panorama/PositionDetector;->prev_y:D

    .line 8
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    .line 9
    :goto_0
    iget v7, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    const/16 v8, 0xb4

    const/16 v9, 0x5a

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v7, v11, :cond_2

    if-eq v7, v2, :cond_2

    .line 10
    iget-object v7, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v7, v7, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v12, p0, Lcom/android/camera/panorama/PositionDetector;->mCameraOrientation:I

    add-int v13, v7, v12

    rem-int/lit16 v13, v13, 0x168

    if-eqz v13, :cond_1

    add-int/2addr v7, v12

    rem-int/lit16 v7, v7, 0x168

    const/16 v12, 0x10e

    if-ne v7, v12, :cond_3

    :cond_1
    :goto_1
    move v7, v10

    goto :goto_2

    .line 11
    :cond_2
    iget-object v7, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v7, v7, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v12, p0, Lcom/android/camera/panorama/PositionDetector;->mCameraOrientation:I

    add-int v13, v7, v12

    rem-int/lit16 v13, v13, 0x168

    if-eq v13, v9, :cond_1

    add-int/2addr v7, v12

    rem-int/lit16 v7, v7, 0x168

    if-ne v7, v8, :cond_3

    goto :goto_1

    :cond_3
    move v7, v11

    :goto_2
    if-eqz v7, :cond_e

    sub-double/2addr v5, v3

    .line 12
    iget-wide v12, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres2:D

    cmpl-double v5, v5, v12

    if-lez v5, :cond_4

    goto/16 :goto_7

    .line 13
    :cond_4
    iget-object v5, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v5, v5, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v6, p0, Lcom/android/camera/panorama/PositionDetector;->mCameraOrientation:I

    add-int v7, v5, v6

    rem-int/lit16 v7, v7, 0x168

    if-eq v7, v9, :cond_8

    add-int/2addr v5, v6

    rem-int/lit16 v5, v5, 0x168

    if-ne v5, v8, :cond_5

    goto :goto_5

    .line 14
    :cond_5
    iget v5, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    if-eqz v5, :cond_7

    if-eq v5, v11, :cond_6

    if-eq v5, v1, :cond_7

    if-eq v5, v2, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    :goto_3
    move v1, v10

    goto :goto_6

    .line 16
    :cond_7
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    :goto_4
    move v1, v11

    goto :goto_6

    .line 17
    :cond_8
    :goto_5
    iget v5, p0, Lcom/android/camera/panorama/PositionDetector;->direction:I

    if-eqz v5, :cond_a

    if-eq v5, v11, :cond_9

    if-eq v5, v1, :cond_a

    if-eq v5, v2, :cond_9

    goto :goto_3

    .line 18
    :cond_9
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    goto :goto_4

    .line 19
    :cond_a
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    goto :goto_3

    :goto_6
    if-eqz v1, :cond_c

    int-to-double v0, v0

    cmpl-double v0, v3, v0

    if-lez v0, :cond_b

    goto :goto_7

    .line 20
    :cond_b
    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    sub-double/2addr v0, v3

    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    goto :goto_7

    :cond_c
    int-to-double v0, v0

    cmpl-double v0, v3, v0

    if-lez v0, :cond_d

    goto :goto_7

    .line 21
    :cond_d
    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    sub-double/2addr v3, v0

    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres:D

    cmpl-double v0, v3, v0

    if-lez v0, :cond_12

    goto :goto_7

    :cond_e
    sub-double v0, v3, v5

    .line 22
    iget-wide v5, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres2:D

    cmpl-double v0, v0, v5

    if-lez v0, :cond_f

    :goto_7
    move v10, v11

    goto :goto_8

    .line 23
    :cond_f
    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    cmpl-double v0, v3, v0

    if-lez v0, :cond_10

    .line 24
    iput-wide v3, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    :cond_10
    const-wide/16 v0, 0x0

    cmpg-double v0, v3, v0

    if-gez v0, :cond_11

    goto :goto_7

    .line 25
    :cond_11
    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->peak:D

    sub-double/2addr v0, v3

    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->reverse_thres:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    goto :goto_7

    :cond_12
    :goto_8
    return v10
.end method

.method private isYOutOfRange()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_9

    iget-wide v4, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    cmpg-double v0, v4, v2

    if-gez v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    iget v2, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v3, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    const/4 v4, 0x3

    const/16 v5, 0x5a

    const/4 v6, 0x0

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    rem-int/lit16 v2, v2, 0xb4

    if-ne v2, v5, :cond_3

    .line 5
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_0
    return v1

    .line 6
    :cond_3
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v6

    :goto_1
    return v1

    .line 7
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    rem-int/lit16 v2, v2, 0xb4

    if-ne v2, v5, :cond_7

    .line 8
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v6

    :goto_3
    return v1

    .line 9
    :cond_7
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v6

    :cond_9
    :goto_4
    return v1
.end method

.method private updateFrame()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v2, 0x5a

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_3

    .line 3
    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 5
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    iget v3, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 6
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 7
    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 8
    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_width:I

    :goto_0
    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float/2addr v4, v0

    goto/16 :goto_6

    .line 9
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 10
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    double-to-float v1, v1

    .line 11
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    iget v4, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 12
    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v3, v3, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_height:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v0

    .line 13
    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    :goto_2
    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float/2addr v1, v0

    goto/16 :goto_6

    :cond_3
    const/16 v2, 0xb4

    if-ne v1, v2, :cond_6

    .line 14
    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-ne v0, v3, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 16
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    iget v3, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 17
    iget v2, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 18
    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 19
    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_width:I

    goto :goto_0

    .line 20
    :cond_5
    :goto_3
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 21
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    double-to-float v1, v1

    .line 22
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    iget v4, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 23
    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v3, v3, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_height:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v0

    .line 24
    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_2

    :cond_6
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_9

    .line 25
    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_7

    goto :goto_4

    .line 26
    :cond_7
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 27
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    iget v3, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 28
    iget v2, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 29
    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 30
    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_width:I

    goto/16 :goto_0

    .line 31
    :cond_8
    :goto_4
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    int-to-double v1, v1

    .line 32
    iget-wide v3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 33
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    iget v4, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 34
    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v3, v3, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_height:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v0

    .line 35
    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto/16 :goto_2

    .line 36
    :cond_9
    iget v0, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_b

    if-ne v0, v3, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 38
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    iget v3, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 39
    iget-wide v2, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    iget v4, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 40
    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 41
    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_width:I

    goto/16 :goto_0

    .line 42
    :cond_b
    :goto_5
    iget v0, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 43
    iget-wide v1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    iget v3, p0, Lcom/android/camera/panorama/PositionDetector;->output_width:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v2, v1

    .line 44
    iget v1, p0, Lcom/android/camera/panorama/PositionDetector;->output_height:I

    int-to-double v3, v1

    iget-wide v7, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    sub-double/2addr v3, v7

    double-to-float v1, v3

    .line 45
    iget-object v3, p0, Lcom/android/camera/panorama/PositionDetector;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v3, v3, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_height:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    mul-float/2addr v3, v0

    .line 46
    iget-object v4, p0, Lcom/android/camera/panorama/PositionDetector;->mPreviewFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto/16 :goto_2

    .line 47
    :goto_6
    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->frame_rect:Landroid/graphics/RectF;

    sub-float v5, v1, v3

    sub-float v6, v2, v4

    add-float/2addr v1, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public detect(DD)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->count:J

    .line 2
    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isEqualsZero(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->prev_x:D

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isEqualsZero(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->prev_x:D

    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    iput-wide v0, p0, Lcom/android/camera/panorama/PositionDetector;->prev_x:D

    .line 5
    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_x:D

    .line 6
    :goto_0
    iget-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    invoke-static {p1, p2}, Lcom/android/camera/Util;->isEqualsZero(D)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->prev_y:D

    invoke-static {p1, p2}, Lcom/android/camera/Util;->isEqualsZero(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iput-wide p3, p0, Lcom/android/camera/panorama/PositionDetector;->prev_y:D

    iput-wide p3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    goto :goto_1

    .line 8
    :cond_1
    iget-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    iput-wide p1, p0, Lcom/android/camera/panorama/PositionDetector;->prev_y:D

    .line 9
    iput-wide p3, p0, Lcom/android/camera/panorama/PositionDetector;->cur_y:D

    .line 10
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/panorama/PositionDetector;->isYOutOfRange()Z

    move-result p1

    const-string p2, "PositionDetector"

    if-eqz p1, :cond_2

    const-string p1, "isYOutOfRange"

    .line 11
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    return p1

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/panorama/PositionDetector;->isReverse()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "isReverse"

    .line 13
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/panorama/PositionDetector;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "isComplete"

    .line 15
    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/panorama/PositionDetector;->checkSpeed()I

    move-result p1

    .line 17
    invoke-direct {p0}, Lcom/android/camera/panorama/PositionDetector;->updateFrame()V

    return p1
.end method

.method public getFrameRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/panorama/PositionDetector;->frame_rect:Landroid/graphics/RectF;

    return-object v0
.end method
