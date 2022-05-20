.class public final Lcg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcn;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcg;->b:[B

    .line 3
    invoke-static {p1}, Lcn;->OooO00o([B)Lcn;

    move-result-object p1

    iput-object p1, p0, Lcg;->a:Lcn;

    return-void
.end method


# virtual methods
.method public final OooO00o()Lck;
    .locals 2

    iget-object v0, p0, Lcg;->a:Lcn;

    .line 1
    invoke-virtual {v0}, Lcn;->OooO0O0()V

    .line 2
    new-instance v0, Lci;

    iget-object v1, p0, Lcg;->b:[B

    invoke-direct {v0, v1}, Lci;-><init>([B)V

    return-object v0
.end method
