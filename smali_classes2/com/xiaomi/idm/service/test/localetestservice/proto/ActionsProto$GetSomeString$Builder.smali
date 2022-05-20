.class public final Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ActionsProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeStringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeStringOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->access$000()Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->access$200(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;)V

    return-object p0
.end method

.method public clearParam()Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->access$400(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;)V

    return-object p0
.end method

.method public getAid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->getAid()I

    move-result v0

    return v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->getParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->getParamBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->access$100(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;I)V

    return-object p0
.end method

.method public setParam(Ljava/lang/String;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->access$300(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParamBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;->access$500(Lcom/xiaomi/idm/service/test/localetestservice/proto/ActionsProto$GetSomeString;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
