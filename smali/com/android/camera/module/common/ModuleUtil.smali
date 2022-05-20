.class public Lcom/android/camera/module/common/ModuleUtil;
.super Ljava/lang/Object;
.source "ModuleUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/common/ModuleUtil$CameraMode;
    }
.end annotation


# static fields
.field public static final BACK_PRESSED_TIME_INTERVAL:I = 0xbb8

.field public static final BATTERY_PERCENT_FOR_CLOSE_ALGO:I = 0x5

.field public static final CAMERA_MODES:[I

.field public static final CAMERA_MODE_IMAGE_CAPTURE:I = 0x2

.field public static final CAMERA_MODE_NORMAL:I = 0x0

.field public static final CAMERA_MODE_SCAN_QR_CODE:I = 0x6

.field public static final CAMERA_MODE_VIDEO_CAPTURE:I = 0x4

.field public static final DOCUMENT_BLUR_DETECT_HINT_DURATION_3S:I = 0xbb8

.field public static final LENS_DIRTY_DETECT_HINT_DURATION_3S:I = 0xbb8

.field public static final LENS_DIRTY_DETECT_HINT_DURATION_8S:I = 0x1f40

.field public static final LENS_DIRTY_DETECT_TIMEOUT:I = 0x3a98

.field public static final SCREEN_DELAY:I = 0xea60

.field public static final SCREEN_DELAY_KEYGUARD:I = 0x7530

.field public static final SHUTTER_DOWN_FROM_BUTTON:I = 0x2

.field public static final SHUTTER_DOWN_FROM_HARD_KEY:I = 0x1

.field public static final SHUTTER_DOWN_FROM_UNKNOWN:I = 0x0

.field public static final SHUTTER_DOWN_FROM_UNLOCK_OR_LONG_CLICK_OR_AUDIO:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ModuleUtil"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/module/common/ModuleUtil;->CAMERA_MODES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static announceForAccessibility(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->announceForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public static updateFlashModeAndRefreshUI(ILcom/android/camera/module/Module;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFlashModeAndRefreshUI flashMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModuleUtil"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->setFlashMode(ILjava/lang/String;)V

    :cond_0
    const-string v0, "0"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "104"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-eq p0, v4, :cond_5

    if-eqz v1, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    const/16 v1, 0x50

    if-eqz p0, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const v5, 0x7f1202cf

    invoke-static {p0, v5, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    sget-boolean v5, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0Oo:Z

    if-eqz v5, :cond_4

    const v5, 0x7f1205bc

    goto :goto_2

    :cond_4
    const v5, 0x7f1202ce

    :goto_2
    invoke-static {p0, v5, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    .line 10
    :cond_5
    :goto_3
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/IModuleState;->isDoingAction()Z

    move-result p0

    const/16 v1, 0xa

    if-eqz p0, :cond_6

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 12
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 13
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v4, [I

    aput v1, p1, v3

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    goto :goto_4

    .line 14
    :cond_6
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v4, [I

    aput v1, p1, v3

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    .line 15
    :goto_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_7

    new-array p1, v4, [I

    const/16 p2, 0xc1

    aput p2, p1, v3

    .line 17
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_7
    return-void
.end method
