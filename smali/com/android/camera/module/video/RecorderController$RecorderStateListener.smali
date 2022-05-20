.class public interface abstract Lcom/android/camera/module/video/RecorderController$RecorderStateListener;
.super Ljava/lang/Object;
.source "RecorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video/RecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecorderStateListener"
.end annotation


# virtual methods
.method public abstract onMaxDurationReached()V
.end method

.method public abstract onMaxFileSizeReached()V
.end method

.method public abstract onNextFileStarted()V
.end method

.method public abstract onRecorderError(I)V
.end method

.method public abstract onRecorderPaused()V
.end method

.method public abstract onRecorderReleased(Z)V
.end method

.method public abstract onRecorderStopped()Z
.end method
