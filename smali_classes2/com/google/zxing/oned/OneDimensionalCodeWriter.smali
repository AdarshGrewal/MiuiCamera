.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field public static final NUMERIC:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9]+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->NUMERIC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPattern([ZI[IZ)I
    .locals 7

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p2, v2

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    add-int/lit8 v6, p1, 0x1

    .line 2
    aput-boolean p3, p0, p1

    add-int/lit8 v5, v5, 0x1

    move p1, v6

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static checkNumeric(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->NUMERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input should only contain digits 0-9"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .line 1
    array-length v0, p0

    add-int/2addr p3, v0

    .line 2
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4
    div-int p3, p1, p3

    mul-int v1, v0, p3

    sub-int v1, p1, v1

    .line 5
    div-int/lit8 v1, v1, 0x2

    .line 6
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 p1, 0x0

    move v3, p1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 7
    aget-boolean v4, p0, v3

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v2, v1, p1, p3, p2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, p3

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-ltz p3, :cond_3

    if-ltz p4, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getSupportedWriteFormats()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Can only encode "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result p2

    if-eqz p5, :cond_2

    .line 7
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p2, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object p1

    .line 10
    invoke-static {p1, p3, p4, p2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Negative size is not allowed. Input: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
