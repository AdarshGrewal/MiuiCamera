.class public Lcom/xiaomi/asr/engine/utils/CircleBuffer;
.super Ljava/lang/Object;
.source "CircleBuffer.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x1000


# instance fields
.field public isFull:Z

.field public isWrite:Z

.field public mCacheData:[B

.field public mCacheSize:I

.field public mIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    .line 3
    iput v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheSize:I

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull:Z

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isWrite:Z

    .line 6
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheData:[B

    .line 7
    iput p1, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheSize:I

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheSize:I

    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull:Z

    return v0
.end method

.method public isHasData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isWrite:Z

    return v0
.end method

.method public readBuffer()[B
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheSize:I

    new-array v2, v0, [B

    .line 3
    iget-object v3, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheData:[B

    iget v4, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    sub-int/2addr v0, v4

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheData:[B

    iget v3, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheSize:I

    iget v4, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    new-array v2, v0, [B

    .line 6
    iget-object v3, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheData:[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull:Z

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isWrite:Z

    .line 3
    iput v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheSize:I

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    return v0
.end method

.method public writeBuffer([B)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 3
    iget-object v4, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheData:[B

    iget v5, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    aget-byte v6, p1, v2

    aput-byte v6, v4, v5

    add-int/2addr v5, v3

    .line 4
    iput v5, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    .line 5
    iget v4, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mCacheSize:I

    if-lt v5, v4, :cond_1

    .line 6
    iput v1, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->mIndex:I

    .line 7
    iput-boolean v3, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isFull:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iput-boolean v3, p0, Lcom/xiaomi/asr/engine/utils/CircleBuffer;->isWrite:Z

    :cond_3
    :goto_1
    return-void
.end method
