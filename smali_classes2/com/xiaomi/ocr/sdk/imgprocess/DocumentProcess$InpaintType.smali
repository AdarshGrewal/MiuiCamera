.class public final enum Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;
.super Ljava/lang/Enum;
.source "DocumentProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InpaintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

.field public static final enum DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

.field public static final enum OPENCV:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;->DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    .line 2
    new-instance v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    const/4 v2, 0x1

    const-string v3, "OPENCV"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;->OPENCV:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    .line 3
    sget-object v4, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;->DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;->$VALUES:[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    invoke-virtual {v0}, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;

    return-object v0
.end method
