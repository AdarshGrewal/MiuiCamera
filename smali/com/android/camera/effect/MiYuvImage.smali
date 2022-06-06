.class public Lcom/android/camera/effect/MiYuvImage;
.super Ljava/lang/Object;
.source "MiYuvImage.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MiYuvImage"


# instance fields
.field public mData:[B

.field public mFormat:I

.field public mHeight:I

.field public mUBuffer:Ljava/nio/ByteBuffer;

.field public mVBuffer:Ljava/nio/ByteBuffer;

.field public mWidth:I

.field public mYBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mYBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mUBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mVBuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    iput p2, p0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iput p3, p0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    iput p4, p0, Lcom/android/camera/effect/MiYuvImage;->mFormat:I

    return-void
.end method


# virtual methods
.method public getUVBuffer()Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v2, "data is null when getUVBuffer"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mFormat:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    iget v1, p0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    mul-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    mul-int v4, v1, v2

    const/4 v5, 0x0

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v2, "Not support this format"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getVUBuffer()Ljava/nio/ByteBuffer;
    .locals 7

    iget-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v2, "data is null when getUVBuffer"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mFormat:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    iget v1, p0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    mul-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    new-array v4, v3, [B

    mul-int v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v5, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v3, v3, -0x3

    aget-byte v1, v4, v3

    aput-byte v1, v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v2, "Not support this format"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getYBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v2, "data is null when getYBuffer"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mFormat:I

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    iget v1, p0, Lcom/android/camera/effect/MiYuvImage;->mWidth:I

    iget v2, p0, Lcom/android/camera/effect/MiYuvImage;->mHeight:I

    mul-int v3, v1, v2

    new-array v3, v3, [B

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v2, "Not support this format"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getYuvBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/MiYuvImage;->mData:[B

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/MiYuvImage;->TAG:Ljava/lang/String;

    const-string v1, "data is null when getYuvBuffer"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public updateData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/MiYuvImage;->mYBuffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/android/camera/effect/MiYuvImage;->mUBuffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/android/camera/effect/MiYuvImage;->mVBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method
