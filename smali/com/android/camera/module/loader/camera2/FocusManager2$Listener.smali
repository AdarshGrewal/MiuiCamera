.class public interface abstract Lcom/android/camera/module/loader/camera2/FocusManager2$Listener;
.super Ljava/lang/Object;
.source "FocusManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/FocusManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract cancelFocus(Z)V
.end method

.method public abstract multiCapture()Z
.end method

.method public notifyFocusAreaUpdate(Z)V
    .locals 0

    return-void
.end method

.method public abstract onWaitingFocusFinished()Z
.end method

.method public abstract playFocusSound(I)V
.end method

.method public abstract shouldCaptureDirectly()Z
.end method

.method public startFaceDetection()V
    .locals 0

    return-void
.end method

.method public abstract startFocus()V
.end method

.method public stopFaceDetection(Z)V
    .locals 0

    return-void
.end method

.method public stopObjectTracking(Z)V
    .locals 0

    return-void
.end method
