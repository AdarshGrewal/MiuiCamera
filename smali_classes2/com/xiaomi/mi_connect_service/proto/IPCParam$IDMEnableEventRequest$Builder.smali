.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequestOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31400()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEid()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V

    return-object p0
.end method

.method public clearEnable()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$32100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V

    return-object p0
.end method

.method public clearServiceUuid()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;)V

    return-object p0
.end method

.method public getEid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getEid()I

    move-result v0

    return v0
.end method

.method public getEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getEnable()Z

    move-result v0

    return v0
.end method

.method public getServiceUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getServiceUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->getServiceUuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEid(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;I)V

    return-object p0
.end method

.method public setEnable(Z)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$32000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Z)V

    return-object p0
.end method

.method public setServiceUuid(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;->access$31700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMEnableEventRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
