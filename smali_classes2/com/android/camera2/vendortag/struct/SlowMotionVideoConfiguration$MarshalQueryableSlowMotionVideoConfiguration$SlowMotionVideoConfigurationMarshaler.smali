.class public Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration$SlowMotionVideoConfigurationMarshaler;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "SlowMotionVideoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlowMotionVideoConfigurationMarshaler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final NATIVE_SIZE:I = 0x10


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable<",
            "Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;",
            ">;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;",
            ">;I)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration$SlowMotionVideoConfigurationMarshaler;->this$0:Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration$SlowMotionVideoConfigurationMarshaler;-><init>(Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 2
    iget v0, p1, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->width:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p1, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->height:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p1, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->maxFps:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget p1, p1, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;->batchNbr:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration$SlowMotionVideoConfigurationMarshaler;->marshal(Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 6
    new-instance v3, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;-><init>(IIII)V

    return-object v3
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration$SlowMotionVideoConfigurationMarshaler;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration;

    move-result-object p1

    return-object p1
.end method
