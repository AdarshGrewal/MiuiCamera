.class public Lcom/android/camera/trackfocus/TrackFocusResultTag;
.super Ljava/lang/Object;
.source "TrackFocusResultTag.java"


# static fields
.field public static final RESULT_MULTIPLE_ROI:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final RESULT_ROI:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final RESULT_TYPE:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Integer;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooOO/OooOO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOO/OooOO0;

    const-class v2, Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_ROI:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooOO/OooO0oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOO/OooO0oo;

    const-class v2, [Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_MULTIPLE_ROI:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooOO/OooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOO/OooO;

    invoke-static {v1, v0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/OooooOO/OooO0oO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOO/OooO0oO;

    invoke-static {v1, v0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.ResultROI"

    return-object v0
.end method

.method public static synthetic OooO0O0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.ResultMultipleROI"

    return-object v0
.end method

.method public static synthetic OooO0OO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.TrackerClass"

    return-object v0
.end method

.method public static synthetic OooO0Oo()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.TrackerStatus"

    return-object v0
.end method
