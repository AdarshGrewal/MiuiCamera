.class public Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
.super Ljava/lang/Object;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFormat"
.end annotation


# instance fields
.field public mFormat:I

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mWidth:I

    .line 3
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mHeight:I

    .line 4
    iput p3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mFormat:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    .line 3
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mWidth:I

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mHeight:I

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mFormat:I

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mWidth:I

    shl-int/lit8 v1, v0, 0x8

    ushr-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mHeight:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    .line 3
    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mFormat:I

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method
