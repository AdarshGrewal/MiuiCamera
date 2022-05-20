.class public Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlService.java"

# interfaces
.implements Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/service/RemoteControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteControlClient"
.end annotation


# instance fields
.field public mIsGroupOwner:Z

.field public mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

.field public mPkgName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    .line 4
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlClient: create: E"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    .line 6
    iput-object p3, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mPkgName:Ljava/lang/String;

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$300(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Lcom/xiaomi/camera/rcs/streaming/StreamingServer;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/xiaomi/camera/rcs/streaming/StreamingServer;->addCallbackListener(Lcom/xiaomi/camera/rcs/streaming/StreamingStateCallback;)V

    .line 10
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteControlClient: create: X"

    invoke-static {p1, p2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;Lcom/xiaomi/camera/rcs/service/RemoteControlService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;-><init>(Lcom/xiaomi/camera/rcs/service/RemoteControlService;Lcom/xiaomi/camera/rcs/IRemoteControlClient;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    return p1
.end method


# virtual methods
.method public customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteControlClient: customCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->customCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public customClientRequest(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteControlClient: customClientRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$400(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaomi/compat/manager/InputManagerCompat;->injectInputEvent(Landroid/hardware/input/InputManager;Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlClient: exception in injectKeyEvent"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/16 v0, 0x1002

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->this$0:Lcom/xiaomi/camera/rcs/service/RemoteControlService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$400(Lcom/xiaomi/camera/rcs/service/RemoteControlService;)Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaomi/compat/manager/InputManagerCompat;->injectInputEvent(Landroid/hardware/input/InputManager;Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlClient: exception in injectMotionEvent"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onStreamingServerStateChanged(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamingServerStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->streamingServerStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onStreamingSessionStateChanged(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamingSessionStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/rcs/IRemoteControlClient;->streamingSessionStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteControlClient: release: E -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/rcs/service/RemoteControlService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteControlClient: release: X"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mPkgName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mIsGroupOwner:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/camera/rcs/service/RemoteControlService$RemoteControlClient;->mListener:Lcom/xiaomi/camera/rcs/IRemoteControlClient;

    if-nez v2, :cond_0

    const-string v2, "NULL"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "RCC(ID=%d, CN=%s, GO=%s, BP=%s)"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
