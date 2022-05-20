.class public Lorg/jcodec/containers/mp4/boxes/MetaValue;
.super Ljava/lang/Object;
.source "MetaValue.java"


# static fields
.field public static final TYPE_BMP:I = 0x1b

.field public static final TYPE_FLOAT_32:I = 0x17

.field public static final TYPE_FLOAT_64:I = 0x18

.field public static final TYPE_INT_16:I = 0x42

.field public static final TYPE_INT_32:I = 0x43

.field public static final TYPE_INT_8:I = 0x41

.field public static final TYPE_INT_V:I = 0x16

.field public static final TYPE_JPEG:I = 0xd

.field public static final TYPE_PNG:I = 0xd

.field public static final TYPE_STRING_UTF16:I = 0x2

.field public static final TYPE_STRING_UTF8:I = 0x1

.field public static final TYPE_UINT_V:I = 0x15


# instance fields
.field public data:[B

.field public locale:I

.field public type:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    .line 3
    iput p2, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->locale:I

    .line 4
    iput-object p3, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    return-void
.end method

.method public static createFloat(F)Lorg/jcodec/containers/mp4/boxes/MetaValue;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    invoke-static {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->fromFloat(F)[B

    move-result-object p0

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;-><init>(II[B)V

    return-object v0
.end method

.method public static createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    invoke-static {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->fromInt(I)[B

    move-result-object p0

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;-><init>(II[B)V

    return-object v0
.end method

.method public static createOther(I[B)Lorg/jcodec/containers/mp4/boxes/MetaValue;
    .locals 2

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/jcodec/containers/mp4/boxes/MetaValue;-><init>(II[B)V

    return-object v0
.end method

.method public static createOtherWithLocale(II[B)Lorg/jcodec/containers/mp4/boxes/MetaValue;
    .locals 1

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    invoke-direct {v0, p0, p1, p2}, Lorg/jcodec/containers/mp4/boxes/MetaValue;-><init>(II[B)V

    return-object v0
.end method

.method public static createString(Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/MetaValue;
    .locals 3

    .line 1
    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Lorg/jcodec/platform/Platform;->getBytesForCharset(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;-><init>(II[B)V

    return-object v0
.end method

.method public static fromFloat(F)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static fromInt(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private toDouble([B)D
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method private toFloat([B)F
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    return p1
.end method

.method private toInt16([B)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    return p1
.end method

.method private toInt24([B)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private toInt32([B)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    return-object v0
.end method

.method public getFloat()D
    .locals 2

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toFloat([B)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toDouble([B)D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInt()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 3
    :cond_1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v2, 0x41

    if-ne v0, v2, :cond_2

    .line 4
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    aget-byte v0, v0, v1

    return v0

    :cond_2
    const/16 v2, 0x42

    if-ne v0, v2, :cond_3

    .line 5
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt16([B)I

    move-result v0

    return v0

    :cond_3
    const/16 v2, 0x43

    if-ne v0, v2, :cond_4

    .line 6
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt32([B)I

    move-result v0

    return v0

    :cond_4
    return v1

    .line 7
    :cond_5
    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt32([B)I

    move-result v0

    return v0

    .line 8
    :cond_6
    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt24([B)I

    move-result v0

    return v0

    .line 9
    :cond_7
    invoke-direct {p0, v0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->toInt16([B)I

    move-result v0

    return v0

    .line 10
    :cond_8
    aget-byte v0, v0, v1

    return v0
.end method

.method public getLocale()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->locale:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/jcodec/platform/Platform;->stringFromCharset([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->data:[B

    const-string v1, "UTF-16BE"

    invoke-static {v0, v1}, Lorg/jcodec/platform/Platform;->stringFromCharset([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    return v0
.end method

.method public isBlob()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isFloat()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isInt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isString()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFloat()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInt()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isString()Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/MetaValue;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getFloat()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "BLOB"

    return-object v0
.end method
