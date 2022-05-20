.class public final enum Lcom/xiaomi/idm/api/ResponseCode$RequestCode;
.super Ljava/lang/Enum;
.source "ResponseCode.java"

# interfaces
.implements Lcom/xiaomi/idm/api/ResponseCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/ResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$RequestCode;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_ACTION_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_CLIENT_DESTROYED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_INVALID_SERVICE_ID:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_REMOTE_UNREACHABLE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_REQUEST_NULL:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_REQUEST_PARSE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_REQUEST_RPC:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_RESPONSE_NULL:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_RESPONSE_PARSE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_RESPONSE_PARSE_IN_ACTION:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_RMI_THREAD_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_RMI_TIME_OUT:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_SERVICE_DISCONNECTING:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_SERVICE_LOST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_SERVICE_NOT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum READY_FOR_LOCAL_REQUEST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum READY_FOR_RPC_REQUEST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum REQUEST_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

.field public static final enum REQ_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/4 v1, 0x0

    const-string v2, "REQUEST_SUCCEED"

    const-string v3, "RequestCode succeed"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->REQUEST_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 2
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/4 v2, 0x1

    const-string v3, "READY_FOR_LOCAL_REQUEST"

    const-string v4, "Ready for local request"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->READY_FOR_LOCAL_REQUEST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 3
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/4 v3, 0x2

    const-string v4, "READY_FOR_RPC_REQUEST"

    const-string v5, "Ready for RPC request"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->READY_FOR_RPC_REQUEST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 4
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/4 v4, 0x3

    const-string v5, "ERR_REQUEST_NULL"

    const/4 v6, -0x1

    const-string v7, "Error when request bytes is null"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_REQUEST_NULL:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 5
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/4 v5, 0x4

    const-string v6, "ERR_REQUEST_PARSE"

    const/4 v7, -0x2

    const-string v8, "Error when parse request bytes to IDMRequest proto"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_REQUEST_PARSE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 6
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/4 v6, 0x5

    const-string v7, "ERR_RESPONSE_NULL"

    const/4 v8, -0x3

    const-string v9, "Response bytes null when do request"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_NULL:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 7
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/4 v7, 0x6

    const-string v8, "ERR_RESPONSE_PARSE"

    const/4 v9, -0x4

    const-string v10, "Response parse error when do request"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 8
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/4 v8, 0x7

    const-string v9, "ERR_INVALID_SERVICE_ID"

    const/4 v10, -0x5

    const-string v11, "Service id is illegal"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_INVALID_SERVICE_ID:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 9
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v9, 0x8

    const-string v10, "ERR_SERVICE_NOT_FOUND"

    const/4 v11, -0x6

    const-string v12, "Service not found"

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 10
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v10, 0x9

    const-string v11, "ERR_ACTION_NOT_FOUND"

    const/4 v12, -0x7

    const-string v13, "Action not found"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_ACTION_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 11
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v11, 0xa

    const-string v12, "ERR_RESPONSE_PARSE_IN_ACTION"

    const/4 v13, -0x8

    const-string v14, "Response parse error in action"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE_IN_ACTION:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 12
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v12, 0xb

    const-string v13, "ERR_RMI_TIME_OUT"

    const/16 v14, -0x9

    const-string v15, "RMI call time out"

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_TIME_OUT:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 13
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v13, 0xc

    const-string v14, "ERR_RMI_THREAD_INTERRUPTED"

    const/16 v15, -0xa

    const-string v12, "Calling thread is interrupted"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_THREAD_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 14
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v12, 0xd

    const-string v14, "ERR_RMI_CANCELED"

    const/16 v15, -0xb

    const-string v13, "Call is canceled"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 15
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v13, 0xe

    const-string v14, "ERR_SERVICE_LOST"

    const/16 v15, -0xc

    const-string v12, "Service is lost"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_LOST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 16
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v12, 0xf

    const-string v14, "ERR_CLIENT_DESTROYED"

    const/16 v15, -0xd

    const-string v13, "Client is destroyed"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_CLIENT_DESTROYED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 17
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v13, 0x10

    const-string v14, "ERR_REMOTE_UNREACHABLE"

    const/16 v15, -0xe

    const-string v12, "RPC remote unreachable"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_REMOTE_UNREACHABLE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 18
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v12, 0x11

    const-string v14, "ERR_SERVICE_NOT_CONNECTED"

    const/16 v15, -0xf

    const-string v13, "Service not connected"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_NOT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 19
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v13, 0x12

    const-string v14, "ERR_SERVICE_DISCONNECTING"

    const/16 v15, -0x10

    const-string v12, "Service disconnected when requesting"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_DISCONNECTING:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 20
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v12, 0x13

    const-string v14, "ERR_REQUEST_RPC"

    const/16 v15, -0x11

    const-string v13, "Request failed when call RPC service"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_REQUEST_RPC:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 21
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v13, 0x14

    const-string v14, "REQ_UNKNOWN"

    const/16 v15, -0x270f

    const-string v12, "Unknown request error"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->REQ_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v12, 0x15

    new-array v12, v12, [Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    .line 22
    sget-object v14, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->REQUEST_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v14, v12, v1

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->READY_FOR_LOCAL_REQUEST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->READY_FOR_RPC_REQUEST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v3

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_REQUEST_NULL:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v4

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_REQUEST_PARSE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v5

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_NULL:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v6

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v7

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_INVALID_SERVICE_ID:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v8

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v9

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_ACTION_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v10

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RESPONSE_PARSE_IN_ACTION:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    aput-object v1, v12, v11

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_TIME_OUT:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0xb

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_THREAD_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0xc

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_RMI_CANCELED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0xd

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_LOST:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0xe

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_CLIENT_DESTROYED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0xf

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_REMOTE_UNREACHABLE:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0x10

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_NOT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0x11

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_SERVICE_DISCONNECTING:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0x12

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->ERR_REQUEST_RPC:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    const/16 v2, 0x13

    aput-object v1, v12, v2

    aput-object v0, v12, v13

    sput-object v12, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->code:I

    .line 3
    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$RequestCode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->REQ_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    return-object p0
.end method

.method public static getResponseMsg(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget v5, v4, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->code:I

    if-ne v5, p0, :cond_0

    .line 3
    iget-object p0, v4, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestCode response code: Unknown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] need to define here"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ResponseCode"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestCode response code: unKnown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$RequestCode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$RequestCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$RequestCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->msg:Ljava/lang/String;

    return-object v0
.end method
