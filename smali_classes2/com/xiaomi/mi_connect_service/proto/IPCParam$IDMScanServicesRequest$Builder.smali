.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequestOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$27900()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClientId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;)V

    return-object p0
.end method

.method public clearServiceFilter()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;)V

    return-object p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getServiceFilter()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->getServiceFilter()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;

    move-result-object v0

    return-object v0
.end method

.method public hasServiceFilter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->hasServiceFilter()Z

    move-result v0

    return v0
.end method

.method public mergeServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery$Builder;)V

    return-object p0
.end method

.method public setServiceFilter(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;->access$28300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesRequest;Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscovery;)V

    return-object p0
.end method
