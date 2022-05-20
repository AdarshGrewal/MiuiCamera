.class public Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;
.super Lcom/xiaomi/idm/api/IDMService$Action;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/TestService$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSomeString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/idm/api/IDMService$Action<",
        "Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/service/iot/TestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->setAid(I)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->setParam1(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->setParam2(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->setParam3(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/idm/service/iot/TestService;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService$Action;-><init>(ILcom/xiaomi/idm/api/IDMService;)V

    .line 4
    invoke-static {p2}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    return-void
.end method


# virtual methods
.method public invoke()[B
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/idm/api/IDMService$Action;->service:Lcom/xiaomi/idm/api/IDMService;

    check-cast v1, Lcom/xiaomi/idm/service/iot/TestService;

    iget-object v2, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v2}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam1()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v3}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam2()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    invoke-virtual {v4}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->getParam3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaomi/idm/service/iot/TestService;->getSomeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;

    move-result-object v1
    :try_end_0
    .catch Lcom/xiaomi/idm/api/RmiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Lcom/xiaomi/idm/api/RmiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TestService"

    invoke-static {v3, v2, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;->parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    new-instance p1, Lcom/xiaomi/idm/api/RequestException;

    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE_IN_ACTION:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-direct {p1, v0}, Lcom/xiaomi/idm/api/RequestException;-><init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V

    throw p1
.end method

.method public bridge synthetic parseResponse([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;->parseResponse([B)Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeStringRes;

    move-result-object p1

    return-object p1
.end method

.method public toBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;->action:Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/TestServiceProto$GetSomeString;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method
