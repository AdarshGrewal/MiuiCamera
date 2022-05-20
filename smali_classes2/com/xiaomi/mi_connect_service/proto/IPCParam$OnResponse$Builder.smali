.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->access$19200()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmResponse()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->access$19600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;)V

    return-object p0
.end method

.method public getIdmResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->getIdmResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasIdmResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->hasIdmResponse()Z

    move-result v0

    return v0
.end method

.method public mergeIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->access$19500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public setIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->access$19400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;)V

    return-object p0
.end method

.method public setIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;->access$19300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method
