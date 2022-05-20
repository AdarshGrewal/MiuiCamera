.class public Lcom/miui/extravideo/watermark/gles/CanvasTexture;
.super Ljava/lang/Object;
.source "CanvasTexture.java"


# instance fields
.field public mBitmapScale:F

.field public mBitmapToDraw:Landroid/graphics/Bitmap;

.field public mCanvas:Landroid/graphics/Canvas;

.field public final mConfig:Landroid/graphics/Bitmap$Config;

.field public mHeight:I

.field public mPaddingX:I

.field public mPaddingY:I

.field public mStrToDraw:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mWidth:I

    .line 3
    iput p2, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mHeight:I

    .line 4
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget v0, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mWidth:I

    iget v1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mHeight:I

    iget-object v2, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 3
    iget-object v1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mStrToDraw:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v4, 0xff

    .line 5
    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 6
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v4, 0x42480000    # 50.0f

    .line 8
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget-object v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mStrToDraw:Ljava/lang/String;

    iget v6, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mWidth:I

    div-int/2addr v6, v3

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mHeight:I

    div-int/2addr v7, v3

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapToDraw:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 13
    iget v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapScale:F

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 14
    iget-object v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapToDraw:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 15
    iget v5, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mHeight:I

    sub-int/2addr v5, v4

    iget v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mPaddingY:I

    sub-int/2addr v5, v4

    .line 16
    iget v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mPaddingX:I

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 17
    iget-object v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    iget-object v2, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapToDraw:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IIF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapToDraw:Landroid/graphics/Bitmap;

    .line 2
    iput p2, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mPaddingX:I

    .line 3
    iput p3, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mPaddingY:I

    .line 4
    iput p4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapScale:F

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mStrToDraw:Ljava/lang/String;

    return-void
.end method
