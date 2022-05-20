.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->access$13300()Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmResponse()Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->access$13700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;)V

    return-object p0
.end method

.method public getIdmResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->getIdmResponse()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasIdmResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->hasIdmResponse()Z

    move-result v0

    return v0
.end method

.method public mergeIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->access$13600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method

.method public setIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->access$13500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;)V

    return-object p0
.end method

.method public setIdmResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;->access$13400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$Response;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;)V

    return-object p0
.end method
