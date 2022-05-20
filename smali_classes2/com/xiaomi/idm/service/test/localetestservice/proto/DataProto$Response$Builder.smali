.class public final Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DataProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$ResponseOrBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->access$000()Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearStr()Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->access$200(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;)V

    return-object p0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->getStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->getStrBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setStr(Ljava/lang/String;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->access$100(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;->access$300(Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
