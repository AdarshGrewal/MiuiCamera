.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintOuterRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Split;
    }
.end annotation


# static fields
.field public static final I_ROUND_RADIUS:I

.field public static final I_STICK_LENGTH:I

.field public static final STROKE_WIDTH:F = 1.33f


# instance fields
.field public mCurrentShadowAlpha:I

.field public mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x3f3a1cac    # 0.727f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_ROUND_RADIUS:I

    const v0, 0x4151999a    # 13.1f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_STICK_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mCurrentShadowAlpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mCurrentShadowAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_STICK_LENGTH:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->drawAimFrame(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_STICK_LENGTH:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->drawAimFrame(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public drawAimFrame(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->I_ROUND_RADIUS:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v3, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    neg-float v3, v2

    iget v4, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v3, v4

    neg-float v2, v2

    mul-float/2addr v2, v4

    const/16 v4, 0x8

    new-array v8, v4, [F

    const/4 v4, 0x0

    aput v3, v8, v4

    move/from16 v5, p3

    int-to-float v5, v5

    add-float v6, v2, v5

    const/4 v9, 0x1

    aput v6, v8, v9

    const/4 v6, 0x2

    aput v3, v8, v6

    add-float v6, v2, v1

    const/4 v9, 0x3

    aput v6, v8, v9

    add-float v6, v3, v1

    const/4 v9, 0x4

    aput v6, v8, v9

    const/4 v6, 0x5

    aput v2, v8, v6

    add-float/2addr v5, v3

    const/4 v6, 0x6

    aput v5, v8, v6

    const/4 v5, 0x7

    aput v2, v8, v5

    new-instance v10, Landroid/graphics/RectF;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v1, v5

    add-float v5, v3, v1

    add-float/2addr v1, v2

    invoke-direct {v10, v3, v2, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v11, v4

    :goto_0
    if-ge v11, v9, :cond_0

    move-object v12, p2

    invoke-virtual {p1, v8, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, v10

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getPaintColor(I)I
    .locals 0

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    return p1
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 3

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3faa3d71    # 1.33f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public updateValue(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    int-to-float p1, p1

    const/high16 v0, 0x42040000    # 33.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mCurrentShadowAlpha:I

    return-void
.end method
