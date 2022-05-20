.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0O0;
.super Ljava/lang/Object;
.source "AnimatableTextPropertiesParser.java"


# static fields
.field public static OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

.field public static OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "a"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    const-string v0, "fc"

    const-string/jumbo v1, "sc"

    const-string/jumbo v2, "sw"

    const-string/jumbo v3, "t"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0O0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0O;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {p0, v2}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0o()V

    .line 5
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0O0;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0O;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo()V

    if-nez v1, :cond_2

    .line 8
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0O;

    invoke-direct {p0, v0, v0, v0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0O;-><init>(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;)V

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0O;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0O0()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 2
    :goto_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3
    sget-object v4, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0O0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {p0, v4}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0o()V

    .line 5
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO0OO(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO0OO(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0Oo()V

    .line 11
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0O;

    invoke-direct {p0, v0, v1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0O;-><init>(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;)V

    return-object p0
.end method
