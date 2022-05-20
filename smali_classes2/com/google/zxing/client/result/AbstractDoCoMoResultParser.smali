.class public abstract Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AbstractDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3b

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3b

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
