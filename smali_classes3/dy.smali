.class public final Ldy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lef;


# instance fields
.field public final a:[Lef;


# direct methods
.method public varargs constructor <init>([Lef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy;->a:[Lef;

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Class;)Lee;
    .locals 4

    iget-object v0, p0, Ldy;->a:[Lef;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v2, v0, v1

    .line 2
    invoke-interface {v2, p1}, Lef;->OooO0O0(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_2
    invoke-interface {v2, p1}, Lef;->OooO00o(Ljava/lang/Class;)Lee;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0O0(Ljava/lang/Class;)Z
    .locals 4

    iget-object v0, p0, Ldy;->a:[Lef;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    .line 1
    invoke-interface {v3, p1}, Lef;->OooO0O0(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
