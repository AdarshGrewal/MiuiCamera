.class public Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;
.super Ljava/lang/Object;
.source "CameraCharacteristicsCompat.java"


# static fields
.field public static final CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 7
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 9
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 10
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 11
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 12
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 13
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/xiaomi/compat/camera2/CameraCharacteristicsCompat;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNativeCopy(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method
