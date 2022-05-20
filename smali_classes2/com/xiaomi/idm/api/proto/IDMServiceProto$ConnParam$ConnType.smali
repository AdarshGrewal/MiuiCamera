.class public final enum Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
.super Ljava/lang/Enum;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$ConnTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final enum BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final BLE_GATT_VALUE:I = 0x10

.field public static final enum BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final BT_GATT_VALUE:I = 0x8

.field public static final enum BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final BT_RFCOMM_VALUE:I = 0x4

.field public static final enum COAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final COAP_VALUE:I = 0x20

.field public static final enum IDB:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final IDB_VALUE:I = 0x80

.field public static final enum NFC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final NFC_VALUE:I = 0x40

.field public static final enum UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final UNKNOWN_VALUE:I = -0x1

.field public static final enum UNRECOGNIZED:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final enum WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WIFI_P2P_GC_VALUE:I = 0x1

.field public static final enum WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WIFI_P2P_GO_VALUE:I = 0x0

.field public static final enum WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WIFI_SOFTAP_VALUE:I = 0x2

.field public static final enum WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WIFI_STATION_VALUE:I = 0x3

.field public static final enum WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WLAN_GC_SOFTAP_VALUE:I = 0x400

.field public static final enum WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WLAN_P2P_VALUE:I = 0x100

.field public static final enum WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WLAN_SOFTAP_VALUE:I = 0x200

.field public static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v1, 0x0

    const-string v2, "WIFI_P2P_GO"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 2
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v2, 0x1

    const-string v3, "WIFI_P2P_GC"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 3
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v3, 0x2

    const-string v4, "WIFI_SOFTAP"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 4
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v4, 0x3

    const-string v5, "WIFI_STATION"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 5
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v5, 0x4

    const-string v6, "BT_RFCOMM"

    invoke-direct {v0, v6, v5, v5}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 6
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v6, 0x5

    const/16 v7, 0x8

    const-string v8, "BT_GATT"

    invoke-direct {v0, v8, v6, v7}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 7
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v8, 0x6

    const-string v9, "BLE_GATT"

    const/16 v10, 0x10

    invoke-direct {v0, v9, v8, v10}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 8
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v9, 0x7

    const-string v10, "COAP"

    const/16 v11, 0x20

    invoke-direct {v0, v10, v9, v11}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->COAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 9
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v10, "NFC"

    const/16 v11, 0x40

    invoke-direct {v0, v10, v7, v11}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->NFC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 10
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v10, 0x9

    const-string v11, "IDB"

    const/16 v12, 0x80

    invoke-direct {v0, v11, v10, v12}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->IDB:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 11
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v11, 0xa

    const-string v12, "WLAN_P2P"

    const/16 v13, 0x100

    invoke-direct {v0, v12, v11, v13}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 12
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v12, 0xb

    const-string v13, "WLAN_SOFTAP"

    const/16 v14, 0x200

    invoke-direct {v0, v13, v12, v14}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 13
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v13, 0xc

    const-string v14, "WLAN_GC_SOFTAP"

    const/16 v15, 0x400

    invoke-direct {v0, v14, v13, v15}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 14
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v14, -0x1

    const/16 v15, 0xd

    const-string v13, "UNKNOWN"

    invoke-direct {v0, v13, v15, v14}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 15
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v13, 0xe

    const-string v15, "UNRECOGNIZED"

    invoke-direct {v0, v15, v13, v14}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNRECOGNIZED:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 16
    sget-object v15, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v15, v14, v1

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->COAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->NFC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->IDB:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v13

    sput-object v14, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->$VALUES:[Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 17
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$1;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$1;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x10

    if-eq p0, v0, :cond_6

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-eq p0, v0, :cond_2

    const/16 v0, 0x200

    if-eq p0, v0, :cond_1

    const/16 v0, 0x400

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->IDB:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->NFC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->COAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 7
    :cond_6
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 8
    :cond_7
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 9
    :cond_8
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 10
    :cond_9
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 11
    :cond_a
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 12
    :cond_b
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 13
    :cond_c
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 14
    :cond_d
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$ConnTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->forNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->$VALUES:[Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNRECOGNIZED:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
