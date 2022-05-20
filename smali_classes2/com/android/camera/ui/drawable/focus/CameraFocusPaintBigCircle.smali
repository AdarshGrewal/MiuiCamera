.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraFocusPaintBigCircle.java"


# static fields
.field public static final STROKE_WIDTH_DP:F = 1.33f


# instance fields
.field public mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3faa3d71    # 1.33f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentAlpha:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->mShadowPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->mShadowPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintBigCircle;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
