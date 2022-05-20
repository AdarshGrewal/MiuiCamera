.class public Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable$MarshalerImpl;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "SatFusionCalibrationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarshalerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;",
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
            "Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;",
            ">;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/SatFusionCalibrationData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable$MarshalerImpl;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    .line 1
    sget v0, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 2
    iget v0, p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->type:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->data:[B

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable$MarshalerImpl;->marshal(Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 4
    new-array v2, v1, [B

    .line 5
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    new-instance p1, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;-><init>(II[B)V

    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable$MarshalerImpl;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    move-result-object p1

    return-object p1
.end method
