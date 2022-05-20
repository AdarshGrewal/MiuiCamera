.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LightingProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa03


# virtual methods
.method public abstract isFaceLocationOK()Z
.end method

.method public abstract isShowLightingView()Z
.end method

.method public abstract lightingCancel()V
.end method

.method public abstract lightingDetectFace([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
.end method

.method public abstract lightingFocused()V
.end method

.method public abstract lightingStart()V
.end method

.method public abstract mimojiEnd()V
.end method

.method public abstract mimojiFaceDetect(I)V
.end method

.method public abstract mimojiStart()V
.end method

.method public abstract setLightingViewStatus(Z)V
.end method

.method public abstract setMimojiDetectTipType(I)V
.end method

.method public abstract showOrHideLightingView()Z
.end method

.method public abstract updateMimojiFaceDetectResultTip(Z)V
.end method
