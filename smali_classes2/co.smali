.class public final Lco;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgb;


# instance fields
.field public final a:Lcn;


# direct methods
.method public constructor <init>(Lcn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Ldj;->OooO00o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lco;->a:Lcn;

    iput-object p0, p1, Lcn;->b:Lco;

    return-void
.end method


# virtual methods
.method public final OooO00o(I)V
    .locals 2

    iget-object v0, p0, Lco;->a:Lcn;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcn;->OooO0O0(II)V

    return-void
.end method

.method public final OooO00o(ID)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2, p3}, Lcn;->OooO00o(ID)V

    return-void
.end method

.method public final OooO00o(IF)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO00o(IF)V

    return-void
.end method

.method public final OooO00o(II)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO0OO(II)V

    return-void
.end method

.method public final OooO00o(IJ)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2, p3}, Lcn;->OooO0O0(IJ)V

    return-void
.end method

.method public final OooO00o(ILck;)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO00o(ILck;)V

    return-void
.end method

.method public final OooO00o(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco;->a:Lcn;

    check-cast p2, Lck;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO0O0(ILck;)V

    return-void

    :cond_0
    iget-object v0, p0, Lco;->a:Lcn;

    check-cast p2, Leh;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO00o(ILeh;)V

    return-void
.end method

.method public final OooO00o(ILjava/lang/Object;Les;)V
    .locals 2

    iget-object v0, p0, Lco;->a:Lcn;

    check-cast p2, Leh;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcn;->OooO0O0(II)V

    iget-object v1, v0, Lcn;->b:Lco;

    invoke-interface {p3, p2, v1}, Les;->OooO00o(Ljava/lang/Object;Lgb;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcn;->OooO0O0(II)V

    return-void
.end method

.method public final OooO00o(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO00o(ILjava/lang/String;)V

    return-void
.end method

.method public final OooO00o(IZ)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO00o(IZ)V

    return-void
.end method

.method public final OooO0O0(II)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO0o0(II)V

    return-void
.end method

.method public final OooO0O0(IJ)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2, p3}, Lcn;->OooO0OO(IJ)V

    return-void
.end method

.method public final OooO0O0(ILjava/lang/Object;Les;)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    check-cast p2, Leh;

    invoke-virtual {v0, p1, p2, p3}, Lcn;->OooO00o(ILeh;Les;)V

    return-void
.end method

.method public final OooO0OO(II)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO0Oo(II)V

    return-void
.end method

.method public final OooO0OO(IJ)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2, p3}, Lcn;->OooO00o(IJ)V

    return-void
.end method

.method public final OooO0Oo(II)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO00o(II)V

    return-void
.end method

.method public final OooO0Oo(IJ)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2, p3}, Lcn;->OooO0O0(IJ)V

    return-void
.end method

.method public final OooO0o(II)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO0OO(II)V

    return-void
.end method

.method public final OooO0o0(II)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2}, Lcn;->OooO0o0(II)V

    return-void
.end method

.method public final OooO0o0(IJ)V
    .locals 1

    iget-object v0, p0, Lco;->a:Lcn;

    invoke-virtual {v0, p1, p2, p3}, Lcn;->OooO0OO(IJ)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lco;->a:Lcn;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcn;->OooO0O0(II)V

    return-void
.end method
