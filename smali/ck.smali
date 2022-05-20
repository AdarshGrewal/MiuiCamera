.class public abstract Lck;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lce;

.field public static final b:Lck;


# instance fields
.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lci;

    .line 1
    sget-object v1, Ldj;->b:[B

    invoke-direct {v0, v1}, Lci;-><init>([B)V

    sput-object v0, Lck;->b:Lck;

    .line 2
    invoke-static {}, Lbx;->OooO00o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcc;

    .line 3
    invoke-direct {v0}, Lcc;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcj;

    .line 4
    invoke-direct {v0}, Lcj;-><init>()V

    .line 5
    :goto_0
    sput-object v0, Lck;->a:Lce;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lck;->c:I

    return-void
.end method

.method public static OooO00o(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x42

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static OooO00o(Ljava/lang/String;)Lck;
    .locals 2

    new-instance v0, Lci;

    .line 8
    sget-object v1, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lci;-><init>([B)V

    return-object v0
.end method

.method public static OooO00o([BII)Lck;
    .locals 2

    add-int v0, p1, p2

    .line 6
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lck;->OooO00o(III)I

    new-instance v0, Lci;

    sget-object v1, Lck;->a:Lce;

    .line 7
    invoke-interface {v1, p0, p1, p2}, Lce;->OooO00o([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lci;-><init>([B)V

    return-object v0
.end method

.method public static OooO0OO(I)Lcg;
    .locals 1

    new-instance v0, Lcg;

    .line 1
    invoke-direct {v0, p0}, Lcg;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract OooO00o(II)I
.end method

.method public abstract OooO00o(I)Lck;
.end method

.method public final OooO00o()Ljava/lang/String;
    .locals 2

    .line 9
    sget-object v0, Ldj;->a:Ljava/nio/charset/Charset;

    .line 10
    invoke-virtual {p0}, Lck;->a()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lck;->OooO00o(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public abstract OooO00o(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract OooO00o(Leb;)V
.end method

.method public abstract OooO00o([BI)V
.end method

.method public abstract OooO0O0(I)B
.end method

.method public abstract OooO0O0()Z
.end method

.method public abstract a(I)B
.end method

.method public abstract a()I
.end method

.method public final d()Lcf;
    .locals 1

    new-instance v0, Lcb;

    .line 1
    invoke-direct {v0, p0}, Lcb;-><init>(Lck;)V

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lck;->c:I

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lck;->a()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0, v0}, Lck;->OooO00o(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lck;->c:I

    :cond_1
    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lck;->d()Lcf;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p0}, Lck;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p0}, Lck;->a()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lck;->OooO00o(I)Lck;

    move-result-object v2

    invoke-static {v2}, Lff;->OooO00o(Lck;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lff;->OooO00o(Lck;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 5
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
