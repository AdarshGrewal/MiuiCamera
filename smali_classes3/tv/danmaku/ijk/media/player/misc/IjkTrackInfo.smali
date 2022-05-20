.class public Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;
.super Ljava/lang/Object;
.source "IjkTrackInfo.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/ITrackInfo;


# instance fields
.field public mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

.field public mTrackType:I


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mTrackType:I

    .line 3
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    return-void
.end method


# virtual methods
.method public getFormat()Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    .locals 2

    .line 1
    new-instance v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;)V

    return-object v0
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mTrackType:I

    const/4 v2, 0x1

    const-string v3, ", "

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "SUBTITLE"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "TIMEDTEXT"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "AUDIO"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getCodecShortNameInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getBitrateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getSampleRateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "VIDEO"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getCodecShortNameInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getBitrateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getResolutionInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mLanguage:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "und"

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mTrackType:I

    return v0
.end method

.method public setMediaMeta(Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mStreamMeta:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    return-void
.end method

.method public setTrackType(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->mTrackType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;->getInfoInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
