.class public interface abstract Lcom/android/camera/module/common/ICameraMgr;
.super Ljava/lang/Object;
.source "ICameraMgr.java"


# virtual methods
.method public abstract closeCamera()V
.end method

.method public abstract getBogusCameraId()I
.end method

.method public abstract getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
.end method

.method public abstract getCameraDevice()Lcom/android/camera2/Camera2Proxy;
.end method

.method public abstract getPreviewSize()Lcom/android/camera/CameraSize;
.end method

.method public abstract getZoomRatio()F
.end method

.method public abstract isDisconnected()Z
.end method

.method public abstract isFrameAvailable()Z
.end method

.method public abstract notifyAfterFirstFrameArrived()V
.end method

.method public abstract onCameraError()V
.end method

.method public abstract pausePreview()V
.end method

.method public abstract resumePreview()V
.end method

.method public abstract setFrameAvailable(Z)V
.end method

.method public abstract setThermalLevel(I)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract updateThermalLevel()V
.end method
