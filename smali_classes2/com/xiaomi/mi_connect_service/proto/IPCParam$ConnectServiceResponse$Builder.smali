.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$13900()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmConnectServiceResponse()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$14300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;)V

    return-object p0
.end method

.method public getIdmConnectServiceResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->getIdmConnectServiceResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasIdmConnectServiceResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->hasIdmConnectServiceResponse()Z

    move-result v0

    return v0
.end method

.method public mergeIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$14200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V

    return-object p0
.end method

.method public setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$14100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse$Builder;)V

    return-object p0
.end method

.method public setIdmConnectServiceResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;->access$14000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceResponse;)V

    return-object p0
.end method
