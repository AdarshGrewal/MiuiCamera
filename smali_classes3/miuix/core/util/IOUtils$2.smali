.class public final Lmiuix/core/util/IOUtils$2;
.super Lmiuix/core/util/Pools$Manager;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/Pools$Manager<",
        "Ljava/io/CharArrayWriter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/io/CharArrayWriter;
    .locals 1

    .line 2
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/core/util/IOUtils$2;->createInstance()Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public onRelease(Ljava/io/CharArrayWriter;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/io/CharArrayWriter;->reset()V

    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/CharArrayWriter;

    invoke-virtual {p0, p1}, Lmiuix/core/util/IOUtils$2;->onRelease(Ljava/io/CharArrayWriter;)V

    return-void
.end method
