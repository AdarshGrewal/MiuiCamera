.class public LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOo0o;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# static fields
.field public static final OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "nm"

    const-string/jumbo v1, "mm"

    const-string v2, "hd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOo0o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, LOooO0O0/OooO00o/OooO00o/OooOoO0/OooOo0o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {p0, v3}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0o()V

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oO()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO()I

    move-result v1

    invoke-static {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo$OooO00o;->OooO00o(I)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo$OooO00o;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;

    invoke-direct {p0, v0, v1, v2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo;-><init>(Ljava/lang/String;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oo$OooO00o;Z)V

    return-object p0
.end method
