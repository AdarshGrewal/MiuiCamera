.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$28800()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllService(Ljava/lang/Iterable;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;",
            ">;)",
            "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addService(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public addService(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public addService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public addService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public clearClientId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;)V

    return-object p0
.end method

.method public clearService()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;)V

    return-object p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getService(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getService(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p1

    return-object p1
.end method

.method public getServiceCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getServiceCount()I

    move-result v0

    return v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->getServiceList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeService(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$30000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;I)V

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$28900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setService(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public setService(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;->access$29200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponse;ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method
