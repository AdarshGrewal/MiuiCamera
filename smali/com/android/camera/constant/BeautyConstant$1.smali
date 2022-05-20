.class public final Lcom/android/camera/constant/BeautyConstant$1;
.super Ljava/util/HashMap;
.source "BeautyConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/constant/BeautyConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/camera2/vendortag/VendorTag<",
        "Landroid/hardware/camera2/CaptureRequest$Key<",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SKIN_COLOR:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_skin_color_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SLIM_FACE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_ENLARGE_EYE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SKIN_SMOOTH:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_NOSE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_nose_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_RISORIUS:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_risorius_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_LIPS:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_lips_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_CHIN:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_chin_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_NECK:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_neck_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SMILE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_smile_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SLIM_NOSE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_slim_nose_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_HAIRLINE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SOLID:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_solid_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_WHITEN:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_whiten_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_EYEBROW_DYE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_makeup_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_PUPIL_LINE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_pupil_line_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_JELLY_LIPS:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_jelly_lips_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_BLUSHER:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_blusher_ratio_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_HEAD_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beauty_head_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_BODY_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beauty_body_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_SHOULDER_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beauty_shoulder_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_LEG_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string v1, "key_beauty_leg_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->WHOLE_BODY_SLIM:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beauty_whole_body_slim_ratio"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->FRONT_MAKEUPS_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_makeups_type_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MAKEUPS_STRENGTH:Lcom/android/camera2/vendortag/VendorTag;

    const-string/jumbo v1, "pref_beautify_makeups_level_key"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BEAUTY_MODE:Lcom/android/camera2/vendortag/VendorTag;

    const-string v1, "MODE"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
