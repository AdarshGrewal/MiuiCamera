.class public Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "AgeGenderAndMagicMirrorWaterMark.java"


# instance fields
.field public mCenterX:I

.field public mCenterY:I

.field public mHeight:I

.field public mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field public mPaddingX:I

.field public mPaddingY:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIIIIFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    .line 2
    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 4
    div-int/2addr p5, p4

    int-to-float p4, p5

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mHeight:I

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mWidth:I

    mul-float/2addr p7, p4

    .line 7
    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingX:I

    mul-float/2addr p8, p4

    .line 8
    invoke-static {p8}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingY:I

    .line 9
    new-instance p2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->calcCenterAxis()V

    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mCenterX:I

    .line 2
    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mCenterY:I

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/effect/renders/WaterMark;->getLeft()I

    move-result v0

    return v0
.end method

.method public getPaddingX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingX:I

    return v0
.end method

.method public getPaddingY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mPaddingY:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/effect/renders/WaterMark;->getTop()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;->mWidth:I

    return v0
.end method
