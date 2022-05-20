.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnectionOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;->access$8600()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearServiceId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;->access$8800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;)V

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;->getServiceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;->getServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;->access$8700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;->access$8900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ClientRejectConnection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
