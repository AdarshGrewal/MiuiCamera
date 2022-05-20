.class public Lcom/xiaomi/idm/handoff_sdk/HandoffApi;
.super Ljava/lang/Object;
.source "HandoffApi.java"


# static fields
.field public static final HANDOFF_PROCESS_SERVICE:Ljava/lang/String; = "com.xiaomi.idm.handoff_process_service.HandoffProcessService"

.field public static final MI_CONNECT_SERVICE_PKG:Ljava/lang/String; = "com.xiaomi.mi_connect_service"

.field public static final TAG:Ljava/lang/String; = "HandoffApi"


# instance fields
.field public mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mHandoffInnerCallback:Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;

.field public mIHandoffProcess:Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

.field public volatile mIsBound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIsBound:Z

    .line 3
    new-instance v0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$1;-><init>(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;)V

    iput-object v0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mHandoffInnerCallback:Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;

    .line 4
    new-instance v0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi$2;-><init>(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;)V

    iput-object v0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mConnection:Landroid/content/ServiceConnection;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;)Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIHandoffProcess:Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;)Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIHandoffProcess:Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/xiaomi/idm/handoff_sdk/HandoffApi;)Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mHandoffInnerCallback:Lcom/xiaomi/mi_connect_sdk/IHandoffProcessCallback;

    return-object p0
.end method

.method private doBindService()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HandoffApi"

    const-string v3, "do bind handoff process service"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.xiaomi.mi_connect_service"

    const-string v5, "com.xiaomi.idm.handoff_process_service.HandoffProcessService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    iget-object v3, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Bind handoff service process failed"

    .line 5
    invoke-static {v2, v1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iput-boolean v5, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIsBound:Z

    return-void
.end method

.method private doUnbindService()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIsBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HandoffApi"

    const-string v3, "unBindHandoffService"

    .line 2
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIsBound:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIHandoffProcess:Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    :cond_0
    return-void
.end method

.method private serviceAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIHandoffProcess:Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HandoffApi"

    const-string v3, "destroy"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIsBound:Z

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Haven\'t init yet"

    .line 3
    invoke-static {v2, v1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIHandoffProcess:Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    invoke-interface {v0}, Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->doUnbindService()V

    return-void
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->doBindService()V

    return-void
.end method

.method public notifyHandoffData(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->setKey(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;

    move-result-object p1

    .line 4
    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;

    .line 6
    iget-object p2, p0, Lcom/xiaomi/idm/handoff_sdk/HandoffApi;->mIHandoffProcess:Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyHandoffEvent;->toByteArray()[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaomi/mi_connect_sdk/IHandoffProcess;->notifyHandoffEvent([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "HandoffApi"

    const-string v0, "notifyHandoffData Called, but service not available"

    .line 7
    invoke-static {p2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
