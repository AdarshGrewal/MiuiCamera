.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintMotion.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mIsOutstandingRound:Z

.field public mLastAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->mIsOutstandingRound:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->mLastAngle:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->mLastAngle:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->mIsOutstandingRound:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->mIsOutstandingRound:Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x28

    if-ge v1, v3, :cond_7

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 v3, v1, 0x9

    int-to-float v3, v3

    .line 5
    iget v4, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/16 v4, 0xc

    .line 6
    iget v5, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 7
    iget-boolean v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    const/16 v7, 0x13

    const/high16 v8, 0x42b40000    # 90.0f

    if-eqz v6, :cond_5

    cmpl-float v6, v3, v2

    if-nez v6, :cond_1

    .line 8
    iget-boolean v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->needZero:Z

    if-eqz v6, :cond_1

    .line 9
    iget-object v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 10
    :cond_1
    iget v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    .line 11
    iget-object v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget-boolean v9, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->mIsOutstandingRound:Z

    if-eqz v9, :cond_2

    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    goto :goto_1

    :cond_2
    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    :goto_1
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 12
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget-boolean v9, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->mIsOutstandingRound:Z

    if-eqz v9, :cond_4

    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    goto :goto_2

    :cond_4
    sget v9, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    :goto_2
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    rem-float/2addr v3, v8

    cmpl-float v3, v3, v2

    if-nez v3, :cond_6

    goto :goto_4

    :cond_5
    rem-float/2addr v3, v8

    cmpl-float v3, v3, v2

    if-nez v3, :cond_6

    :goto_4
    move v4, v7

    .line 13
    :cond_6
    iget v9, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v8, v3, v0

    sub-float/2addr v3, v0

    int-to-float v4, v4

    add-float v10, v3, v4

    iget-object v11, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 14
    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_7
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    iput v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintMotion;->mLastAngle:F

    .line 17
    iget-boolean v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-eqz v2, :cond_8

    .line 18
    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 19
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    .line 20
    iget-object v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_OUTSTANDING:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    iget v7, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v6, v2, v0

    sub-float/2addr v2, v0

    const/high16 v0, 0x41980000    # 19.0f

    add-float v8, v2, v0

    iget-object v9, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    return-void
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
