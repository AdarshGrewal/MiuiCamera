.class public final enum Lcom/android/camera/network/net/base/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/network/net/base/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/network/net/base/ErrorCode;

.field public static final enum BODY_EMPTY:Lcom/android/camera/network/net/base/ErrorCode;

.field public static final enum DATA_BIND_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

.field public static final enum HANDLE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

.field public static final enum NETWORK_NOT_CONNECTED:Lcom/android/camera/network/net/base/ErrorCode;

.field public static final enum NET_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

.field public static final enum PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

.field public static final enum SUCCESS:Lcom/android/camera/network/net/base/ErrorCode;


# instance fields
.field public CODE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/camera/network/net/base/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/network/net/base/ErrorCode;->SUCCESS:Lcom/android/camera/network/net/base/ErrorCode;

    .line 2
    new-instance v0, Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v2, 0x1

    const-string v3, "PARSE_ERROR"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4}, Lcom/android/camera/network/net/base/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    .line 3
    new-instance v0, Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v3, 0x2

    const-string v4, "NET_ERROR"

    const/4 v5, -0x2

    invoke-direct {v0, v4, v3, v5}, Lcom/android/camera/network/net/base/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/network/net/base/ErrorCode;->NET_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    .line 4
    new-instance v0, Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v4, 0x3

    const-string v5, "HANDLE_ERROR"

    const/4 v6, -0x3

    invoke-direct {v0, v5, v4, v6}, Lcom/android/camera/network/net/base/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/network/net/base/ErrorCode;->HANDLE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    .line 5
    new-instance v0, Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v5, 0x4

    const-string v6, "BODY_EMPTY"

    const/4 v7, -0x4

    invoke-direct {v0, v6, v5, v7}, Lcom/android/camera/network/net/base/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/network/net/base/ErrorCode;->BODY_EMPTY:Lcom/android/camera/network/net/base/ErrorCode;

    .line 6
    new-instance v0, Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v6, 0x5

    const-string v7, "DATA_BIND_ERROR"

    const/4 v8, -0x5

    invoke-direct {v0, v7, v6, v8}, Lcom/android/camera/network/net/base/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/network/net/base/ErrorCode;->DATA_BIND_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    .line 7
    new-instance v0, Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v7, 0x6

    const-string v8, "SERVER_ERROR"

    const/4 v9, -0x6

    invoke-direct {v0, v8, v7, v9}, Lcom/android/camera/network/net/base/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/network/net/base/ErrorCode;->SERVER_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    .line 8
    new-instance v0, Lcom/android/camera/network/net/base/ErrorCode;

    const/4 v8, 0x7

    const-string v9, "NETWORK_NOT_CONNECTED"

    const/4 v10, -0x7

    invoke-direct {v0, v9, v8, v10}, Lcom/android/camera/network/net/base/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/network/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/android/camera/network/net/base/ErrorCode;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/android/camera/network/net/base/ErrorCode;

    .line 9
    sget-object v10, Lcom/android/camera/network/net/base/ErrorCode;->SUCCESS:Lcom/android/camera/network/net/base/ErrorCode;

    aput-object v10, v9, v1

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    aput-object v1, v9, v2

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->NET_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    aput-object v1, v9, v3

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->HANDLE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    aput-object v1, v9, v4

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->BODY_EMPTY:Lcom/android/camera/network/net/base/ErrorCode;

    aput-object v1, v9, v5

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->DATA_BIND_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    aput-object v1, v9, v6

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->SERVER_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/android/camera/network/net/base/ErrorCode;->$VALUES:[Lcom/android/camera/network/net/base/ErrorCode;

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
    iput p3, p0, Lcom/android/camera/network/net/base/ErrorCode;->CODE:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/network/net/base/ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/network/net/base/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/network/net/base/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/network/net/base/ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->$VALUES:[Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {v0}, [Lcom/android/camera/network/net/base/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/network/net/base/ErrorCode;

    return-object v0
.end method
