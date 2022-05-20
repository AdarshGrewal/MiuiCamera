.class public Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable$MarshalerImpl;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "FakeSatStreamConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarshalerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final NATIVE_SIZE:I = 0x18


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;",
            ">;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable$MarshalerImpl;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 2
    iget v0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStart:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->zoomStop:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->type:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget v0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->width:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget v0, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->height:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    iget p1, p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;->unused:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable$MarshalerImpl;->marshal(Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;
    .locals 7

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 8
    new-instance p1, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;-><init>(FFIIII)V

    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable$MarshalerImpl;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration;

    move-result-object p1

    return-object p1
.end method
