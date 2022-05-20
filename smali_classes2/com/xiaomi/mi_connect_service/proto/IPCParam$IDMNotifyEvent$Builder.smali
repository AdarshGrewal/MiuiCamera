.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEventOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;->access$32700()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmEvent()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;->access$33100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;)V

    return-object p0
.end method

.method public getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object v0

    return-object v0
.end method

.method public hasIdmEvent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;->hasIdmEvent()Z

    move-result v0

    return v0
.end method

.method public mergeIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;->access$33000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;->access$32900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;->access$32800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMNotifyEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method
