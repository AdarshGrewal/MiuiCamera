.class public final enum Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
.super Ljava/lang/Enum;
.source "ImageReaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageReaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum DEPTH:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum JPEG:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum ORIGINAL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum RAW:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum VIDEOSNAP:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

.field public static final enum YUV:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v1, 0x0

    const-string v2, "ORIGINAL"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->ORIGINAL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    .line 2
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v2, 0x1

    const-string v3, "EFFECT"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    .line 3
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v3, 0x2

    const-string v4, "IMAGEPOOL"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    .line 4
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v4, 0x3

    const-string v5, "YUV"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->YUV:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    .line 5
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v5, 0x4

    const-string v6, "RAW"

    invoke-direct {v0, v6, v5}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->RAW:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    .line 6
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v6, 0x5

    const-string v7, "DEPTH"

    invoke-direct {v0, v7, v6}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->DEPTH:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    .line 7
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v7, 0x6

    const-string v8, "VIDEOSNAP"

    invoke-direct {v0, v8, v7}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->VIDEOSNAP:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    .line 8
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/4 v8, 0x7

    const-string v9, "JPEG"

    invoke-direct {v0, v9, v8}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->JPEG:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    .line 9
    sget-object v10, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->ORIGINAL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->EFFECT:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->YUV:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->RAW:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->DEPTH:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->VIDEOSNAP:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->$VALUES:[Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->$VALUES:[Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    invoke-virtual {v0}, [Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    return-object v0
.end method
