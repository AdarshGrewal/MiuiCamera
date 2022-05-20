.class public Lcom/xiaomi/asr/engine/record/AudioType;
.super Ljava/lang/Object;
.source "AudioType.java"

# interfaces
.implements Lcom/xiaomi/asr/engine/utils/JSONCompliant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/asr/engine/record/AudioType$Encoding;,
        Lcom/xiaomi/asr/engine/record/AudioType$Frequency;
    }
.end annotation


# static fields
.field public static final OPUS_NB:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final OPUS_WB:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final PCM_11k:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final PCM_16k:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final PCM_22k:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final PCM_44k:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final PCM_48k:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final PCM_8k:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final SPEEX_NB:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final SPEEX_WB:Lcom/xiaomi/asr/engine/record/AudioType;

.field public static final UNKNOWN:Lcom/xiaomi/asr/engine/record/AudioType;


# instance fields
.field public final encoding:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

.field public final frequency:I

.field public final sse:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const v2, 0xbb80

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->PCM_48k:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 2
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const v2, 0xac44

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->PCM_44k:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 3
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/16 v2, 0x5622

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->PCM_22k:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 4
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/16 v2, 0x3e80

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->PCM_16k:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 5
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/16 v3, 0x2b11

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->PCM_11k:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 6
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/16 v3, 0x1f40

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->PCM_8k:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 7
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->SPEEX:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->SPEEX_WB:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 8
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->SPEEX:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->SPEEX_NB:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 9
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->OPUS:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->OPUS_WB:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 10
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->OPUS:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->OPUS_NB:Lcom/xiaomi/asr/engine/record/AudioType;

    .line 11
    new-instance v0, Lcom/xiaomi/asr/engine/record/AudioType;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->UNKNOWN:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    sput-object v0, Lcom/xiaomi/asr/engine/record/AudioType;->UNKNOWN:Lcom/xiaomi/asr/engine/record/AudioType;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I[B)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/xiaomi/asr/engine/record/AudioType;->frequency:I

    .line 4
    iput-object p1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->encoding:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/asr/engine/record/AudioType;->sse:[B

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/asr/engine/record/AudioType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "freq"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "enc"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->values()[Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    new-instance p0, Lcom/xiaomi/asr/engine/record/AudioType;

    invoke-direct {p0, v4, v0}, Lcom/xiaomi/asr/engine/record/AudioType;-><init>(Lcom/xiaomi/asr/engine/record/AudioType$Encoding;I)V

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' not valid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    const-class v1, Lcom/xiaomi/asr/engine/record/AudioType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lcom/xiaomi/asr/engine/record/AudioType;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->encoding:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    iget-object v2, p1, Lcom/xiaomi/asr/engine/record/AudioType;->encoding:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    if-eq v1, v2, :cond_3

    return v0

    .line 4
    :cond_3
    iget v1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->frequency:I

    iget v2, p1, Lcom/xiaomi/asr/engine/record/AudioType;->frequency:I

    if-eq v1, v2, :cond_4

    return v0

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/AudioType;->sse:[B

    iget-object p1, p1, Lcom/xiaomi/asr/engine/record/AudioType;->sse:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getDuration(I)I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/AudioType;->encoding:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    sget-object v1, Lcom/xiaomi/asr/engine/record/AudioType$Encoding;->PCM_16:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    if-ne v0, v1, :cond_0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 3
    iget p1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->frequency:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to detect duration for encoding "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/AudioType;->encoding:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioType"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getDuration([S)I
    .locals 0

    .line 1
    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/asr/engine/record/AudioType;->getDuration(I)I

    move-result p1

    return p1
.end method

.method public getSampleCount(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/asr/engine/record/AudioType;->frequency:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/AudioType;->encoding:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->frequency:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->sse:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioType [frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->encoding:Lcom/xiaomi/asr/engine/record/AudioType$Encoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/AudioType;->sse:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
