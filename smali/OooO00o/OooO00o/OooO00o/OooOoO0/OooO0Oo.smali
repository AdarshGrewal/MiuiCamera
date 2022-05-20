.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;

    invoke-static {p0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;Z)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;

    invoke-static {p0, p2, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;FLOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;I)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0OO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0OO;

    new-instance v1, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOO0o;

    invoke-direct {v1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOO0o;-><init>(I)V

    .line 5
    invoke-static {p0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0OO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;FLOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "F",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
            "TT;>;)",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p0, p2, p1, p3}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;FLOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;",
            "LOooO00o/OooO00o/OooO00o/OooO0o;",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
            "TT;>;)",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-static {p0, p1, v0, p2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;FLOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0oo;

    invoke-static {p0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO0OO(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;Z)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0Oo(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOOO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOOO;

    invoke-static {p0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO0o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oO;

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOooO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooOooO;

    invoke-static {p0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oO;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO0o0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o;

    .line 2
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o()F

    move-result v1

    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO;

    invoke-static {p0, v1, p1, v2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;FLOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0o;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static OooO0oO(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;

    .line 2
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o()F

    move-result v1

    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOooo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooOooo;

    invoke-static {p0, v1, p1, v2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;FLOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;-><init>(Ljava/util/List;)V

    return-object v0
.end method
