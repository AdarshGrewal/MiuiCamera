.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;->access$30800()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmResponse()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;->access$31200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;)V

    return-object p0
.end method

.method public getIdmResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;->getIdmResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasIdmResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;->hasIdmResponse()Z

    move-result v0

    return v0
.end method

.method public mergeIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;->access$31100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public setIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;->access$31000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;)V

    return-object p0
.end method

.method public setIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;->access$30900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMActionResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method
