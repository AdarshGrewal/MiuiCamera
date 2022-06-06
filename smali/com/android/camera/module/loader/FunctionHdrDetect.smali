.class public Lcom/android/camera/module/loader/FunctionHdrDetect;
.super Ljava/lang/Object;
.source "FunctionHdrDetect.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionParseAsdHdr"


# instance fields
.field public final mHdrCheckerCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mSupportHdrMotion:Z

.field public final mSupportHdrThermal:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mHdrCheckerCallback:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mSupportHdrMotion:Z

    iput-boolean p3, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mSupportHdrThermal:Z

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mHdrCheckerCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->isHdrSceneDetectionStarted()Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mSupportHdrMotion:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->isHdrMotionDetected(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrMotionDetectionResult(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/module/loader/FunctionHdrDetect;->mSupportHdrThermal:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_THERMAL_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-interface {v0, v3}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrThermalDetectionResult(Z)V

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v5

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHdrMode(Landroid/hardware/camera2/CaptureResult;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apply() called with: hdrMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", hdrStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isMotionDetected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isHighTemperature = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FunctionParseAsdHdr"

    invoke-static {v8, v7}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v6}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->isMatchCurrentHdrMode(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v5, v4, :cond_5

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    move v2, v4

    :cond_5
    invoke-interface {v0, v2}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrSceneChanged(Z)V

    :cond_6
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

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionHdrDetect;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    return-object p1
.end method
