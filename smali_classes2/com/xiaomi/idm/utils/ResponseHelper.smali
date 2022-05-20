.class public Lcom/xiaomi/idm/utils/ResponseHelper;
.super Ljava/lang/Object;
.source "ResponseHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponse(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0
.end method

.method public static buildResponse(ILcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 1

    .line 4
    invoke-static {p0}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0
.end method

.method public static buildResponse(ILjava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, v0}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0
.end method

.method public static buildResponse(ILjava/lang/String;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p2, :cond_2

    move-object v2, v0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getUuid()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez p3, :cond_4

    const/4 p2, 0x0

    new-array p3, p2, [B

    .line 10
    :cond_4
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;->newBuilder()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->setCode(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->setMsg(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->setRequestId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;

    move-result-object p0

    .line 14
    invoke-virtual {p0, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->setUuid(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->setClientId(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;

    move-result-object p0

    .line 16
    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->setResponse(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    return-object p0
.end method

.method public static buildResponse(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0
.end method

.method public static buildResponse(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0
.end method

.method public static buildResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 2

    .line 6
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->REQUEST_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v0}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p0

    return-object p0
.end method
