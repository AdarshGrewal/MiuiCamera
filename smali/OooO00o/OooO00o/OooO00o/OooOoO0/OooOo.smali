.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooOo;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object v0

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o()F

    move-result v1

    sget-object v2, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;

    .line 3
    invoke-static {p0, p1, v1, v2, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOo0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;FLOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;Z)LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;

    move-result-object p0

    .line 4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;

    invoke-direct {v0, p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oo;-><init>(LOooO00o/OooO00o/OooO00o/OooO0o;LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;)V

    return-object v0
.end method
