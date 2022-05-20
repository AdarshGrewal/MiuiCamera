.class public Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "SatZoomSplineData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarshalerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
            ">;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/SatZoomSplineData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    .line 1
    sget v0, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/SatZoomSplineData;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 2
    iget-byte v0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->type:B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3
    iget-byte v0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    iget-byte v0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->totalsize:B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    iget-byte v0, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->supportOutZoomAnimate:B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-byte v2, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->totalsize:B

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 7
    iget-byte v2, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->zooms:[F

    aget v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_2
    iget-byte v1, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    if-ge v0, v1, :cond_3

    if-ge v0, v1, :cond_2

    .line 11
    iget-object v1, p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->times:[F

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;->marshal(Lcom/android/camera2/vendortag/struct/SatZoomSplineData;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatZoomSplineData;
    .locals 9

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 6
    new-array v5, v2, [F

    .line 7
    new-array v6, v2, [F

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v3, :cond_1

    if-ge v7, v2, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v8

    aput v8, v5, v7

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v0, v3, :cond_3

    if-ge v0, v2, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v7

    aput v7, v6, v0

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12
    :cond_3
    new-instance p1, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;-><init>(BBBB[F[F)V

    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    move-result-object p1

    return-object p1
.end method
