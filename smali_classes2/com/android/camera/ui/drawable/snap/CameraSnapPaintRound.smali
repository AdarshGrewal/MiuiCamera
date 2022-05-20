.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintRound.java"


# instance fields
.field public isDown:Z

.field public isRecordingCircle:Z

.field public isRoundingCircle:Z

.field public mBaseRoundRectRadius:F

.field public mBitmapRes:I

.field public mCurrentRoundRectRadius:F

.field public mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

.field public mRapidly:Z

.field public mRecordingBgPaint:Landroid/graphics/Paint;

.field public mRectF:Landroid/graphics/RectF;

.field public mRoundingProgress:F

.field public mShowCenterBitmap:Z

.field public mSkip:Z

.field public mSrcRoundRectRadius:F

.field public mSrcRoundingProgress:F

.field public mTargetRoundRectRadius:F

.field public mTargetRoundWidthPercent:F

.field public mTargetRoundingProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    .line 4
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    const p1, 0x3f266666    # 0.65f

    .line 5
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 6
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    .line 7
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    const p1, 0x3ea3d70a    # 0.32f

    .line 8
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    return-void
.end method


# virtual methods
.method public clearBitmap()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBitmapRes:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseWidthPercent:F

    mul-float/2addr v0, v1

    .line 7
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    .line 8
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSkip:Z

    if-eqz v0, :cond_2

    return-void

    .line 12
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecordingCircle:Z

    if-eqz v0, :cond_3

    .line 13
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRoundingCircle:Z

    if-eqz v0, :cond_4

    .line 15
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 16
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    mul-float/2addr v0, v1

    .line 17
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    .line 18
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    .line 19
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    mul-float v3, v0, v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public getExternalPattern()Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    return-object v0
.end method

.method public hasSameBitmap(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBitmapRes:I

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public prepareRecord(ZZF)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    mul-float/2addr p1, v0

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 5
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    mul-float/2addr p3, p1

    iput p3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    goto :goto_3

    .line 6
    :cond_2
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 7
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget p3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    mul-float/2addr p1, p3

    const p3, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p3

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    :goto_2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    :goto_3
    if-eqz p2, :cond_5

    .line 8
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p1, :cond_4

    const p1, 0x3ed70a3e    # 0.42000002f

    goto :goto_4

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    :goto_4
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const p1, 0x3eb33333    # 0.35f

    .line 9
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    goto :goto_6

    .line 10
    :cond_5
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    .line 11
    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_5
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    :goto_6
    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecordingCircle:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRoundingCircle:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSkip:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    return-void
.end method

.method public setBitmapPatternDirectResult()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->directlyResult()V

    return-void
.end method

.method public setBitmapPatternTargetAlpha(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->prepareAlpha(II)V

    return-void
.end method

.method public setBitmapPatternTargetScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->setTargetScale(F)V

    return-void
.end method

.method public setRapidly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    return-void
.end method

.method public setRecordingBgColor(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRecordingBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setShowCenterBitmap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    return-void
.end method

.method public setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 4
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    const v0, 0x3e8f5c29    # 0.28f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 6
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    .line 7
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    if-eqz p1, :cond_1

    .line 8
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const p1, 0x3eb33333    # 0.35f

    .line 9
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    goto :goto_1

    .line 10
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    :goto_1
    return-object p0
.end method

.method public showTargetBitmap(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBitmapRes:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    return-void
.end method

.method public updateValue(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->updateValue(F)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    .line 5
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->calculateCurrentValue(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    return-void
.end method
