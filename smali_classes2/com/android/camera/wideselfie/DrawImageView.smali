.class public Lcom/android/camera/wideselfie/DrawImageView;
.super Landroid/view/View;
.source "DrawImageView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DrawImageView"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapPaint:Landroid/graphics/Paint;

.field public mBorderPaint:Landroid/graphics/Paint;

.field public mBorderRect:Landroid/graphics/Rect;

.field public mImageRect:Landroid/graphics/Rect;

.field public mOrientation:I

.field public mStillPreviewHeight:I

.field public mStillPreviewWidth:I

.field public mThumbBgHeightVertical:I

.field public mThumbBgWidth:I

.field public mThumbnailBackgroundWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/wideselfie/DrawImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mOrientation:I

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mImageRect:Landroid/graphics/Rect;

    .line 5
    iput-object p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 6
    iput-object p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBorderRect:Landroid/graphics/Rect;

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 9
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07082b

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 12
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private convertBorderRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget v1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 3
    iget v1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mStillPreviewWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 4
    iget v2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mThumbBgWidth:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 5
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 8
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 9
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 10
    iget p1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mStillPreviewHeight:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 11
    :cond_0
    iget v1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mStillPreviewHeight:I

    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 12
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 13
    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/camera/wideselfie/DrawImageView;->mThumbBgHeightVertical:I

    add-int/lit8 v4, v4, -0x2

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 14
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 17
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 18
    iget p1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mStillPreviewWidth:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return-object v0
.end method

.method private convertImageRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget v1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 3
    iget v1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mStillPreviewWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 4
    iget v2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mThumbBgWidth:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 5
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 8
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 9
    :cond_0
    iget v1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mStillPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    .line 10
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 11
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 12
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 13
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 14
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mImageRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBorderRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/wideselfie/DrawImageView;->releaseBitmap()V

    :cond_1
    return-void
.end method

.method public releaseBitmap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/wideselfie/DrawImageView;->convertImageRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mImageRect:Landroid/graphics/Rect;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertImageRect src = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", dest = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/wideselfie/DrawImageView;->mImageRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mOrientation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/wideselfie/DrawImageView;->mOrientation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DrawImageView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, p3}, Lcom/android/camera/wideselfie/DrawImageView;->convertBorderRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBorderRect:Landroid/graphics/Rect;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertBorderRect src = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mOrientation:I

    return-void
.end method

.method public setParams(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/wideselfie/DrawImageView;->mStillPreviewWidth:I

    .line 2
    iput p2, p0, Lcom/android/camera/wideselfie/DrawImageView;->mStillPreviewHeight:I

    .line 3
    iput p3, p0, Lcom/android/camera/wideselfie/DrawImageView;->mThumbBgWidth:I

    .line 4
    iput p4, p0, Lcom/android/camera/wideselfie/DrawImageView;->mThumbBgHeightVertical:I

    return-void
.end method
