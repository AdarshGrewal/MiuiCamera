.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BottomPopupTips"
.end annotation


# static fields
.field public static final SUB_TIP_TAG_NEAR_RANGE:I = 0x1

.field public static final SUB_TIP_TAG_NIGHT:I = 0x2

.field public static final SUB_TIP_TAG_NONE:I = 0x0

.field public static final TYPE_TAG:I = 0xaf


# virtual methods
.method public abstract hideAllTipImage(Z)V
.end method

.method public abstract hideAllTips(Z)V
.end method

.method public abstract hideQrCodeTip()V
.end method

.method public abstract isSubTipShowing(I)Z
.end method

.method public abstract reConfigAiTip()Z
.end method

.method public abstract reConfigQrCodeTip()Z
.end method

.method public abstract reInitTipImage()V
.end method

.method public abstract showQrCodeTip()V
.end method

.method public abstract updateDynamicImageForZoom(Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Z)V
.end method

.method public abstract updateSubTip(IZLjava/lang/Object;)V
.end method

.method public abstract updateTipImage()V
.end method

.method public abstract updateTipState(I)V
.end method
