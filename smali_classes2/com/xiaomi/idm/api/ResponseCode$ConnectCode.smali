.class public final enum Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;
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
    name = "ConnectCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;",
        ">;",
        "Lcom/xiaomi/idm/api/ResponseCode;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum COMMUNICATION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_DISCONNECT:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_ENDPOINT_NOT_PAIRED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_ERR_ILLEGAL_PARAMETER:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_INVITED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_LOCAL_REJECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_PHYSICAL_LINK_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_REMOTE_REJECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_TO_BE_CONFIRM:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_WLAN_SERVER_CREATE_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_WLAN_SERVER_STARTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_STAT_WLAN_SERVER_STOPPED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum CONN_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum ERROR_CODE_COMMTYPE_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum PHYSICAL_LINK_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum REMOTE_CLIENT_NOT_EXIST:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum SA_NOT_VERIFIED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum SA_VERIFIED_FAILED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum SA_VERIFIED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum SERVER_NOT_EXIST:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum SERVER_OCCUPIED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

.field public static final enum SERVICE_INCOMPATIBLE:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v1, 0x0

    const-string v2, "CONN_STAT_CONNECTED"

    const-string v3, "Service connected"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 2
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v2, 0x1

    const/16 v3, 0xd

    const-string v4, "CONN_STAT_TO_BE_CONFIRM"

    const-string v5, "Connect service to be confirmed"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_TO_BE_CONFIRM:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 3
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v4, 0x2

    const-string v5, "CONN_STAT_REMOTE_REJECTED"

    const/16 v6, -0x14

    const-string v7, "Remote reject to connect"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_REMOTE_REJECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 4
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v5, 0x3

    const/4 v6, 0x7

    const-string v7, "CONN_STAT_LOCAL_REJECTED"

    const-string v8, "Local reject to connect"

    invoke-direct {v0, v7, v5, v6, v8}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_LOCAL_REJECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 5
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v7, 0x4

    const/16 v8, 0x8

    const-string v9, "CONN_STAT_DISCONNECT"

    const-string v10, "Service disconnected"

    invoke-direct {v0, v9, v7, v8, v10}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_DISCONNECT:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 6
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v9, 0x5

    const/16 v10, 0xe

    const-string v11, "CONN_STAT_INVITED"

    const-string v12, "Service invited"

    invoke-direct {v0, v11, v9, v10, v12}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_INVITED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 7
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v11, 0x6

    const/16 v12, 0xf

    const-string v13, "CONN_STAT_PHYSICAL_LINK_CONNECTED"

    const-string v14, "Physical link connected"

    invoke-direct {v0, v13, v11, v12, v14}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_PHYSICAL_LINK_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 8
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v13, 0x12

    const-string v14, "CONN_STAT_WLAN_SERVER_STARTED"

    const-string v15, "WLAN server started"

    invoke-direct {v0, v14, v6, v13, v15}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_WLAN_SERVER_STARTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 9
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v14, 0x13

    const-string v15, "CONN_STAT_WLAN_SERVER_STOPPED"

    const-string v6, "WLAN server stopped"

    invoke-direct {v0, v15, v8, v14, v6}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_WLAN_SERVER_STOPPED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 10
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v6, 0x9

    const-string v15, "CONN_STAT_ERR_SERVICE_NOT_FOUND"

    const/16 v8, -0xe

    const-string v11, "Error: Service not found"

    invoke-direct {v0, v15, v6, v8, v11}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 11
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v8, 0xa

    const-string v11, "CONN_STAT_ERR_ILLEGAL_PARAMETER"

    const/4 v15, -0x2

    const-string v6, "Error: Illegal parameter"

    invoke-direct {v0, v11, v8, v15, v6}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_ERR_ILLEGAL_PARAMETER:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 12
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v6, 0xb

    const-string v11, "SERVICE_INCOMPATIBLE"

    const/16 v15, -0x10

    const-string v8, "Error: Service incompatible"

    invoke-direct {v0, v11, v6, v15, v8}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SERVICE_INCOMPATIBLE:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 13
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v8, 0xc

    const-string v11, "SERVER_OCCUPIED"

    const/16 v15, -0x11

    const-string v6, "Error: Server occupied"

    invoke-direct {v0, v11, v8, v15, v6}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SERVER_OCCUPIED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 14
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const-string v6, "SERVER_NOT_EXIST"

    const/16 v11, -0x13

    const-string v15, "Error: Sever not exist"

    invoke-direct {v0, v6, v3, v11, v15}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SERVER_NOT_EXIST:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 15
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const-string v6, "COMMUNICATION_ERROR"

    const/16 v11, -0x15

    const-string v15, "Error: Communication Error"

    invoke-direct {v0, v6, v10, v11, v15}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->COMMUNICATION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 16
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const-string v6, "ERROR_CODE_COMMTYPE_NOT_SUPPORTED"

    const/16 v11, -0x1b

    const-string v15, "comm type not supported"

    invoke-direct {v0, v6, v12, v11, v15}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->ERROR_CODE_COMMTYPE_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 17
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v6, 0x10

    const-string v11, "PHYSICAL_LINK_ERROR"

    const/16 v15, -0x81

    const-string v12, "Error: Physical link error"

    invoke-direct {v0, v11, v6, v15, v12}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->PHYSICAL_LINK_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 18
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v11, 0x11

    const-string v12, "REMOTE_CLIENT_NOT_EXIST"

    const/16 v15, -0x16

    const-string v6, "Error: Remote client not exist"

    invoke-direct {v0, v12, v11, v15, v6}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->REMOTE_CLIENT_NOT_EXIST:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 19
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const-string v6, "SA_NOT_VERIFIED"

    const/16 v12, -0x7e

    const-string v15, "Error: Same account not verified"

    invoke-direct {v0, v6, v13, v12, v15}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SA_NOT_VERIFIED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 20
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const-string v6, "SA_VERIFIED_UNKNOWN"

    const/16 v12, -0x7f

    const-string v15, "Error: Same account unknown"

    invoke-direct {v0, v6, v14, v12, v15}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SA_VERIFIED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 21
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v6, 0x14

    const-string v12, "SA_VERIFIED_FAILED"

    const/16 v15, -0x80

    const-string v14, "Error: Not same account"

    invoke-direct {v0, v12, v6, v15, v14}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SA_VERIFIED_FAILED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 22
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v12, 0x15

    const-string v14, "CONN_STAT_ENDPOINT_NOT_PAIRED"

    const/16 v15, -0x83

    const-string v6, "Error: Endpoint not paired"

    invoke-direct {v0, v14, v12, v15, v6}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_ENDPOINT_NOT_PAIRED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 23
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const-string v6, "CONN_STAT_WLAN_SERVER_CREATE_ERROR"

    const/16 v14, 0x16

    const/16 v15, -0x84

    const-string v12, "Error: WLAN server create error"

    invoke-direct {v0, v6, v14, v15, v12}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_WLAN_SERVER_CREATE_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 24
    new-instance v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const-string v6, "CONN_UNKNOWN"

    const/16 v12, 0x17

    const/16 v14, -0x270f

    const-string v15, "Error: Unknown connect error"

    invoke-direct {v0, v6, v12, v14, v15}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v6, 0x18

    new-array v6, v6, [Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    .line 25
    sget-object v12, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v12, v6, v1

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_TO_BE_CONFIRM:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_REMOTE_REJECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v4

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_LOCAL_REJECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v5

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_DISCONNECT:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v7

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_INVITED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v9

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_PHYSICAL_LINK_CONNECTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v2, 0x6

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_WLAN_SERVER_STARTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/4 v2, 0x7

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_WLAN_SERVER_STOPPED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0x8

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_ERR_SERVICE_NOT_FOUND:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0x9

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_ERR_ILLEGAL_PARAMETER:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0xa

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SERVICE_INCOMPATIBLE:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0xb

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SERVER_OCCUPIED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v8

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SERVER_NOT_EXIST:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v3

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->COMMUNICATION_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v10

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->ERROR_CODE_COMMTYPE_NOT_SUPPORTED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0xf

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->PHYSICAL_LINK_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0x10

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->REMOTE_CLIENT_NOT_EXIST:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v11

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SA_NOT_VERIFIED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    aput-object v1, v6, v13

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SA_VERIFIED_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0x13

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->SA_VERIFIED_FAILED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0x14

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_ENDPOINT_NOT_PAIRED:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0x15

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_STAT_WLAN_SERVER_CREATE_ERROR:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    const/16 v2, 0x16

    aput-object v1, v6, v2

    const/16 v1, 0x17

    aput-object v0, v6, v1

    sput-object v6, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

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
    iput p3, p0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->code:I

    .line 3
    iput-object p4, p0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static fromCode(I)Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->CONN_UNKNOWN:Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    return-object p0
.end method

.method public static getResponseMsg(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->values()[Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget v5, v4, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->code:I

    if-ne v5, p0, :cond_0

    .line 3
    iget-object p0, v4, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectCode response code: Unknown response code: ["

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

    const-string v1, "ConnectCode response code: unKnown response code: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->$VALUES:[Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;->msg:Ljava/lang/String;

    return-object v0
.end method
