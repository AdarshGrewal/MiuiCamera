.class public Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$MarshalerSuperNightExif;
.super Ljava/lang/Object;
.source "MarshalQueryableSuperNightExif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarshalerSuperNightExif"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshal(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->luxIndex:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 2
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->light:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->darkRatio:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->middleRatio:F

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 5
    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->brightRatio:F

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->luxIndex:F

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->light:F

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->darkRatio:F

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->middleRatio:F

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->brightRatio:F

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;->access$000()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    iput p1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->luxThreshold:F

    :cond_0
    return-object v0
.end method
