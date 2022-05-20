.class public final enum Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;
.super Ljava/lang/Enum;
.source "DocumentProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnhanceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum BIN:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum COLOR:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum DEMOIRE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum FILTER_ID_CARD:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum GRAY:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

.field public static final enum RAW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const/4 v1, 0x0

    const-string v2, "RAW"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->RAW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    .line 2
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const/4 v2, 0x1

    const-string v3, "COLOR"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->COLOR:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    .line 3
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const/4 v3, 0x2

    const-string v4, "BIN"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->BIN:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    .line 4
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const/4 v4, 0x3

    const-string v5, "GRAY"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->GRAY:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    .line 5
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const/4 v5, 0x4

    const-string v6, "FILTER_ID_CARD"

    invoke-direct {v0, v6, v5}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->FILTER_ID_CARD:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    .line 6
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const/4 v6, 0x5

    const-string v7, "DEMOIRE"

    invoke-direct {v0, v7, v6}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->DEMOIRE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    .line 7
    sget-object v8, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->RAW:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->COLOR:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->BIN:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->GRAY:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->FILTER_ID_CARD:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    invoke-virtual {v0}, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;

    return-object v0
.end method
