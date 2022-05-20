.class public final Lcq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Leh;

.field public final b:Ljava/lang/Object;

.field public final c:Leh;

.field public final d:Ldd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leh;Ljava/lang/Object;Leh;Ldd;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcq;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p4, Ldd;->b:Lfy;

    .line 4
    sget-object v1, Lfy;->k:Lfy;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    :goto_0
    iput-object p1, p0, Lcq;->a:Leh;

    iput-object p2, p0, Lcq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcq;->c:Leh;

    iput-object p4, p0, Lcq;->d:Ldd;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public OooO00o()Lfy;
    .locals 1

    iget-object v0, p0, Lcq;->d:Ldd;

    iget-object v0, v0, Ldd;->b:Lfy;

    return-object v0
.end method

.method public OooO00o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcq;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcq;->d:Ldd;

    .line 1
    invoke-virtual {v0}, Ldd;->OooO0OO()Lfz;

    move-result-object v0

    sget-object v1, Lfz;->h:Lfz;

    if-eq v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    const/4 p1, 0x0

    throw p1
.end method

.method public OooO0OO(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcq;->d:Ldd;

    .line 1
    invoke-virtual {v0}, Ldd;->OooO0OO()Lfz;

    move-result-object v0

    sget-object v1, Lfz;->h:Lfz;

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Ldg;

    invoke-interface {p1}, Ldg;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method
