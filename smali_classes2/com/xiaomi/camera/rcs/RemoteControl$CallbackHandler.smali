.class public Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;
.super Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;
.source "RemoteControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/RemoteControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackHandler"
.end annotation


# instance fields
.field public mCustomListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;

.field public mListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;

.field public mStreamingListener:Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/IRemoteControlClient$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/rcs/RemoteControl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionStatus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/xiaomi/camera/rcs/RemoteControl$ICallbacks;->connectionStatus(I)V

    :cond_0
    return-void
.end method

.method public customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mCustomListener:Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/rcs/RemoteControl$ICustomCallbacks;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public streamingServerStatus(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mStreamingListener:Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;->streamingServerStatus(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public streamingSessionStatus(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/RemoteControl$CallbackHandler;->mStreamingListener:Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/rcs/RemoteControl$IStreamingCallbacks;->streamingSessionStatus(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
