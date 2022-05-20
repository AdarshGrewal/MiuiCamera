.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintCircle.java"


# instance fields
.field public isInBeautyMode:Z

.field public mArcRectF:Landroid/graphics/RectF;

.field public mBeautyColor:I

.field public mIsHintAlpha:Z

.field public mNeedProcessShader:Z

.field public mNeedRing:Z

.field public mNoNeedArc:Z

.field public mOffsetPaint:Landroid/graphics/Paint;

.field public mProcessColor:I

.field public mProcessShader:Landroid/graphics/Shader;

.field public mRecordingBgPaint:Landroid/graphics/Paint;

.field public mRectF:Landroid/graphics/RectF;

.field public mRingWidth:F

.field public mSegmentRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mSegmentTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mSpaceAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const p1, -0x3967c

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mBeautyColor:I

    const/high16 p1, 0x40400000    # 3.0f

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSpaceAngle:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNeedRing:Z

    return-void
.end method

.method private drawElapsedArc(Landroid/graphics/Canvas;FF)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mArcRectF:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float/2addr v0, p2

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSpaceAngle:F

    add-float v3, v0, v2

    sub-float/2addr p3, p2

    sub-float p2, p3, v2

    iget-object v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawOffset(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mArcRectF:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float/2addr p2, v0

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSpaceAngle:F

    sub-float v2, p2, v0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v3, v0, p2

    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mOffsetPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgressArc(Landroid/graphics/Canvas;FF)V
    .locals 7

    sub-float/2addr p3, p2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSpaceAngle:F

    sub-float/2addr p3, v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mArcRectF:Landroid/graphics/RectF;

    add-float v3, p2, v0

    const/4 p2, 0x0

    cmpl-float v0, p3, p2

    if-lez v0, :cond_0

    move v4, p3

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public addSegmentNow(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentTimes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentTimes:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentTimes:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearSegments()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNoNeedArc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-eqz v0, :cond_b

    .line 4
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    .line 5
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    .line 6
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v1, v0

    add-float/2addr v3, v0

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNeedProcessShader:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isInBeautyMode:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNeedProcessShader:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mIsHintAlpha:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    sget v5, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    :goto_1
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mArcRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    :goto_2
    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v2

    .line 12
    iget-boolean v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    const/high16 v4, 0x43b40000    # 360.0f

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    goto :goto_3

    :cond_5
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    sub-float v3, v4, v3

    :goto_3
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v4, v3

    .line 13
    iget v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSpaceAngle:F

    sub-float/2addr v4, v5

    .line 14
    iget-object v7, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mArcRectF:Landroid/graphics/RectF;

    add-float/2addr v3, v0

    add-float v8, v3, v5

    cmpl-float v5, v4, v1

    if-lez v5, :cond_6

    move v9, v4

    goto :goto_4

    :cond_6
    move v9, v1

    :goto_4
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OPAQUE:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNeedProcessShader:Z

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mProcessColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    :cond_7
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isInBeautyMode:Z

    if-eqz v1, :cond_8

    .line 19
    iget-object v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mBeautyColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v2

    .line 22
    invoke-direct {p0, p1, v0, v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->drawProgressArc(Landroid/graphics/Canvas;FF)V

    move v0, v4

    goto :goto_5

    :cond_9
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_a

    .line 23
    invoke-direct {p0, p1, v0, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->drawProgressArc(Landroid/graphics/Canvas;FF)V

    .line 24
    :cond_a
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 25
    :cond_b
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNeedRing:Z

    if-eqz v0, :cond_c

    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRingWidth:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6

    .line 29
    :cond_c
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    .line 30
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    .line 31
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    .line 32
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRecordingBgPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_d

    .line 34
    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 35
    :cond_d
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_6
    return-void
.end method

.method public getSegmentRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    return-object v0
.end method

.method public hasSegments()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public immediatelyColorChange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mArcRectF:Landroid/graphics/RectF;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mOffsetPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mOffsetPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mOffsetPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mOffsetPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public initVVProcessShader()V
    .locals 0

    return-void
.end method

.method public removeLastSegmentAndGetLastTime()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    return-wide v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide v1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSegmentTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetRecordingState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 3
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedProcessShade(ZIZ)V

    return-void
.end method

.method public setNeedProcessShade(ZIZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNeedProcessShader:Z

    .line 2
    iput-boolean p3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mIsHintAlpha:Z

    if-eqz p1, :cond_0

    .line 3
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mProcessColor:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    return-void
.end method

.method public setNeedSplit(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNoNeedArc:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setSpaceAngel(F)V

    return-void
.end method

.method public setRecordingBgColor(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRecordingBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRecordingBgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRecordingBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRecordingBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRecordingBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setRingVisible(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mNeedRing:Z

    return-void
.end method

.method public setSpaceAngel(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mSpaceAngle:F

    return-void
.end method

.method public setSpecificProgress(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    return-void
.end method

.method public updateValue(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->mRingWidth:F

    return-void
.end method
