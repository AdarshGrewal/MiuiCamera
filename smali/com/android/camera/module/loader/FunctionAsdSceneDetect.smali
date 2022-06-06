.class public Lcom/android/camera/module/loader/FunctionAsdSceneDetect;
.super Ljava/lang/Object;
.source "FunctionAsdSceneDetect.java"

# interfaces
.implements Lio/reactivex/functions/Function;
.implements Lcom/android/camera/constant/AsdSceneConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/FunctionAsdSceneDetect$TriggerFlashType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/camera/constant/AsdSceneConstant;"
    }
.end annotation


# static fields
.field public static final AEC_LUX_HALO_LIGHT:F

.field public static final AEC_LUX_HEIGHT_LIGHT:F

.field public static final AEC_LUX_LAST_LIGHT:F

.field public static final AEC_LUX_LOW_LIGHT:F = 450.0f

.field public static final DEBUG:Z

.field public static final FRAME_BYPASS_NUMBER:I = 0x2

.field public static final HALO_FRAME_BYPASS_NUMBER:I = 0x0

.field public static final LENS_FOCUS_DISTANCE_TOO_CLOSE:F = 2.5f

.field public static final LENS_FOCUS_DISTANCE_TOO_FAR:F = 0.5f

.field public static final REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

.field public static final REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

.field public static final TAG:Ljava/lang/String; = "FunctionParseAsdScene"

.field public static final TRIGGER_FLASH_HALO:I = 0x2

.field public static final TRIGGER_FLASH_HALO_AND_FLASH_ON:I = 0x3

.field public static final TRIGGER_FLASH_NONE:I = 0x0

.field public static final TRIGGER_FLASH_ON:I = 0x1

.field public static mFrameNumber:I

.field public static mIsFlashHaloRetain:Z

.field public static mIsFlashRetain:Z

.field public static mSkipHaloFrameNumber:I


# instance fields
.field public final mEnableBv:Z

.field public mLowLightValue:F

.field public mModuleWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "FunctionParseAsdScene"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0O()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_LAST_LIGHT:F

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HEIGHT_LIGHT:F

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo00()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HALO_LIGHT:F

    const/16 v0, -0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

    const/16 v0, -0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMimojiModule()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f5eb852    # 0.87f

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooOOO()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REAL_BV:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mEnableBv:Z

    return-void
.end method

.method private getFlashScene(Landroid/hardware/camera2/CaptureResult;F)I
    .locals 7

    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mEnableBv:Z

    const-string v1, ",mIsFlashRetain:"

    const-string v2, ",low_light_value:"

    const-string v3, ","

    const-string v4, "FunctionParseAsdScene"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getRealBV(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<front facing>realBV:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",REAL_BV_LAST_LIGHT:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    move p2, v6

    goto :goto_0

    :cond_1
    move p2, v5

    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooooO()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_2

    sput-boolean v6, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    or-int/lit8 p2, p2, 0x1

    :cond_2
    sget-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    or-int/lit8 p2, p2, 0x2

    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->oOooo0o()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    sget v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HALO_LIGHT:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    sput-boolean v6, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    or-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    :cond_4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMimojiModule()Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HEIGHT_LIGHT:F

    const v0, 0x3f5eb852    # 0.87f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    goto :goto_1

    :cond_5
    sget p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HEIGHT_LIGHT:F

    iput p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    :goto_1
    sget-boolean p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<front facing>aecLux:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",AEC_LUX_LAST_LIGHT:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_LAST_LIGHT:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    move p1, v6

    goto :goto_2

    :cond_7
    move p1, v5

    :goto_2
    sget-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    or-int/lit8 p1, p1, 0x2

    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooooO()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_LAST_LIGHT:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_9

    sput-boolean v6, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    or-int/lit8 p1, p1, 0x1

    :cond_9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->oOooo0o()Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HALO_LIGHT:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_a

    sput-boolean v6, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    or-int/lit8 p2, p1, 0x2

    goto :goto_3

    :cond_a
    move p2, p1

    :cond_b
    :goto_3
    if-nez p2, :cond_c

    sget-boolean p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    if-eqz p1, :cond_c

    sget p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    if-gez p1, :cond_c

    add-int/2addr p1, v6

    sput p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    or-int/lit8 p2, p2, 0x2

    :cond_c
    if-eq p2, v6, :cond_f

    const/4 p1, 0x2

    if-eq p2, p1, :cond_e

    const/4 p1, 0x3

    if-eq p2, p1, :cond_d

    sput v5, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    sput-boolean v5, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    sput-boolean v5, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    const/4 p1, -0x1

    return p1

    :cond_d
    const/16 p1, 0xb

    return p1

    :cond_e
    const/16 p1, 0xa

    return p1

    :cond_f
    const/16 p1, 0x9

    return p1
.end method

.method public static getLowLightValue()F
    .locals 1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMimojiModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00O()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooOOo()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/high16 v0, 0x43e10000    # 450.0f

    return v0
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashForAuto(Ljava/lang/Integer;I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isPortraitMode()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isMimojiMode()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_7

    instance-of p1, v0, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;

    if-eqz p1, :cond_5

    check-cast v0, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;

    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;->isAutoFlashOff()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_4
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->parseRtbSceneResult(Landroid/hardware/camera2/CaptureResult;ZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, -0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public parseRtbSceneResult(Landroid/hardware/camera2/CaptureResult;ZZ)I
    .locals 3

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getAecLux(Landroid/hardware/camera2/CaptureResult;)F

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p2, :cond_5

    sput-boolean v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    sput-boolean v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    invoke-static {}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getLowLightValue()F

    move-result p2

    iput p2, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<back facing>aecLux:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ",low_light_value:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FunctionParseAsdScene"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p2, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    const/4 p1, 0x6

    return p1

    :cond_1
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x40200000    # 2.5f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_3

    const/4 p1, 0x5

    return p1

    :cond_3
    const/4 p1, 0x7

    return p1

    :cond_4
    return v1

    :cond_5
    if-nez p3, :cond_7

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00O00o()Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    const/4 p3, 0x2

    if-ge p2, p3, :cond_6

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    return v1

    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getFlashScene(Landroid/hardware/camera2/CaptureResult;F)I

    move-result p1

    return p1

    :cond_7
    sput v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    return v1
.end method
