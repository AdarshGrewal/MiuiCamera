.class public Lnet/majorkernelpanic/streaming/hw/NV21Convertor;
.super Ljava/lang/Object;
.source "NV21Convertor.java"


# instance fields
.field public mBuffer:[B

.field public mCopy:Ljava/nio/ByteBuffer;

.field public mHeight:I

.field public mPanesReversed:Z

.field public mPlanar:Z

.field public mSize:I

.field public mSliceHeight:I

.field public mStride:I

.field public mWidth:I

.field public mYPadding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    return-void
.end method


# virtual methods
.method public convert([BLjava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->convert([B)[B

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, v1, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public convert([B)[B
    .locals 6

    .line 4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    .line 5
    :cond_0
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    .line 6
    :cond_1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPlanar:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 7
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mHeight:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mWidth:I

    if-ne v0, v2, :cond_8

    .line 8
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    if-nez v0, :cond_2

    .line 9
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    :goto_0
    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 10
    iget-object v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, p1, v3

    aput-byte v4, v2, v1

    .line 11
    aget-byte v4, p1, v0

    aput-byte v4, p1, v3

    .line 12
    aget-byte v2, v2, v1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 13
    :cond_2
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    if-lez v0, :cond_3

    .line 14
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    add-int/2addr v2, v0

    div-int/lit8 v3, v0, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    :cond_3
    return-object p1

    .line 17
    :cond_4
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mHeight:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mWidth:I

    if-ne v0, v2, :cond_8

    .line 18
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    if-nez v0, :cond_5

    move v0, v1

    .line 19
    :goto_1
    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    div-int/lit8 v3, v2, 0x4

    if-ge v0, v3, :cond_6

    .line 20
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    mul-int/lit8 v4, v0, 0x2

    add-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    aput-byte v5, v3, v0

    .line 21
    div-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v0

    add-int/2addr v2, v4

    aget-byte v2, p1, v2

    aput-byte v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 22
    :goto_2
    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    div-int/lit8 v3, v2, 0x4

    if-ge v0, v3, :cond_6

    .line 23
    iget-object v3, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    mul-int/lit8 v4, v0, 0x2

    add-int v5, v2, v4

    aget-byte v5, p1, v5

    aput-byte v5, v3, v0

    .line 24
    div-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v0

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25
    :cond_6
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    if-nez v0, :cond_7

    .line 26
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    div-int/lit8 v3, v2, 0x2

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 27
    :cond_7
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    add-int/2addr v2, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mBuffer:[B

    :cond_8
    return-object p1
.end method

.method public getBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPlanar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPlanar:Z

    return v0
.end method

.method public getSliceHeigth()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    return v0
.end method

.method public getStride()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    return v0
.end method

.method public getUVPanesReversed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    return v0
.end method

.method public getYPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    return v0
.end method

.method public setColorPanesReversed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPanesReversed:Z

    return-void
.end method

.method public setEncoderColorFormat(I)V
    .locals 1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const v0, 0x7f000100

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->setPlanar(Z)V

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->setPlanar(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlanar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mPlanar:Z

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mHeight:I

    .line 2
    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mWidth:I

    .line 3
    iput p2, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    .line 4
    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    mul-int/2addr p1, p2

    .line 5
    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSize:I

    return-void
.end method

.method public setSliceHeigth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mSliceHeight:I

    return-void
.end method

.method public setStride(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mStride:I

    return-void
.end method

.method public setYPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/majorkernelpanic/streaming/hw/NV21Convertor;->mYPadding:I

    return-void
.end method
