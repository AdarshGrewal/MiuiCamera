.class public final LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:[Ljava/lang/String;

.field public final OooO0O0:Lokio/Options;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lokio/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o:[Ljava/lang/String;

    .line 3
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO0O0:Lokio/Options;

    return-void
.end method

.method public static varargs OooO00o([Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;
    .locals 4

    .line 1
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lokio/ByteString;

    .line 2
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, p0, v2

    invoke-static {v1, v3}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(Lokio/BufferedSink;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 6
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v0

    invoke-direct {v1, p0, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;-><init>([Ljava/lang/String;Lokio/Options;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
