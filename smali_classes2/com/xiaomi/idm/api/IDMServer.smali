.class public Lcom/xiaomi/idm/api/IDMServer;
.super Lcom/xiaomi/idm/api/IDM;
.source "IDMServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;
    }
.end annotation


# static fields
.field public static final PERSIST_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final PERSIST_TYPE_SERVICE:Ljava/lang/String; = "service"

.field public static final TAG:Ljava/lang/String; = "IDMServer"


# instance fields
.field public mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

.field public mProcCallback:Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;

.field public mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/idm/api/IDMService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/idm/api/IDMProcessCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/api/IDM;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/idm/api/IDMProcessCallback;)V

    .line 2
    new-instance p1, Lcom/xiaomi/idm/api/IDMServer$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/idm/api/IDMServer$1;-><init>(Lcom/xiaomi/idm/api/IDMServer;)V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServer;->mProcCallback:Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;

    .line 3
    new-instance p1, Lcom/xiaomi/idm/api/IDMServer$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/idm/api/IDMServer$2;-><init>(Lcom/xiaomi/idm/api/IDMServer;)V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServer;->mEventCallback:Lcom/xiaomi/idm/api/IDMService$IDMEventCallback;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMServer;->mServices:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/idm/api/IDMServer;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMServer;->mServices:Ljava/util/Map;

    return-object p0
.end method

.method private sendServiceStatusResponse(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMServer"

    const-string v3, "sendServiceStatusResponse"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMServer;->mServices:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service is not registered : ServiceId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->getCode()I

    move-result p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientId and serviceId are required. ClientId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serviceId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_ERR_ILLEGAL_PARAMETER:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->getCode()I

    move-result p1

    .line 8
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;->setStatus(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;->setClientId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;

    move-result-object p1

    const/4 p2, -0x1

    if-eq p4, p2, :cond_3

    .line 12
    invoke-virtual {p1, p4}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;->setConnLevel(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;

    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    invoke-virtual {p2, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    .line 17
    iget-object p2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->toByteArray()[B

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->connectServiceStatusResponse(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "sendServiceStatusResponse, service unavailable"

    .line 19
    invoke-static {v2, p2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public acceptConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDMServer"

    const-string v2, "accepting connection..."

    .line 1
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->getCode()I

    move-result v0

    const/4 v1, -0x1

    .line 4
    invoke-direct {p0, v0, p2, p1, v1}, Lcom/xiaomi/idm/api/IDMServer;->sendServiceStatusResponse(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public acceptInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptInvitation, serviceId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], inviteStr = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IDMServer"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->setInviteStr(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    .line 7
    iget-object p2, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->toByteArray()[B

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->acceptInvitation(Ljava/lang/String;[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public disconnectClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/idm/api/IDMServer;->disconnectClient(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public disconnectClient(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDMServer"

    const-string v2, "disconnecting connection..."

    .line 2
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_DISCONNECT:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->getCode()I

    move-result v0

    .line 5
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/xiaomi/idm/api/IDMServer;->sendServiceStatusResponse(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public doDestroy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->unregisterProc(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDMServer"

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;

    move-result-object v0

    const v1, 0x1e88e0

    .line 2
    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;->setSdkVersion(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;->toByteArray()[B

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMServer;->mProcCallback:Lcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;

    invoke-interface {v1, v2, v0, v3}, Lcom/xiaomi/mi_connect_service/IMiConnect;->registerProc(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDMServer"

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public registerService(Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;)I
    .locals 9

    .line 2
    iget-object v0, p1, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->idmService:Lcom/xiaomi/idm/api/IDMService;

    .line 3
    iget-object v1, p1, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->intentStr:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->intentType:Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerService -> service: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMService;->getIDMServiceProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nisPersistent? :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "IDMServer"

    .line 7
    invoke-static {v6, v3, v5}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, ""

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;

    move-result-object v5

    .line 10
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMService;->getIDMServiceProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;

    move-result-object v7

    iget v8, p1, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->discType:I

    .line 11
    invoke-virtual {v7, v8}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->setDiscType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;

    move-result-object v7

    iget v8, p1, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->commType:I

    .line 12
    invoke-virtual {v7, v8}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->setCommType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;

    move-result-object v7

    iget p1, p1, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;->serviceSecurityType:I

    .line 13
    invoke-virtual {v7, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->setServiceSecurityType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    invoke-virtual {v5, v1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->setIntentStr(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;

    .line 16
    invoke-virtual {v5, v2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->setIntentType(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;

    .line 17
    :cond_1
    invoke-virtual {v5}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->toByteArray()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->startAdvertisingIDM(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new UUID return, set new UUID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, p1, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 21
    invoke-virtual {v0, v3}, Lcom/xiaomi/idm/api/IDMService;->setUUID(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMServer;->mServices:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v4, -0x1

    :cond_3
    return v4
.end method

.method public registerService(Lcom/xiaomi/idm/api/IDMService;)I
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;

    invoke-direct {v0, p1}, Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;-><init>(Lcom/xiaomi/idm/api/IDMService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/idm/api/IDMServer;->registerService(Lcom/xiaomi/idm/api/IDMServer$RSParamBuilder;)I

    move-result p1

    return p1
.end method

.method public rejectConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDMServer"

    const-string v2, "rejecting connection..."

    .line 1
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_LOCAL_REJECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->getCode()I

    move-result v0

    const/4 v1, -0x1

    .line 4
    invoke-direct {p0, v0, p2, p1, v1}, Lcom/xiaomi/idm/api/IDMServer;->sendServiceStatusResponse(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public unregisterService(Lcom/xiaomi/idm/api/IDMService;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMBinderBase;->serviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->newBuilder()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getIDMServiceProto()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;

    .line 5
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMBinderBase;->mService:Lcom/xiaomi/mi_connect_service/IMiConnect;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDM;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StopAdvertisingIDM;->toByteArray()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/mi_connect_service/IMiConnect;->stopAdvertisingIDM(Ljava/lang/String;[B)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDMServer"

    invoke-static {v1, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
