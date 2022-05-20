.class public abstract Lcom/xiaomi/idm/service/iot/InputMethodService;
.super Lcom/xiaomi/idm/service/iot/PropertyService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/InputMethodService$InputPropertyCommand;,
        Lcom/xiaomi/idm/service/iot/InputMethodService$Events;,
        Lcom/xiaomi/idm/service/iot/InputMethodService$Actions;,
        Lcom/xiaomi/idm/service/iot/InputMethodService$Skeleton;,
        Lcom/xiaomi/idm/service/iot/InputMethodService$Stub;
    }
.end annotation


# static fields
.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:aiot-spec-v3:service:input:00000001:1"

.field public static final TAG:Ljava/lang/String; = "InputMethodService"


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "urn:aiot-spec-v3:service:input:00000001:1"

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/idm/service/iot/PropertyService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/PropertyService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public request(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getAid()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;->getRequest()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :try_start_0
    new-instance v3, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;-><init>(Lcom/xiaomi/idm/service/iot/PropertyService;[B)V

    goto :goto_1

    .line 4
    :cond_2
    new-instance v3, Lcom/xiaomi/idm/service/iot/InputMethodService$Actions$StartInputBox;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/idm/service/iot/InputMethodService$Actions$StartInputBox;-><init>(Lcom/xiaomi/idm/service/iot/InputMethodService;[B)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputMethodService"

    invoke-static {v4, v3, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_3

    .line 6
    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_ACTION_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v1}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result v1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_ACTION_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v4}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " aid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v1, v0, p1, v2}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(ILjava/lang/String;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {v3}, Lcom/xiaomi/idm/api/IDMService$Action;->invoke()[B

    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lcom/xiaomi/idm/utils/ResponseHelper;->buildResponse(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;[B)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMResponse;

    move-result-object p1

    return-object p1
.end method

.method public abstract startInputBox(Ljava/lang/String;IILjava/lang/String;II)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputMethodResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/idm/api/RmiException;
        }
    .end annotation
.end method
