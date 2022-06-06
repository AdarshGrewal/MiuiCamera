.class public Lcom/android/camera/data/data/config/DataItemConfig;
.super Lcom/android/camera/data/data/DataItemBase;
.source "DataItemConfig.java"


# static fields
.field public static final DATA_CONFIG_AI_SCENE:Ljava/lang/String; = "pref_camera_ai_scene_mode_key"

.field public static final DATA_CONFIG_BEAUTY_CAPTURE:Ljava/lang/String; = "pref_old_beautify_level_key_capture"

.field public static final DATA_CONFIG_BEAUTY_MODE:Ljava/lang/String; = "pref_camera_beauty_mode_key"

.field public static final DATA_CONFIG_BEAUTY_VIDEO:Ljava/lang/String; = "pref_old_beautify_level_key_video"

.field public static final DATA_CONFIG_CENTER_MARK:Ljava/lang/String; = "pref_camera_center_mark_key"

.field public static final DATA_CONFIG_FOCUS_MODE:Ljava/lang/String; = "pref_camera_focus_mode_key"

.field public static final DATA_CONFIG_FOCUS_SWITCHING:Ljava/lang/String; = "pref_qc_focus_mode_switching_key"

.field public static final DATA_CONFIG_GIF:Ljava/lang/String; = "key_config_gif"

.field public static final DATA_CONFIG_GRADIENTER:Ljava/lang/String; = "pref_camera_gradienter_key"

.field public static final DATA_CONFIG_LIVE_SHOT:Ljava/lang/String; = "pref_live_shot_enabled"

.field public static final DATA_CONFIG_MACRO_SCENE:Ljava/lang/String; = "pref_camera_macro_scene_mode_key"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_KEY:Ljava/lang/String; = "key_new_slow_motion"

.field public static final DATA_CONFIG_RATIO:Ljava/lang/String; = "pref_camera_picturesize_key"

.field public static final DATA_CONFIG_RATIO_CINEMATIC:Ljava/lang/String; = "is_cinematic"

.field public static final DATA_CONFIG_RATIO_SQUARE:Ljava/lang/String; = "is_square"

.field public static final DATA_CONFIG_RAW:Ljava/lang/String; = "pref_camera_raw_key"

.field public static final DATA_CONFIG_SLOW_MOTION_QUALITY:Ljava/lang/String; = "pref_video_new_slow_motion_key"

.field public static final DATA_CONFIG_STICKER_PATH:Ljava/lang/String; = "pref_sticker_path_key"

.field public static final DATA_CONFIG_VIDEO_BOKEH:Ljava/lang/String; = "pref_video_bokeh_key"

.field public static final DATA_CONFIG_VIDEO_QUALITY:Ljava/lang/String; = "pref_video_quality_key"

.field public static final KEY:Ljava/lang/String; = "camera_settings_simple_mode_local_"


# instance fields
.field public mCameraId:I

.field public mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

.field public mComponentConfigAi:Lcom/android/camera/data/data/config/ComponentConfigAi;

.field public mComponentConfigAuxiliary:Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;

.field public mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

.field public mComponentConfigBeautyMode:Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

.field public mComponentConfigCenterMark:Lcom/android/camera/data/data/config/ComponentConfigCenterMark;

.field public mComponentConfigGradienter:Lcom/android/camera/data/data/config/ComponentConfigGradienter;

.field public mComponentConfigHDR10:Lcom/android/camera/hdr10/ComponentConfigHDR10;

.field public mComponentConfigLiveShot:Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

.field public mComponentConfigMeter:Lcom/android/camera/data/data/config/ComponentConfigMeter;

.field public mComponentConfigRatio:Lcom/android/camera/data/data/config/ComponentConfigRatio;

.field public mComponentConfigRaw:Lcom/android/camera/data/data/config/ComponentConfigRaw;

.field public mComponentConfigSlowMotionQuality:Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

.field public mComponentConfigTrackFocus:Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

.field public mComponentConfigUltraWide:Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

.field public mComponentConfigVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

.field public mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

.field public mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

.field public mComponentManuallyContrast:Lcom/android/camera/data/data/config/ComponentManuallyContrast;

.field public mComponentManuallyET:Lcom/android/camera/data/data/config/ComponentManuallyET;

.field public mComponentManuallyEV:Lcom/android/camera/data/data/config/ComponentManuallyEV;

.field public mComponentManuallyISO:Lcom/android/camera/data/data/config/ComponentManuallyISO;

.field public mComponentManuallySaturation:Lcom/android/camera/data/data/config/ComponentManuallySaturation;

.field public mComponentManuallySharpness:Lcom/android/camera/data/data/config/ComponentManuallySharpness;

.field public mComponentManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

.field public mIntentType:I

.field public mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

.field public mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

.field public mSlowMotion:Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    iput p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    iput p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeautyMode:Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mSlowMotion:Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigRatio;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigRatio:Lcom/android/camera/data/data/config/ComponentConfigRatio;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigAi;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigAi;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAi:Lcom/android/camera/data/data/config/ComponentConfigAi;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigRaw;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigRaw:Lcom/android/camera/data/data/config/ComponentConfigRaw;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigSlowMotionQuality:Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigMeter;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigMeter;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigMeter:Lcom/android/camera/data/data/config/ComponentConfigMeter;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyET:Lcom/android/camera/data/data/config/ComponentManuallyET;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyISO:Lcom/android/camera/data/data/config/ComponentManuallyISO;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentManuallyEV;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentManuallyEV;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyEV:Lcom/android/camera/data/data/config/ComponentManuallyEV;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;

    invoke-direct {p2, p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAuxiliary:Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigGradienter:Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    new-instance p2, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V

    iput-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigCenterMark:Lcom/android/camera/data/data/config/ComponentConfigCenterMark;

    new-instance p1, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigLiveShot:Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    new-instance p1, Lcom/android/camera/data/data/config/ComponentManuallyContrast;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/config/ComponentManuallyContrast;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyContrast:Lcom/android/camera/data/data/config/ComponentManuallyContrast;

    new-instance p1, Lcom/android/camera/data/data/config/ComponentManuallySaturation;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/config/ComponentManuallySaturation;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallySaturation:Lcom/android/camera/data/data/config/ComponentManuallySaturation;

    new-instance p1, Lcom/android/camera/data/data/config/ComponentManuallySharpness;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/config/ComponentManuallySharpness;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallySharpness:Lcom/android/camera/data/data/config/ComponentManuallySharpness;

    new-instance p1, Lcom/android/camera/hdr10/ComponentConfigHDR10;

    sget-boolean p2, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->Oooo0o0:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/camera/hdr10/ComponentConfigHDR10;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;Z)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigHDR10:Lcom/android/camera/hdr10/ComponentConfigHDR10;

    new-instance p1, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    invoke-direct {p1, p0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object p1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigTrackFocus:Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    return-void
.end method

.method public static provideLocalId(II)I
    .locals 0

    if-nez p1, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x64

    return p0
.end method


# virtual methods
.method public getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    return-object v0
.end method

.method public getComponentConfigAi()Lcom/android/camera/data/data/config/ComponentConfigAi;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAi:Lcom/android/camera/data/data/config/ComponentConfigAi;

    return-object v0
.end method

.method public getComponentConfigAuxiliary()Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAuxiliary:Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAuxiliary:Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAuxiliary:Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;

    return-object v0
.end method

.method public getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeauty:Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    return-object v0
.end method

.method public getComponentConfigBeautyMode()Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeautyMode:Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    return-object v0
.end method

.method public getComponentConfigCenterMark()Lcom/android/camera/data/data/config/ComponentConfigCenterMark;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigCenterMark:Lcom/android/camera/data/data/config/ComponentConfigCenterMark;

    return-object v0
.end method

.method public getComponentConfigGradienter()Lcom/android/camera/data/data/config/ComponentConfigGradienter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigGradienter:Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    return-object v0
.end method

.method public getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigHDR10:Lcom/android/camera/hdr10/ComponentConfigHDR10;

    return-object v0
.end method

.method public getComponentConfigLiveShot()Lcom/android/camera/data/data/config/ComponentConfigLiveShot;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigLiveShot:Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    return-object v0
.end method

.method public getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigMeter:Lcom/android/camera/data/data/config/ComponentConfigMeter;

    return-object v0
.end method

.method public getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigRatio:Lcom/android/camera/data/data/config/ComponentConfigRatio;

    return-object v0
.end method

.method public getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigRaw:Lcom/android/camera/data/data/config/ComponentConfigRaw;

    return-object v0
.end method

.method public getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mSlowMotion:Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    return-object v0
.end method

.method public getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigSlowMotionQuality:Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    return-object v0
.end method

.method public getComponentConfigTrackFocus()Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigTrackFocus:Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    return-object v0
.end method

.method public getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigUltraWide:Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigUltraWide:Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigUltraWide:Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    return-object v0
.end method

.method public getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    return-object v0
.end method

.method public getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object v0

    return-object v0
.end method

.method public getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object v0

    return-object v0
.end method

.method public getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    return-object v0
.end method

.method public getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    return-object v0
.end method

.method public getComponentManuallyContrast()Lcom/android/camera/data/data/config/ComponentManuallyContrast;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyContrast:Lcom/android/camera/data/data/config/ComponentManuallyContrast;

    return-object v0
.end method

.method public getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyEV:Lcom/android/camera/data/data/config/ComponentManuallyEV;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyEV;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyEV;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyEV:Lcom/android/camera/data/data/config/ComponentManuallyEV;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyEV:Lcom/android/camera/data/data/config/ComponentManuallyEV;

    return-object v0
.end method

.method public getComponentManuallySaturation()Lcom/android/camera/data/data/config/ComponentManuallySaturation;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallySaturation:Lcom/android/camera/data/data/config/ComponentManuallySaturation;

    return-object v0
.end method

.method public getComponentManuallySharpness()Lcom/android/camera/data/data/config/ComponentManuallySharpness;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallySharpness:Lcom/android/camera/data/data/config/ComponentManuallySharpness;

    return-object v0
.end method

.method public getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    return-object v0
.end method

.method public getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyFocus:Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    return-object v0
.end method

.method public getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyET:Lcom/android/camera/data/data/config/ComponentManuallyET;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyET:Lcom/android/camera/data/data/config/ComponentManuallyET;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyET:Lcom/android/camera/data/data/config/ComponentManuallyET;

    return-object v0
.end method

.method public getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyISO:Lcom/android/camera/data/data/config/ComponentManuallyISO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyISO:Lcom/android/camera/data/data/config/ComponentManuallyISO;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyISO:Lcom/android/camera/data/data/config/ComponentManuallyISO;

    return-object v0
.end method

.method public getmComponentManuallyWB()Lcom/android/camera/data/data/config/ComponentManuallyWB;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyWB;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    return-object v0
.end method

.method public isSwitchOn(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public isTransient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mCameraId:I

    iget v2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    invoke-static {v1, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reConfigBokehIfHdrChanged(ILjava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reConfigFlashIfHdrChanged(ILjava/lang/String;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->supportFlashHdr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "live"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "auto"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "off"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move v3, v7

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "normal"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move v3, v6

    :cond_1
    :goto_0
    const-string p2, "0"

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "104"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_3
    :goto_1
    move-object v2, p2

    goto :goto_4

    :cond_4
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "5"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "106"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const-string p2, "101"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string v2, "103"

    goto :goto_4

    :cond_7
    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->o0ooOO0()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getAutoValueString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_8
    :goto_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->o0ooOO0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p2, "3"

    goto :goto_1

    :cond_9
    :goto_4
    if-eqz v2, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    :cond_b
    return v7

    :cond_c
    :goto_5
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_4
        0xddf -> :sswitch_3
        0x1ad6f -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x32b0ec -> :sswitch_0
    .end sparse-switch
.end method

.method public reConfigHdrIfBokehChanged(ILjava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reConfigHhrIfFlashChanged(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getPersistValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->supportFlashHdr()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    :cond_0
    const-string v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "105"

    const-string v8, "103"

    const-string v9, "104"

    const-string v10, "3"

    if-nez v6, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    const-string/jumbo v12, "off"

    if-eqz v6, :cond_5

    const-string/jumbo v6, "normal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "live"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "on"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isSupportAutoHdr()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v12, "auto"

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v13, "101"

    const-string v14, "106"

    const-string v15, "5"

    const-string v11, "2"

    const-string v5, "1"

    if-nez v6, :cond_6

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_d
    const/4 v12, 0x0

    :cond_e
    :goto_6
    if-eqz v12, :cond_11

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_11
    :goto_7
    const/4 v0, 0x0

    return v0
.end method

.method public reInitComponent(IILcom/android/camera2/CameraCapabilities;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->reInit(IILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/config/ComponentConfigUltraWide;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->reInit(IILcom/android/camera2/CameraCapabilities;I)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->reInit(II)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAi:Lcom/android/camera/data/data/config/ComponentConfigAi;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/camera/data/data/config/ComponentConfigAi;->reInit(IILcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigRaw:Lcom/android/camera/data/data/config/ComponentConfigRaw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigRatio:Lcom/android/camera/data/data/config/ComponentConfigRatio;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(II)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigSlowMotionQuality:Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mSlowMotion:Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    iget-object v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigSlowMotionQuality:Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->reInit(IILcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;Lcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigMeter:Lcom/android/camera/data/data/config/ComponentConfigMeter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigVideoQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->reInit(IILcom/android/camera2/CameraCapabilities;I)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyWB:Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyET:Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/ComponentManuallyET;->reInit(ILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyISO:Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->reInit(ILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyEV:Lcom/android/camera/data/data/config/ComponentManuallyEV;

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/ComponentManuallyEV;->reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mManuallyDualLens:Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->reInit(I)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAuxiliary:Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/ComponentConfigAuxiliary;->reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigGradienter:Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->reInit(II)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigCenterMark:Lcom/android/camera/data/data/config/ComponentConfigCenterMark;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->reInit(II)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigLiveShot:Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallyContrast:Lcom/android/camera/data/data/config/ComponentManuallyContrast;

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallySaturation:Lcom/android/camera/data/data/config/ComponentManuallySaturation;

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/ComponentManuallySaturation;->reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentManuallySharpness:Lcom/android/camera/data/data/config/ComponentManuallySharpness;

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/ComponentManuallySharpness;->reInit(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigHDR10:Lcom/android/camera/hdr10/ComponentConfigHDR10;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigTrackFocus:Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigBeautyMode:Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;

    iget v1, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mIntentType:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeautyMode;->reInit(IILcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    return-void
.end method

.method public resetAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->clearClosed()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->clearClosed()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->clearClosed()V

    return-void
.end method

.method public supportAi()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigAi:Lcom/android/camera/data/data/config/ComponentConfigAi;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportBokeh()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentBokeh:Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportFlash()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentFlash:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportHdr()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentHdr:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportRatio()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/DataItemConfig;->mComponentConfigRatio:Lcom/android/camera/data/data/config/ComponentConfigRatio;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->supportRatioSwitch()Z

    move-result v0

    return v0
.end method

.method public switchOff(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public switchOn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method
