.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEventOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->access$19800()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmEvent()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->access$20200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;)V

    return-object p0
.end method

.method public getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object v0

    return-object v0
.end method

.method public hasIdmEvent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->hasIdmEvent()Z

    move-result v0

    return v0
.end method

.method public mergeIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->access$20100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->access$20000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;->access$19900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method
