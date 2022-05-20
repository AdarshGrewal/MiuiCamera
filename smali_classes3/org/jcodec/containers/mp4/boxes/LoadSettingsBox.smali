.class public Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "LoadSettingsBox.java"


# instance fields
.field public defaultHints:I

.field public preloadDuration:I

.field public preloadFlags:I

.field public preloadStartTime:I


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "load"

    return-object v0
.end method


# virtual methods
.method public doWrite(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadStartTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadFlags:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->defaultHints:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getDefaultHints()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->defaultHints:I

    return v0
.end method

.method public getPreloadDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadDuration:I

    return v0
.end method

.method public getPreloadFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadFlags:I

    return v0
.end method

.method public getPreloadStartTime()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadStartTime:I

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadStartTime:I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadDuration:I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->preloadFlags:I

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/LoadSettingsBox;->defaultHints:I

    return-void
.end method
