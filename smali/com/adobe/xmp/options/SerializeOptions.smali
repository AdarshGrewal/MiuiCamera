.class public final Lcom/adobe/xmp/options/SerializeOptions;
.super Lcom/adobe/xmp/options/Options;
.source "SerializeOptions.java"


# static fields
.field public static final ENCODE_UTF16BE:I = 0x2

.field public static final ENCODE_UTF16LE:I = 0x3

.field public static final ENCODE_UTF8:I = 0x0

.field public static final ENCODING_MASK:I = 0x3

.field public static final EXACT_PACKET_LENGTH:I = 0x200

.field public static final INCLUDE_THUMBNAIL_PAD:I = 0x100

.field public static final LITTLEENDIAN_BIT:I = 0x1

.field public static final OMIT_PACKET_WRAPPER:I = 0x10

.field public static final READONLY_PACKET:I = 0x20

.field public static final SORT:I = 0x1000

.field public static final USE_COMPACT_FORMAT:I = 0x40

.field public static final UTF16_BIT:I = 0x2


# instance fields
.field public baseIndent:I

.field public indent:Ljava/lang/String;

.field public newline:Ljava/lang/String;

.field public omitVersionAttribute:Z

.field public padding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    const/16 v0, 0x800

    .line 2
    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    const-string v0, "\n"

    .line 3
    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string v0, "  "

    .line 4
    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 6
    iput-boolean v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    const/16 p1, 0x800

    .line 8
    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    const-string p1, "\n"

    .line 9
    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string p1, "  "

    .line 10
    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 12
    iput-boolean p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>(I)V

    .line 2
    iget v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setBaseIndent(I)Lcom/adobe/xmp/options/SerializeOptions;

    .line 3
    iget-object v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setIndent(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;

    .line 4
    iget-object v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setNewline(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;

    .line 5
    iget v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setPadding(I)Lcom/adobe/xmp/options/SerializeOptions;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public defineOptionName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "NORMALIZED"

    return-object p1

    :cond_1
    const-string p1, "EXACT_PACKET_LENGTH"

    return-object p1

    :cond_2
    const-string p1, "INCLUDE_THUMBNAIL_PAD"

    return-object p1

    :cond_3
    const-string p1, "USE_COMPACT_FORMAT"

    return-object p1

    :cond_4
    const-string p1, "READONLY_PACKET"

    return-object p1

    :cond_5
    const-string p1, "OMIT_PACKET_WRAPPER"

    return-object p1
.end method

.method public getBaseIndent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    return v0
.end method

.method public getEncodeUTF16BE()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEncodeUTF16LE()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTF-16BE"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UTF-16LE"

    return-object v0

    :cond_1
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getExactPacketLength()Z
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIncludeThumbnailPad()Z
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitPacketWrapper()Z
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getOmitVersionAttribute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    return v0
.end method

.method public getReadOnlyPacket()Z
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getSort()Z
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getUseCompactFormat()Z
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getValidOptions()I
    .locals 1

    const/16 v0, 0x1370

    return v0
.end method

.method public setBaseIndent(I)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    return-object p0
.end method

.method public setEncodeUTF16BE(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public setEncodeUTF16LE(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public setExactPacketLength(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public setIncludeThumbnailPad(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public setNewline(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object p0
.end method

.method public setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public setPadding(I)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    return-object p0
.end method

.method public setReadOnlyPacket(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public setSort(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method

.method public setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    return-object p0
.end method
