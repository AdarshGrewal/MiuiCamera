.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessageOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;->access$34000()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMsg()Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;->access$34200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;)V

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;->getMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;->access$34100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMsgBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;->access$34300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMSetClipBoardMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
