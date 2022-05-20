.class public Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;
.super Ljava/lang/Object;
.source "MarshalQueryableSuperNightExif.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;,
        Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$MarshalerSuperNightExif;
    }
.end annotation


# static fields
.field public static BUFFER_SIZE:I = 0x14

.field public static BUFFER_SIZE_CONTAIN_LUXTHRESHOLD:I = 0x18

.field public static final SIZEOF_FLOAT:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;->BUFFER_SIZE_CONTAIN_LUXTHRESHOLD:I

    return v0
.end method

.method public static getSuperNightExif(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    if-nez p0, :cond_0

    .line 6
    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;->getSuperNightExif([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_EXIF:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;->getSuperNightExif([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_ELLC_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    int-to-float p0, p0

    iput p0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->result:F

    :cond_2
    return-object p1
.end method

.method public static getSuperNightExif([B)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$MarshalerSuperNightExif;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$MarshalerSuperNightExif;-><init>()V

    .line 3
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$MarshalerSuperNightExif;->unmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;-><init>()V

    return-object p0
.end method
