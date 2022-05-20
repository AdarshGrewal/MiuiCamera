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

.field public static final HALO_FRAME_BYPASS_NUMBER:I = 0xc

.field public static final LENS_FOCUS_DISTANCE_TOO_CLOSE:F = 2.5f

.field public static final LENS_FOCUS_DISTANCE_TOO_FAR:F = 0.5f

.field public static final REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

.field public static final REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

.field public static final TAG:Ljava/lang/String; = "FunctionParseAsdScene"

.field public static final TRIGGER_FLASH_HALO:I = 0x2

.field public static final TRIGGER_FLASH_HALO_AND_FLASH_ON:I = 0x3

.field public static final TRIGGER_FLASH_NONE:I = 0x0

.field public static final TRIGGER_FLASH_ON:I = 0x1

.field public static final TRIGGER_FLASH_SCREEN_LIGHT:I = 0x4

.field public static mFrameNumber:I

.field public static mIsFlashHaloRetain:Z

.field public static mIsFlashRetain:Z


# instance fields
.field public final mEnableBv:Z

.field public final mIsHardwareSupported:Z

.field public mLowLightValue:F

.field public mModuleWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field public mSkipHaloFrameNumber:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "FunctionParseAsdScene"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOoo0()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_LAST_LIGHT:F

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOoOO()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HEIGHT_LIGHT:F

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOoO()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HALO_LIGHT:F

    const/16 v0, -0x7d0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

    const/16 v0, -0x708

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_HEIGHT_LIGHT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
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

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OoooOOo()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REAL_BV:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mEnableBv:Z

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->isFlashSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsHardwareSupported:Z

    return-void
.end method

.method private getFlashScene(Landroid/hardware/camera2/CaptureResult;F)I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mEnableBv:Z

    const-string v1, ",mIsFlashRetain:"

    const-string v2, ",low_light_value:"

    const-string v3, ","

    const-string v4, "FunctionParseAsdScene"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getRealBV(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 4
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

    .line 5
    :cond_0
    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getFrontFlashType()I

    move-result p2

    or-int/2addr p2, v5

    goto :goto_0

    :cond_1
    move p2, v5

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->REAL_BV_LAST_LIGHT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 8
    sput-boolean v6, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getFrontFlashType()I

    move-result v0

    or-int/2addr p2, v0

    .line 10
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

    .line 11
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo000()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    sget v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HALO_LIGHT:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    .line 13
    sput-boolean v6, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    or-int/lit8 p2, p2, 0x2

    goto/16 :goto_2

    .line 14
    :cond_4
    sget p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HEIGHT_LIGHT:F

    iput p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    .line 15
    sget-boolean p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 16
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

    .line 17
    :cond_5
    sget-boolean p1, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    .line 18
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getFrontFlashType()I

    move-result p1

    or-int/2addr p1, v5

    goto :goto_1

    :cond_6
    move p1, v5

    .line 19
    :goto_1
    sget-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_7

    or-int/lit8 p1, p1, 0x2

    .line 20
    :cond_7
    sget v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_LAST_LIGHT:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    .line 21
    sput-boolean v6, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    .line 22
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getFrontFlashType()I

    move-result v0

    or-int/2addr p1, v0

    .line 23
    :cond_8
    sget-boolean v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    if-nez v0, :cond_9

    .line 24
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo000()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->AEC_LUX_HALO_LIGHT:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_9

    .line 25
    sput-boolean v6, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    .line 26
    iput v6, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    or-int/lit8 p2, p1, 0x2

    goto :goto_2

    :cond_9
    move p2, p1

    .line 27
    :cond_a
    :goto_2
    iget p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    const/16 v0, 0xc

    if-ge p1, v0, :cond_b

    add-int/2addr p1, v6

    .line 28
    iput p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    :cond_b
    and-int/lit8 p1, p2, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-eqz p1, :cond_c

    .line 29
    iget p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    if-le p1, v6, :cond_c

    if-ge p1, v2, :cond_c

    return v1

    :cond_c
    if-nez p2, :cond_d

    .line 30
    iget p1, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    if-ge v6, p1, :cond_d

    if-ge p1, v0, :cond_d

    or-int/lit8 p2, p2, 0x2

    :cond_d
    if-eq p2, v6, :cond_10

    const/4 p1, 0x2

    if-eq p2, p1, :cond_f

    const/4 p1, 0x3

    if-eq p2, p1, :cond_e

    if-eq p2, v2, :cond_10

    .line 31
    iput v5, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mSkipHaloFrameNumber:I

    .line 32
    sput-boolean v5, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    .line 33
    sput-boolean v5, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    return v1

    :cond_e
    const/16 p1, 0xb

    return p1

    :cond_f
    const/16 p1, 0xa

    return p1

    :cond_10
    const/16 p1, 0x9

    return p1
.end method

.method private getFrontFlashType()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsHardwareSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo000()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public static getLowLightValue()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isMimojiModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OOo()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/high16 v0, 0x43e10000    # 450.0f

    return v0
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ICameraMgr;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    .line 4
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v4

    .line 6
    invoke-virtual {v1, v2, v4}, Lcom/android/camera2/Camera2Proxy;->isNeedFlashForAuto(Ljava/lang/Integer;I)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCamera(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    .line 8
    :goto_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    .line 9
    :goto_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v6

    const/16 v7, 0xab

    if-eq v6, v7, :cond_5

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v6

    const/16 v7, 0xb8

    if-ne v6, v7, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    :cond_5
    :goto_3
    if-nez v4, :cond_8

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_9

    .line 11
    instance-of p1, v0, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;

    if-eqz p1, :cond_7

    .line 12
    check-cast v0, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;

    .line 13
    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$ASDSceneCallback;->isAutoFlashOff()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, -0x1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 15
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 16
    :cond_8
    :goto_4
    invoke-virtual {p0, p1, v1, v5}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->parseRtbSceneResult(Landroid/hardware/camera2/CaptureResult;ZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, -0x3

    .line 17
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

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public parseRtbSceneResult(Landroid/hardware/camera2/CaptureResult;ZZ)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getAecLux(Landroid/hardware/camera2/CaptureResult;)F

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p2, :cond_5

    .line 2
    sput-boolean v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashRetain:Z

    .line 3
    sput-boolean v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mIsFlashHaloRetain:Z

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getLowLightValue()F

    move-result p2

    iput p2, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    .line 5
    sget-boolean p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 6
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

    .line 7
    :cond_0
    iget p2, p0, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mLowLightValue:F

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    const/4 p1, 0x6

    return p1

    .line 8
    :cond_1
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 9
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

    .line 10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0OO()Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    const/4 p3, 0x2

    if-ge p2, p3, :cond_6

    add-int/lit8 p2, p2, 0x1

    .line 11
    sput p2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    return v1

    .line 12
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->getFlashScene(Landroid/hardware/camera2/CaptureResult;F)I

    move-result p1

    return p1

    .line 13
    :cond_7
    sput v2, Lcom/android/camera/module/loader/FunctionAsdSceneDetect;->mFrameNumber:I

    return v1
.end method
