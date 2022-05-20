.class public final enum Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;
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
    name = "SetEventCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_CLIENT_NOT_REGISTERED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_CONCURRENT_ERROR:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_ERR_CLIENT_NOT_SUBSCRIBED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_ERR_NETWORK_UNREACHABLE:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_ERR_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_ERR_OUT_OF_MEMORY:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_LOCAL_SERVICE_NOT_AVAILABLE:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum EVENT_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

.field public static final enum SERVICE_NOT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/4 v1, 0x0

    const-string v2, "EVENT_SUCCEED"

    const-string v3, "Event sub/unSub success"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 2
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/4 v2, 0x1

    const-string v3, "EVENT_ERR_SERVICE_NOT_FOUND"

    const/4 v4, -0x1

    const-string v5, "Event Service not found"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 3
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/4 v3, 0x2

    const-string v4, "EVENT_ERR_NETWORK_UNREACHABLE"

    const/4 v5, -0x2

    const-string v6, "Event net work unreachable"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_NETWORK_UNREACHABLE:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 4
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/4 v4, 0x3

    const-string v5, "SERVICE_NOT_CONNECTED"

    const/4 v6, -0x3

    const-string v7, "Event service not connected"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->SERVICE_NOT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 5
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/4 v5, 0x4

    const-string v6, "EVENT_ERR_NOT_FOUND"

    const/4 v7, -0x4

    const-string v8, "Event not found"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 6
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/4 v6, 0x5

    const-string v7, "EVENT_ERR_CLIENT_NOT_SUBSCRIBED"

    const/4 v8, -0x5

    const-string v9, "Event not subscribe"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_CLIENT_NOT_SUBSCRIBED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 7
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/4 v7, 0x6

    const-string v8, "EVENT_LOCAL_SERVICE_NOT_AVAILABLE"

    const/4 v9, -0x6

    const-string v10, "Event local mi_connect_service not available"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_LOCAL_SERVICE_NOT_AVAILABLE:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 8
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/4 v8, 0x7

    const-string v9, "EVENT_CLIENT_NOT_REGISTERED"

    const/16 v10, -0xf

    const-string v11, "Event Client not registered"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_CLIENT_NOT_REGISTERED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 9
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/16 v9, 0x8

    const-string v10, "EVENT_CONCURRENT_ERROR"

    const/16 v11, -0x10

    const-string v12, "Event concurrent error"

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_CONCURRENT_ERROR:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 10
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/16 v10, 0x9

    const-string v11, "EVENT_ERR_OUT_OF_MEMORY"

    const/16 v12, -0x11

    const-string v13, "Malloc failed"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_OUT_OF_MEMORY:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 11
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/16 v11, 0xa

    const-string v12, "EVENT_UNKNOWN"

    const/16 v13, -0x7cf

    const-string v14, "Unknown set event error"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    .line 12
    sget-object v13, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_SUCCEED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v13, v12, v1

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_NETWORK_UNREACHABLE:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v3

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->SERVICE_NOT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v4

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v5

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_CLIENT_NOT_SUBSCRIBED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v6

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_LOCAL_SERVICE_NOT_AVAILABLE:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v7

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_CLIENT_NOT_REGISTERED:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v8

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_CONCURRENT_ERROR:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v9

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_ERR_OUT_OF_MEMORY:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

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
    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->code:I

    .line 3
    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->EVENT_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    return-object p0
.end method

.method public static getResponseMsg(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget v5, v4, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->code:I

    if-ne v5, p0, :cond_0

    .line 3
    iget-object p0, v4, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetEventCode response code: Unknown response code: ["

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

    const-string v1, "SetEventCode response code: unKnown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;->msg:Ljava/lang/String;

    return-object v0
.end method
