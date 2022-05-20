.class public final Lfh;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method

.method public static bridge synthetic OooO00o()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-static {}, Lfi;->OooO0OO()Lfi;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic OooO00o(Ljava/lang/Object;IJ)V
    .locals 1

    .line 3
    check-cast p0, Lfi;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lga;->OooO00o(II)I

    move-result p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfi;->OooO00o(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic OooO00o(Ljava/lang/Object;ILck;)V
    .locals 1

    .line 1
    check-cast p0, Lfi;

    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, Lga;->OooO00o(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lfi;->OooO00o(ILjava/lang/Object;)V

    return-void
.end method

.method public static OooO00o(Ljava/lang/Object;Lfi;)V
    .locals 0

    .line 8
    check-cast p0, Lde;

    iput-object p1, p0, Lde;->h:Lfi;

    return-void
.end method

.method public static bridge synthetic OooO00o(Ljava/lang/Object;Lgb;)V
    .locals 0

    .line 9
    check-cast p0, Lfi;

    .line 10
    invoke-virtual {p0, p1}, Lfi;->OooO00o(Lgb;)V

    return-void
.end method

.method public static bridge synthetic OooO0O0(Ljava/lang/Object;Lgb;)V
    .locals 0

    .line 3
    check-cast p0, Lfi;

    .line 4
    invoke-virtual {p0, p1}, Lfi;->OooO0O0(Lgb;)V

    return-void
.end method

.method public static OooO0OO(Ljava/lang/Object;)Lfi;
    .locals 0

    .line 1
    check-cast p0, Lde;

    iget-object p0, p0, Lde;->h:Lfi;

    return-object p0
.end method

.method public static bridge synthetic OooO0OO(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    check-cast p0, Lfi;

    check-cast p1, Lfi;

    .line 3
    sget-object v0, Lfi;->a:Lfi;

    invoke-virtual {p1, v0}, Lfi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0, p1}, Lfi;->OooO00o(Lfi;Lfi;)Lfi;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static bridge synthetic OooO0Oo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p0, Lfi;

    .line 2
    invoke-virtual {p0}, Lfi;->OooO0O0()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic OooO0o0(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p0, Lfi;

    .line 2
    invoke-virtual {p0}, Lfi;->OooO00o()I

    move-result p0

    return p0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lfh;->OooO0OO(Ljava/lang/Object;)Lfi;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lfi;->e:Z

    return-void
.end method

.method public bridge synthetic OooO00o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lfi;

    .line 7
    invoke-static {p1, p2}, Lfh;->OooO00o(Ljava/lang/Object;Lfi;)V

    return-void
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lfh;->OooO0OO(Ljava/lang/Object;)Lfi;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO0O0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lfi;

    .line 2
    invoke-static {p1, p2}, Lfh;->OooO00o(Ljava/lang/Object;Lfi;)V

    return-void
.end method
