.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooO00o;
.super Ljava/lang/Object;
.source "AnimatablePathValueParser.java"


# static fields
.field public static OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "k"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v1

    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o()V

    .line 4
    :goto_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO()V

    .line 7
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOo;->OooO00o(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o()F

    move-result v1

    invoke-static {p0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO0Oo(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_1
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;

    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            ")",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOOO0<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move-object v2, v3

    .line 2
    :goto_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v5

    sget-object v6, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    if-eq v5, v6, :cond_5

    .line 3
    sget-object v5, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {p0, v5}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v5

    if-eqz v5, :cond_4

    if-eq v5, v0, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0o()V

    .line 5
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v5

    sget-object v6, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    if-ne v5, v6, :cond_1

    .line 7
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO0OO(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v5

    sget-object v6, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    if-ne v5, v6, :cond_3

    .line 10
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    :goto_1
    move v4, v0

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO0OO(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o0;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo()V

    if-eqz v4, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    .line 14
    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO00o(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    .line 15
    :cond_7
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;

    invoke-direct {p0, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO;-><init>(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;)V

    return-object p0
.end method
