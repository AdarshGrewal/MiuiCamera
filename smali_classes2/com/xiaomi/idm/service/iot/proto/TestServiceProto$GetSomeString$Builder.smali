.class public final Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TestServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$000()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$200(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;)V

    return-object p0
.end method

.method public clearParam1()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$400(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;)V

    return-object p0
.end method

.method public clearParam2()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$700(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;)V

    return-object p0
.end method

.method public clearParam3()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$1000(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;)V

    return-object p0
.end method

.method public getAid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getAid()I

    move-result v0

    return v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam1Bytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam2Bytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParam3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam3Bytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam3Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$100(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;I)V

    return-object p0
.end method

.method public setParam1(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$300(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParam1Bytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$500(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setParam2(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$600(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParam2Bytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$800(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setParam3(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$900(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParam3Bytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->access$1100(Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
