.class public final enum Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;
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
    name = "DiscoveryCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum ALREADY_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum DISCOVERY_END:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum DISCOVERY_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum DISCOVERY_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum DISC_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum NOT_IN_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum START_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum START_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum STOP_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

.field public static final enum STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "START_DISCOVERY_SUCCESS"

    const-string v4, "Start Discovery SUCCESS"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 2
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/4 v3, 0x2

    const-string v4, "STOP_DISCOVERY_SUCCESS"

    const-string v5, "Stop Discovery SUCCESS"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 3
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/16 v4, 0xa

    const-string v5, "DISCOVERY_END"

    const-string v6, "Discovery END"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_END:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 4
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/4 v5, 0x3

    const-string v6, "ALREADY_DISCOVERY"

    const/4 v7, -0x6

    const-string v8, "Already In Discovery"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->ALREADY_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 5
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/4 v6, 0x4

    const-string v7, "START_DISCOVERY_ERROR"

    const/16 v8, -0x9

    const-string v9, "Start Discovery Error"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->START_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 6
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/4 v7, 0x5

    const-string v8, "STOP_DISCOVERY_ERROR"

    const/16 v9, -0xa

    const-string v10, "Stop Discovery Error"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 7
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/4 v8, 0x6

    const-string v9, "NOT_IN_DISCOVERY"

    const/16 v10, -0xd

    const-string v11, "Not In Discovery"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->NOT_IN_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 8
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/4 v9, 0x7

    const-string v10, "DISCOVERY_INTERRUPTED"

    const/16 v11, -0x8b

    const-string v12, "Discovery is interrupted"

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 9
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/16 v10, 0x8

    const-string v11, "DISCOVERY_PERMISSION_DENIED"

    const/16 v12, -0x2328

    const-string v13, "Discovery is permission denied"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 10
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/16 v11, 0x9

    const-string v12, "ERROR_CODE_START_DISC_NOT_SUPPORTED"

    const/16 v13, -0x1a

    const-string v14, "disc type not supported"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 11
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const-string v12, "DISC_UNKNOWN"

    const/16 v13, -0x270f

    const-string v14, "Unknown discovery error"

    invoke-direct {v0, v12, v4, v13, v14}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISC_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    .line 12
    sget-object v13, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->START_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v13, v12, v1

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->STOP_DISCOVERY_SUCCESS:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_END:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v3

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->ALREADY_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v5

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->START_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v6

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->STOP_DISCOVERY_ERROR:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v7

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->NOT_IN_DISCOVERY:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v8

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_INTERRUPTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v9

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISCOVERY_PERMISSION_DENIED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v10

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->ERROR_CODE_START_DISC_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    aput-object v1, v12, v11

    aput-object v0, v12, v4

    sput-object v12, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

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
    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->code:I

    .line 3
    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->DISC_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    return-object p0
.end method

.method public static getResponseMsg(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget v5, v4, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->code:I

    if-ne v5, p0, :cond_0

    .line 3
    iget-object p0, v4, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveryCode response code: Unknown response code: ["

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

    const-string v1, "DiscoveryCode response code: unKnown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;->msg:Ljava/lang/String;

    return-object v0
.end method
