.class public final LOooO00o/OooO0o0/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "B.java"

# interfaces
.implements LOooO00o/OooO0o0/OooO00o/OooO00o;


# instance fields
.field public final OooO00o:Ljava/nio/channels/FileChannel;

.field public final OooO0O0:J

.field public final OooO0OO:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0o0/OooO00o/OooO0O0;->OooO00o:Ljava/nio/channels/FileChannel;

    .line 3
    iput-wide p2, p0, LOooO00o/OooO0o0/OooO00o/OooO0O0;->OooO0O0:J

    .line 4
    iput-wide p4, p0, LOooO00o/OooO0o0/OooO00o/OooO0O0;->OooO0OO:J

    return-void
.end method


# virtual methods
.method public OooO00o([Ljava/security/MessageDigest;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, LOooO00o/OooO0o0/OooO00o/OooO0O0;->OooO0O0:J

    add-long v4, v0, p2

    .line 2
    iget-object v2, p0, LOooO00o/OooO0o0/OooO00o/OooO0O0;->OooO00o:Ljava/nio/channels/FileChannel;

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v6, p4

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 3
    array-length p3, p1

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p3, :cond_0

    .line 4
    aget-object v1, p1, v0

    .line 5
    invoke-virtual {p2, p4}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, LOooO00o/OooO0o0/OooO00o/OooO0O0;->OooO0OO:J

    return-wide v0
.end method
