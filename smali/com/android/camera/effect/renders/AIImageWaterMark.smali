.class public Lcom/android/camera/effect/renders/AIImageWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "AIImageWaterMark.java"


# static fields
.field public static final PADDINGX:I

.field public static final PADDINGY:I


# instance fields
.field public mCenterX:I

.field public mCenterY:I

.field public mHeight:I

.field public mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field public mRange:[I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;III[I[F)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterX:I

    .line 3
    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterY:I

    .line 4
    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mWidth:I

    .line 5
    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mHeight:I

    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mRange:[I

    .line 7
    iput-object p5, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mRange:[I

    const/4 p3, 0x1

    const/16 p5, 0x5a

    if-eq p4, p5, :cond_1

    const/16 p5, 0x10e

    if-ne p4, p5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    aget p5, p6, p2

    mul-float/2addr p4, p5

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p4, p4

    and-int/lit8 p4, p4, -0x2

    iput p4, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mWidth:I

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    aget p3, p6, p3

    mul-float/2addr p4, p3

    float-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    and-int/lit8 p3, p3, -0x2

    iput p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mHeight:I

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    aget p3, p6, p3

    mul-float/2addr p4, p3

    float-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    and-int/lit8 p3, p3, -0x2

    iput p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mWidth:I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    aget p4, p6, p2

    mul-float/2addr p3, p4

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    and-int/lit8 p3, p3, -0x2

    iput p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mHeight:I

    .line 12
    :goto_1
    new-instance p3, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p3, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 13
    invoke-virtual {p3, p2}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/effect/renders/AIImageWaterMark;->calcCenterAxis()V

    return-void
.end method

.method private calcCenterAxis()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mRange:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v3, v0, v2

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterX:I

    const/4 v1, 0x1

    .line 2
    aget v1, v0, v1

    const/4 v3, 0x3

    aget v0, v0, v3

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterY:I

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mHeight:I

    return v0
.end method

.method public getPaddingX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPaddingY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mWidth:I

    return v0
.end method
