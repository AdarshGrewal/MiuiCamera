.class public Ldl;
.super Ljava/io/IOException;
.source "PG"


# static fields
.field public static final serialVersionUID:J = -0x166db9773d0dffacL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static OooO00o()Ldl;
    .locals 2

    new-instance v0, Ldl;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 1
    invoke-direct {v0, v1}, Ldl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static OooO0O0()Ldl;
    .locals 2

    new-instance v0, Ldl;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 1
    invoke-direct {v0, v1}, Ldl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static OooO0OO()Ldl;
    .locals 2

    new-instance v0, Ldl;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 1
    invoke-direct {v0, v1}, Ldl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static OooO0Oo()Ldk;
    .locals 2

    new-instance v0, Ldk;

    const-string v1, "Protocol message tag had invalid wire type."

    .line 1
    invoke-direct {v0, v1}, Ldk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static OooO0o()Ldl;
    .locals 2

    new-instance v0, Ldl;

    const-string v1, "Protocol message had invalid UTF-8."

    .line 1
    invoke-direct {v0, v1}, Ldl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static OooO0o0()Ldl;
    .locals 2

    new-instance v0, Ldl;

    const-string v1, "Failed to parse the message."

    .line 1
    invoke-direct {v0, v1}, Ldl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
