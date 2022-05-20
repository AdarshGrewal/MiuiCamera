.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnectionOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;->access$8100()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearServiceId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;->access$8300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;)V

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;->getServiceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;->getServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;->access$8200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;->access$8400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientAcceptConnection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
