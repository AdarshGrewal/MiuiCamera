.class public Lcom/android/gallery3d/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final EXIF_HEADER:I = 0x45786966

.field public static final MAX_EXIF_SIZE:I = 0xffff

.field public static final STATE_FRAME_HEADER:I = 0x1

.field public static final STATE_JPEG_DATA:I = 0x2

.field public static final STATE_SOI:I = 0x0

.field public static final STREAMBUFFER_SIZE:I = 0x10000

.field public static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field public static final TAG_SIZE:S = 0xcs

.field public static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field public static final TIFF_HEADER:S = 0x2as

.field public static final TIFF_HEADER_SIZE:S = 0x8s

.field public static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field public mBuffer:Ljava/nio/ByteBuffer;

.field public mByteToCopy:I

.field public mByteToSkip:I

.field public mExifData:Lcom/android/gallery3d/exif/ExifData;

.field public final mInterface:Lcom/android/gallery3d/exif/ExifInterface;

.field public mSingleByteArray:[B

.field public mState:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 p1, 0x4

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 5
    iput-object p2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    return-void
.end method

.method private calculateAllOffset()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    const/16 v2, 0x8

    .line 2
    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 3
    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 4
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3, v2}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 6
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 9
    invoke-direct {p0, v4, v2}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 12
    invoke-direct {p0, v3, v2}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 15
    invoke-direct {p0, v3, v2}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 19
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v0

    .line 22
    new-array v0, v0, [J

    .line 23
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    int-to-long v4, v2

    .line 24
    aput-wide v4, v0, v1

    .line 25
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_4
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([J)Z

    :cond_5
    :goto_1
    return v2
.end method

.method private calculateOffsetOfIfd(Lcom/android/gallery3d/exif/IfdData;I)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 5
    invoke-virtual {v3, p2}, Lcom/android/gallery3d/exif/ExifTag;->setOffset(I)V

    .line 6
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v3

    add-int/2addr p2, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 3
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    const-string v3, "No definition for crucial exif tag: "

    if-eqz v2, :cond_10

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 6
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    new-instance v2, Lcom/android/gallery3d/exif/IfdData;

    invoke-direct {v2, v4}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 8
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 15
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 17
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    .line 19
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_6

    .line 20
    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 21
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 22
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 25
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 27
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 29
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    .line 30
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    goto/16 :goto_3

    .line 31
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_9
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v0, :cond_a

    .line 34
    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 35
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifData;->addIfdData(Lcom/android/gallery3d/exif/IfdData;)V

    .line 36
    :cond_a
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v2

    .line 37
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 38
    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mInterface:Lcom/android/gallery3d/exif/ExifInterface;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 39
    invoke-virtual {v5, v6}, Lcom/android/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 40
    new-array v2, v2, [J

    .line 41
    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 42
    iget-object v3, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 43
    :cond_b
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/exif/ExifTag;->setValue([J)Z

    .line 44
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 45
    invoke-virtual {v0, v5}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 46
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    .line 47
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 48
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    goto :goto_3

    .line 50
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v0, :cond_f

    .line 52
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    .line 53
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    .line 54
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    .line 55
    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 56
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    :cond_f
    :goto_3
    return-void

    .line 58
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_0

    move p4, p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p4
.end method

.method private stripNullValueTags(Lcom/android/gallery3d/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/exif/ExifTag;

    .line 4
    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/gallery3d/exif/ExifData;->removeTag(SI)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 3
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    :cond_2
    return-void
.end method

.method private writeExifData(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    const-string v1, "ExifOutputStream"

    if-nez v0, :cond_0

    const-string p1, "null exif data"

    .line 2
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifOutputStream;->stripNullValueTags(Lcom/android/gallery3d/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 5
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    const v4, 0xffff

    if-gt v2, v4, :cond_4

    .line 6
    new-instance v4, Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    iget-object v5, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v4, v5}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 7
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    if-eqz p1, :cond_1

    const-string p1, "writeExifDataForHeif"

    .line 8
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 9
    fill-array-data p1, :array_0

    .line 10
    invoke-virtual {v4, p1}, Ljava/io/FilterOutputStream;->write([B)V

    :cond_1
    const/16 p1, -0x1f

    .line 11
    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    int-to-short p1, v2

    .line 12
    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    const p1, 0x45786966

    .line 13
    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    const/4 p1, 0x0

    .line 14
    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 15
    iget-object p1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v1, :cond_2

    const/16 p1, 0x4d4d

    .line 16
    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_0

    :cond_2
    const/16 p1, 0x4949

    .line 17
    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    const/16 p1, 0x2a

    .line 19
    invoke-virtual {v4, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 20
    invoke-virtual {v4, v3}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 21
    invoke-direct {p0, v4}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeAllTags(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 22
    invoke-direct {p0, v4}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeThumbnail(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    .line 24
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_1

    :cond_3
    return-void

    .line 25
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Exif header is too large (>64Kb)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
    .end array-data
.end method

.method private writeIfd(Lcom/android/gallery3d/exif/IfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 4
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 5
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 6
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 7
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 8
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_2

    .line 9
    :cond_0
    invoke-static {v5, p2}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcom/android/gallery3d/exif/ExifTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 10
    invoke-virtual {v5}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    .line 11
    invoke-virtual {p2, v2}, Ljava/io/FilterOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 13
    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v1, v0, v2

    .line 14
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 15
    invoke-static {v1, p2}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcom/android/gallery3d/exif/ExifTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static writeTagValue(Lcom/android/gallery3d/exif/ExifTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getRational(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeRational(Lcom/android/gallery3d/exif/Rational;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 9
    array-length v2, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_0

    .line 10
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    .line 11
    invoke-virtual {p1, v0}, Ljava/io/FilterOutputStream;->write([B)V

    goto :goto_3

    .line 12
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 13
    invoke-virtual {p1, v1}, Ljava/io/FilterOutputStream;->write(I)V

    goto :goto_3

    .line 14
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/FilterOutputStream;->write([B)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FilterOutputStream;->write([B)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/FilterOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getExifData()Lcom/android/gallery3d/exif/ExifData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    return-object v0
.end method

.method public setExifData(Lcom/android/gallery3d/exif/ExifData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mExifData:Lcom/android/gallery3d/exif/ExifData;

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/exif/ExifOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    if-eq v0, v1, :cond_e

    :cond_0
    if-lez p3, :cond_e

    .line 2
    iget v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v0, :cond_2

    if-le p3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    sub-int/2addr p3, v0

    .line 3
    iget v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    add-int/2addr p2, v0

    .line 4
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_4

    if-le p3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    .line 5
    :goto_2
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    .line 6
    iget v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    add-int/2addr p2, v0

    :cond_4
    if-nez p3, :cond_5

    return-void

    .line 7
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    .line 8
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 9
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 10
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x27

    if-ne v2, v4, :cond_7

    .line 11
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 13
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ge v2, v0, :cond_8

    return-void

    .line 14
    :cond_8
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 15
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    const v5, 0xffff

    if-ne v2, v4, :cond_9

    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 17
    iput v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    goto :goto_3

    .line 18
    :cond_9
    invoke-static {v2}, Lcom/android/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_a

    .line 19
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_3

    .line 21
    :cond_a
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 22
    iput v1, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    .line 23
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 24
    :cond_b
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 25
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_c

    return-void

    .line 26
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 27
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v4, -0x28

    if-ne v0, v4, :cond_d

    .line 28
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 29
    iput v2, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mState:I

    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 31
    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeExifData(Z)V

    goto/16 :goto_0

    .line 32
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not a valid jpeg image, cannot write exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-lez p3, :cond_f

    .line 33
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_f
    return-void
.end method

.method public writeExifForHeif()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifOutputStream;->writeExifData(Z)V

    return-void
.end method
