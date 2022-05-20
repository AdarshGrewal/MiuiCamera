.class public Lcom/android/camera/trackfocus/TrackFocusResultTag;
.super Ljava/lang/Object;
.source "TrackFocusResultTag.java"


# static fields
.field public static final EYE_POS:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final EYE_ROI:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final I_EYE_POS_LEFT:I = 0x1

.field public static final I_EYE_POS_RIGHT:I = 0x2

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

    .line 1
    const-class v0, Ljava/lang/Integer;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooooo0/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo0/OooO0oo;

    const-class v2, Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_ROI:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooooo0/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo0/OooOO0O;

    const-class v2, Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->EYE_ROI:Lcom/android/camera2/vendortag/VendorTag;

    .line 3
    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooooo0/OooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo0/OooO;

    invoke-static {v1, v0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->EYE_POS:Lcom/android/camera2/vendortag/VendorTag;

    .line 4
    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooooo0/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo0/OooOO0;

    invoke-static {v1, v0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    .line 5
    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooooo0/OooOO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooooo0/OooOO0o;

    invoke-static {v1, v0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

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

    const-string v0, "com.xiaomi.objectTrackingResults.ResultROI"

    return-object v0
.end method

.method public static synthetic OooO0O0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectEyeResults.ResultROI"

    return-object v0
.end method

.method public static synthetic OooO0OO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectEyeResults.EyePosition"

    return-object v0
.end method

.method public static synthetic OooO0Oo()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.TrackerClass"

    return-object v0
.end method

.method public static synthetic OooO0o0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.TrackerMode"

    return-object v0
.end method
