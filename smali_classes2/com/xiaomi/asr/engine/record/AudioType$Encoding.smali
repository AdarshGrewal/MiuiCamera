.class public final enum Lcom/xiaomi/asr/engine/record/AudioType$Encoding;
.super Ljava/lang/Enum;
.source "AudioType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/record/AudioType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/asr/engine/record/AudioType$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

.field public static final enum OPUS:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

.field public static final enum PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

.field public static final enum SPEEX:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

.field public static final enum UNKNOWN:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/4 v1, 0x0

    const-string v2, "PCM_16"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/4 v2, 0x1

    const-string v3, "SPEEX"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->SPEEX:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/4 v3, 0x2

    const-string v4, "OPUS"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->OPUS:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->UNKNOWN:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    sget-object v6, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    aput-object v6, v5, v1

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->SPEEX:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    aput-object v1, v5, v2

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->OPUS:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->$VALUES:[Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/asr/engine/record/AudioType$Encoding;
    .locals 1

    const-class v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/asr/engine/record/AudioType$Encoding;
    .locals 1

    sget-object v0, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->$VALUES:[Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    invoke-virtual {v0}, [Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    return-object v0
.end method
