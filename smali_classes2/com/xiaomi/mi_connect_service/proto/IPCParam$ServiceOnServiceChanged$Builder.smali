.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChangedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChangedOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$26800()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNewServiceId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$27300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;)V

    return-object p0
.end method

.method public clearOldServiceId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$27000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;)V

    return-object p0
.end method

.method public clearSubChangeType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$27700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;)V

    return-object p0
.end method

.method public getNewServiceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getNewServiceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getNewServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOldServiceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getOldServiceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getOldServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubChangeType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getSubChangeType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;

    move-result-object v0

    return-object v0
.end method

.method public getSubChangeTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->getSubChangeTypeValue()I

    move-result v0

    return v0
.end method

.method public setNewServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$27200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNewServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$27400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOldServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$26900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOldServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$27100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSubChangeType(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$27600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;)V

    return-object p0
.end method

.method public setSubChangeTypeValue(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;->access$27500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged;I)V

    return-object p0
.end method
