.class public Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;
.super Ljava/lang/Object;
.source "TrackFocusCharacteristicsTag.java"


# static fields
.field public static QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SUPPORT_TRACK_AF:I = 0x1

.field public static final SUPPORT_TRACK_EYE:I = 0x2

.field public static final SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "TrackFocusCharacteristicsTag"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooooo0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo0/OooO0O0;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooooo0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo0/OooO00o;

    const-class v1, [Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.camera.supportedfeatures.TrackAFSupported"

    return-object v0
.end method

.method public static synthetic OooO0O0()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xiaomi.capabilities.videoMiTrackAF.quality"

    return-object v0
.end method

.method public static isSupportTrackEye(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 4

    const-string v0, "TrackFocusCharacteristicsTag"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "isSupportTrackEye null capabilities"

    .line 1
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2
    :cond_0
    sget-object v2, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v2, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportTrackEye: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSupportTrackFocus(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "TrackFocusCharacteristicsTag"

    const-string v1, "isSupportTrackFocus null capabilities"

    .line 1
    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v1, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
