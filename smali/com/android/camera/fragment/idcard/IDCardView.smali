.class public Lcom/android/camera/fragment/idcard/IDCardView;
.super Landroid/view/View;
.source "IDCardView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IDCardView"


# instance fields
.field public mBigColor:I

.field public mBitmap1:Landroid/graphics/Bitmap;

.field public mBitmap2:Landroid/graphics/Bitmap;

.field public mBitmap3:Landroid/graphics/Bitmap;

.field public mBitmap4:Landroid/graphics/Bitmap;

.field public mBitmapHeight:F

.field public mBitmapWidth:F

.field public mContext:Landroid/content/Context;

.field public mDisplayRect:Landroid/graphics/Rect;

.field public mHint:Ljava/lang/String;

.field public mIDCardRectF:Landroid/graphics/RectF;

.field public mMarginLeft:F

.field public mMarginTop:F

.field public mPaint:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;

.field public mRectHeight:F

.field public mRectPaint:Landroid/graphics/Paint;

.field public mRectWidth:F

.field public mSignBitmap:Landroid/graphics/Bitmap;

.field public mSignRectF:Landroid/graphics/RectF;

.field public mTextPaint:Landroid/graphics/Paint;

.field public size:Ljava/lang/Float;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/idcard/IDCardView;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method private decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "IDCardView"

    const-string v0, "decodeResourceCatchOOM"

    .line 2
    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fb851ec    # 1.44f

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f50e560    # 0.816f

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f07032e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x7f0600ad

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBigColor:I

    const v0, 0x7f07032b

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectWidth:F

    const v0, 0x7f07032a

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectHeight:F

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginLeft:F

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginTop:F

    const v0, 0x7f070324

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f070325

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v3, 0x7f070320

    .line 23
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f070321

    .line 24
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v5, 0x7f08055d

    .line 25
    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    const v5, 0x7f08055e

    .line 26
    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap2:Landroid/graphics/Bitmap;

    const v5, 0x7f08055f

    .line 27
    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap3:Landroid/graphics/Bitmap;

    const v5, 0x7f080560

    .line 28
    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap4:Landroid/graphics/Bitmap;

    const v5, 0x7f080564

    .line 29
    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const v6, 0x7f080562

    .line 30
    invoke-direct {p0, p1, v6}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 31
    iget-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    .line 32
    iget-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    const v7, 0x7f120444

    .line 33
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f120443

    .line 34
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 35
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    .line 36
    iget v10, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginLeft:F

    iput v10, v9, Landroid/graphics/RectF;->left:F

    .line 37
    iget v11, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginTop:F

    iput v11, v9, Landroid/graphics/RectF;->top:F

    .line 38
    iget v12, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectWidth:F

    add-float/2addr v10, v12

    iput v10, v9, Landroid/graphics/RectF;->right:F

    .line 39
    iget v10, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectHeight:F

    add-float/2addr v11, v10

    iput v11, v9, Landroid/graphics/RectF;->bottom:F

    if-eqz p2, :cond_2

    const p2, 0x7f070327

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr p2, v3

    const v3, 0x7f070326

    .line 41
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    .line 42
    iput-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    .line 43
    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v0, v6

    add-float/2addr v4, v0

    .line 44
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    add-float/2addr p2, v4

    add-float/2addr v3, v0

    .line 45
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v0, p2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    .line 46
    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    const p2, 0x7f070323

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p2, v0

    const v0, 0x7f070322

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    .line 49
    iput-object v8, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 51
    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->size:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr p2, v1

    add-float/2addr v0, v3

    .line 52
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v3, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    .line 53
    iput-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    .line 54
    :goto_1
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    .line 55
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 57
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f07032c

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->x:F

    goto :goto_2

    .line 59
    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f07032d

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->x:F

    goto :goto_2

    .line 61
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->x:F

    .line 62
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->y:F

    .line 63
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    iget p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->x:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 64
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    iget p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->x:F

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBigColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBigColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 13
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap4:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 17
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 19
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method
