.class public final Lgd;
.super Lcs;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcs;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Leh;I)Lcq;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x6f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc27

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ah"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "o"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_3

    return-object v0

    :cond_3
    const p1, 0x9198308

    if-eq p2, p1, :cond_4

    return-object v0

    :cond_4
    sget-object p1, Ls;->a:Lcq;

    return-object p1

    :cond_5
    const p1, 0x9198309

    if-eq p2, p1, :cond_7

    const p1, 0xb706546

    if-eq p2, p1, :cond_6

    return-object v0

    .line 3
    :cond_6
    sget-object p1, Lab;->a:Lcq;

    return-object p1

    .line 4
    :cond_7
    sget-object p1, Lp;->a:Lcq;

    return-object p1
.end method
