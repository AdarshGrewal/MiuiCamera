.class public Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$MarshalerASDScene;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableDxoAsdScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarshalerASDScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;",
        ">;"
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x8


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;


# direct methods
.method public constructor <init>(Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$MarshalerASDScene;->this$0:Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public marshal(Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 2
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 3
    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$MarshalerASDScene;->marshal(Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->confident:F

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;->value:I

    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$MarshalerASDScene;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    move-result-object p1

    return-object p1
.end method
