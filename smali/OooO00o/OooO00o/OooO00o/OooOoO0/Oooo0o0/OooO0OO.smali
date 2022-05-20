.class public abstract LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;,
        LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO0oO:[Ljava/lang/String;


# instance fields
.field public OooO00o:I

.field public OooO0O0:[I

.field public OooO0OO:[Ljava/lang/String;

.field public OooO0Oo:[I

.field public OooO0o:Z

.field public OooO0o0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oO:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 2
    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oO:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oO:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    .line 4
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    .line 5
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    .line 6
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    .line 7
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    .line 8
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    .line 9
    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 3
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    return-void
.end method

.method public static OooO00o(Lokio/BufferedSource;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;
    .locals 1

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o0;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static synthetic OooO00o(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0(Lokio/BufferedSink;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO0O0(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oO:[Ljava/lang/String;

    const/16 v1, 0x22

    .line 2
    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_5

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 5
    aget-object v5, v0, v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_0
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_1

    const-string v5, "\\u2028"

    goto :goto_1

    :cond_1
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_4

    const-string v5, "\\u2029"

    :cond_2
    :goto_1
    if-ge v4, v3, :cond_3

    .line 6
    invoke-interface {p0, p1, v4, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    .line 7
    :cond_3
    invoke-interface {p0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v4, v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-ge v4, v2, :cond_6

    .line 8
    invoke-interface {p0, p1, v4, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    .line 9
    :cond_6
    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method


# virtual methods
.method public abstract OooO()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;
        }
    .end annotation

    .line 9
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at path "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0O0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract OooO00o()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final OooO00o(I)V
    .locals 3

    .line 3
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/16 v2, 0x100

    if-eq v0, v2, :cond_0

    .line 4
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0:[I

    .line 5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    .line 6
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nesting too deep at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO00o;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0:[I

    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    aput p1, v0, v1

    return-void
.end method

.method public abstract OooO0O0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooO0OO()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooO0Oo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooO0o()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o:I

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0:[I

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO:[Ljava/lang/String;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo:[I

    invoke-static {v0, v1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0Oo;->OooO00o(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract OooO0oO()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooO0oo()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooOO0()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooOO0O()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooOO0o()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract OooOOO0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
