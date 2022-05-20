.class public Lcom/android/camera2/vendortag/struct/HdrEvValue;
.super Ljava/lang/Object;
.source "HdrEvValue.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HDR_TYPE_HDR:I = 0x0

.field public static final HDR_TYPE_LLHDR:I = 0x1

.field public static final NEW_HDR_TYPE:[B

.field public static final TAG:Ljava/lang/String;

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public final mHdrCheckerEvValue:[I

.field public mHdrType:I

.field public final mSequenceNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->NEW_HDR_TYPE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x68t
        0x64t
        0x72t
        0x20t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([BZ[B)V

    return-void
.end method

.method public constructor <init>([BZ[B)V
    .locals 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrType:I

    if-eqz p1, :cond_b

    .line 5
    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_b

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 6
    :cond_0
    array-length p2, p1

    const/16 v1, 0x8

    if-le p2, v1, :cond_1

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->isNewHdrFormat([B)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    sget-object p2, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HdrEvValue is new version, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    aget-byte v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    aget-byte p2, p1, v4

    if-ne p2, v2, :cond_2

    .line 9
    iput v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrType:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 10
    :cond_2
    :goto_0
    aget-byte p2, p1, v1

    if-gez p2, :cond_3

    .line 11
    sget-object v2, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid sequence num "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    new-array v2, p2, [I

    move v3, v0

    :goto_1
    const-string v4, "]="

    if-ge v3, p2, :cond_4

    add-int/lit8 v5, v3, 0x1

    mul-int/lit8 v6, v5, 0x4

    add-int/2addr v6, v1

    .line 13
    aget-byte v6, p1, v6

    aput v6, v2, v3

    .line 14
    sget-object v6, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HdrEvValue: originEv["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    .line 15
    iput p2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    .line 16
    iput-object v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    goto/16 :goto_9

    .line 17
    :cond_5
    array-length p1, p3

    if-lt p1, p2, :cond_8

    move p1, v0

    move v1, p1

    :goto_2
    if-ge p1, p2, :cond_6

    .line 18
    aget-byte v3, p3, p1

    add-int/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 19
    :cond_6
    iput v1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    .line 20
    new-array p1, v1, [I

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    move p1, v0

    move v1, p1

    :goto_3
    if-ge p1, p2, :cond_e

    .line 21
    aget-byte v3, p3, p1

    .line 22
    sget-object v5, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HdrEvValue: expandRules["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    :goto_4
    if-ge v5, v3, :cond_7

    .line 23
    iget-object v6, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    add-int/lit8 v7, v1, 0x1

    aget v8, v2, p1

    aput v8, v6, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v7

    goto :goto_4

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 24
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originEv: "

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_5
    const-string v3, " "

    if-ge v1, p2, :cond_9

    .line 26
    aget v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    const-string p2, "\r\nexpandRule: "

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :goto_6
    array-length p2, p3

    if-ge v0, p2, :cond_a

    .line 29
    aget-byte p2, p3, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 30
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_b
    :goto_7
    sget-object p1, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    const-string p3, "invalid hdr checker value"

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_d

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOo0()[I

    move-result-object p1

    if-eqz p1, :cond_c

    .line 33
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOo0()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    goto :goto_8

    .line 34
    :cond_c
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    .line 35
    :goto_8
    iget-object p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    array-length p1, p1

    iput p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    goto :goto_9

    :cond_d
    const/16 p1, 0xc

    new-array p1, p1, [I

    .line 36
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    .line 37
    array-length p1, p1

    iput p1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    :cond_e
    :goto_9
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x6
        -0xc
    .end array-data
.end method

.method public static isNewHdrFormat([B)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x4

    :try_start_1
    new-array p0, p0, [B

    .line 2
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->read([B)I

    .line 3
    sget-object v1, Lcom/android/camera2/vendortag/struct/HdrEvValue;->NEW_HDR_TYPE:[B

    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 5
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 7
    sget-object v0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->TAG:Ljava/lang/String;

    const-string v1, "Exception parsing hdrCheckerValues type box."

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getHdrCheckerEvValue()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    return-object v0
.end method

.method public getHdrType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrType:I

    return v0
.end method

.method public getSequenceNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mSequenceNum:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, "["

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/android/camera2/vendortag/struct/HdrEvValue;->mHdrCheckerEvValue:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
