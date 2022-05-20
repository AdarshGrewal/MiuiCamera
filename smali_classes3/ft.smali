.class public abstract Lft;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Ljava/lang/CharSequence;[BII)I
.end method

.method public final OooO00o([BII)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lft;->OooO0OO([BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract OooO0O0([BII)Ljava/lang/String;
.end method

.method public abstract OooO0OO([BII)I
.end method
