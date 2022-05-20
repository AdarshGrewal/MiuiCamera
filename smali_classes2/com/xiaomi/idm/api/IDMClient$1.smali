.class public Lcom/xiaomi/idm/api/IDMClient$1;
.super Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub;
.source "IDMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/idm/api/IDMClient;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IIDMClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChanged([B)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    const-string v3, "onAccountChanged"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onAccountChanged: param is null"

    .line 4
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->getNewIdHash()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientOnAccountChanged;->getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;

    move-result-object p1

    if-nez p1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "subChangeType is null"

    .line 8
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;->onAccountChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "newIdHash is empty!"

    .line 10
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDiscoveryResult([B)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    const-string v3, "onDiscoveryResult"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onDiscoveryResult param is null"

    .line 4
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnDiscoveryResult;->getStatus()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;->onDiscoveryResult(I)V

    return-void
.end method

.method public onEvent([B)V
    .locals 5

    const-string v0, "IDMClient"

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "onEvent eventParam is null"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEid()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getUuid()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-virtual {v4, v3, v2}, Lcom/xiaomi/idm/api/IDMClient;->generateEventKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v3}, Lcom/xiaomi/idm/api/IDMClient;->access$800(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/idm/api/IDMService$Event;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;->getEvent()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaomi/idm/api/IDMService$Event;->onEvent([B)V

    goto :goto_1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Event Not Found"

    .line 10
    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onInvitationAccepted([B)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    const-string v3, "onInvitationAccepted"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInvitationAccepted;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInvitationAccepted;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onInviteConnection param is null"

    .line 4
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInvitationAccepted;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "service param is null"

    .line 6
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/IDMService;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$300(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;->createIDMService(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;->onInvitationAccepted(Lcom/xiaomi/idm/api/IDMService;)V

    :cond_3
    return-void
.end method

.method public onInviteConnection([B)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    const-string v3, "onInviteConnection"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onInviteConnection param is null"

    .line 4
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->getCode()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnInviteConnection;->getInviteStr()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v1}, Lcom/xiaomi/idm/api/IDMClient;->access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;->onInviteConnection(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse([B)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    const-string v3, "onResponse"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "IDMClient"

    const-string v1, "onResponse param is null"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IDMClient"

    invoke-static {v3, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->getIdmResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getRequestId()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$600(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    monitor-enter v2

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$600(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/IDMClient$Call;

    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getCode()I

    move-result v0

    sget-object v2, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->REQUEST_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v2}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 11
    :try_start_2
    iget-object v0, p1, Lcom/xiaomi/idm/api/IDMClient$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    iget-object v2, p1, Lcom/xiaomi/idm/api/IDMClient$Call;->action:Lcom/xiaomi/idm/api/IDMService$Action;

    .line 12
    invoke-virtual {v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getResponse()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/idm/api/IDMService$Action;->parseResponse([B)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/task/CallFuture;->setDone(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDMClient"

    invoke-static {v2, v1, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iget-object p1, p1, Lcom/xiaomi/idm/api/IDMClient$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/RmiException;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/idm/task/CallFuture;->setFailed(ILjava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p1, Lcom/xiaomi/idm/api/IDMClient$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getCode()I

    move-result v0

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/idm/task/CallFuture;->setFailed(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "IDMClient"

    const-string v1, "onResponse responseParam is null"

    .line 17
    invoke-static {v0, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClient;->access$700(Lcom/xiaomi/idm/api/IDMClient;)V

    return-void
.end method

.method public onServiceConnectStatus([B)V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    const-string v3, "onServiceConnectStatus"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onServiceConnectStatus param is null"

    .line 4
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getStatus()I

    move-result v1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnectStatus : status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getServiceId()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/idm/api/conn/EndPoint;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;)Lcom/xiaomi/idm/api/conn/EndPoint;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object v4

    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;->onServiceConnectStatus(ILjava/lang/String;Lcom/xiaomi/idm/api/conn/EndPoint;Lcom/xiaomi/idm/api/conn/ConnParam;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_TO_BE_CONFIRM:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->getCode()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceConnectStatus;->getServiceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/IDMClient;->acceptConnection(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onServiceFound([B)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IDMClient"

    const-string v2, "onServiceFound"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$300(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClient;->access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClient;->access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/IDMService;

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClient;->access$300(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMServiceFactoryBase;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/idm/api/IDMServiceFactoryBase;->createIDMService(Lcom/xiaomi/idm/api/IDMClient;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/idm/api/IDMService;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/api/IDMService;->update(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;->onServiceFound(Lcom/xiaomi/idm/api/IDMService;)V

    :cond_2
    return-void
.end method

.method public onServiceLost([B)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IDMClient"

    const-string v3, "onServiceLost"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onServiceLost param is null"

    .line 2
    invoke-static {v2, v0, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceLost;->parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceLost;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceLost;->getServiceId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMClient;->access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/idm/api/IDMService;

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClient;->access$400(Lcom/xiaomi/idm/api/IDMClient;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-static {p1}, Lcom/xiaomi/idm/api/IDMClient;->access$200(Lcom/xiaomi/idm/api/IDMClient;)Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/api/IDMClient$IDMClientCallback;->onServiceLost(Lcom/xiaomi/idm/api/IDMService;)V

    .line 10
    iget-object p1, p0, Lcom/xiaomi/idm/api/IDMClient$1;->this$0:Lcom/xiaomi/idm/api/IDMClient;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/idm/api/IDMClient;->access$500(Lcom/xiaomi/idm/api/IDMClient;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
