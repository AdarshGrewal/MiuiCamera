.class public final Ldu;
.super Ldv;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method

.method public static OooO0O0(Ljava/lang/Object;J)Ldi;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldi;

    return-object p0
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Ldu;->OooO0O0(Ljava/lang/Object;J)Ldi;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ldi;->b()V

    return-void
.end method

.method public final OooO00o(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4

    .line 3
    invoke-static {p1, p3, p4}, Ldu;->OooO0O0(Ljava/lang/Object;J)Ldi;

    move-result-object v0

    .line 4
    invoke-static {p2, p3, p4}, Ldu;->OooO0O0(Ljava/lang/Object;J)Ldi;

    move-result-object p2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    if-lez v2, :cond_2

    .line 7
    invoke-interface {v0}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/2addr v2, v1

    .line 8
    invoke-interface {v0, v2}, Ldi;->a(I)Ldi;

    move-result-object v0

    .line 9
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, v0

    .line 10
    :goto_1
    invoke-static {p1, p3, p4, p2}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
