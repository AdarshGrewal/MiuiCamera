.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$AutoZoomModuleProtocol;
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
    name = "AutoZoomModuleProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xd7


# virtual methods
.method public abstract onTrackLost()V
.end method

.method public abstract onTrackLosting()V
.end method

.method public registerProtocol()V
    .locals 0

    return-void
.end method

.method public abstract setAutoZoomStopCapture(I)V
.end method

.method public abstract startTracking(Landroid/graphics/RectF;)V
.end method

.method public unRegisterProtocol()V
    .locals 0

    return-void
.end method
