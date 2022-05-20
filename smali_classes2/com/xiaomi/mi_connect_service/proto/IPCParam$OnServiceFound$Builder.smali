.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFoundOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFoundOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->access$17700()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmService()Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->access$18100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;)V

    return-object p0
.end method

.method public getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object v0

    return-object v0
.end method

.method public hasIdmService()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->hasIdmService()Z

    move-result v0

    return v0
.end method

.method public mergeIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->access$18000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->access$17900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;->access$17800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$OnServiceFound;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method
