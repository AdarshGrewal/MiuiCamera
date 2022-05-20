.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnectionOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->access$15500()Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConnParam()Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->access$16200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;)V

    return-object p0
.end method

.method public clearServiceType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->access$15700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;)V

    return-object p0
.end method

.method public getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;

    move-result-object v0

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->getServiceTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasConnParam()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->hasConnParam()Z

    move-result v0

    return v0
.end method

.method public mergeConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->access$16100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public setConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->access$16000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$Builder;)V

    return-object p0
.end method

.method public setConnParam(Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->access$15900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;)V

    return-object p0
.end method

.method public setServiceType(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->access$15600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;->access$15800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$InviteConnection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
