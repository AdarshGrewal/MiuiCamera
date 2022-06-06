.class public final Ldt;
.super Ldv;
.source "PG"


# static fields
.field public static final c:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ldt;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method

.method public static OooO0O0(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p2, p3}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lds;

    if-eqz v1, :cond_0

    check-cast v0, Lds;

    invoke-interface {v0}, Lds;->OooO00o()Lds;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v1, Ldt;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, v0, Leo;

    if-eqz v1, :cond_3

    instance-of v1, v0, Ldi;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Ldi;

    invoke-interface {v0}, Ldi;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ldi;->b()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {p1, p2, p3, v0}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final OooO00o(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4

    invoke-static {p2, p3, p4}, Ldt;->OooO0O0(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4}, Ldt;->OooO0O0(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lds;

    if-eqz v2, :cond_0

    new-instance v1, Ldr;

    invoke-direct {v1, v0}, Ldr;-><init>(I)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Leo;

    if-eqz v2, :cond_2

    instance-of v2, v1, Ldi;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Ldi;

    invoke-interface {v1, v0}, Ldi;->a(I)Ldi;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-static {p1, p3, p4, v1}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_3
    sget-object v2, Ldt;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p3, p4, v2}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2
    move-object v1, v2

    goto :goto_3

    :cond_4
    instance-of v2, v1, Lfl;

    if-eqz v2, :cond_5

    new-instance v2, Ldr;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ldr;-><init>(I)V

    check-cast v1, Lfl;

    invoke-virtual {v2, v1}, Ldr;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p3, p4, v2}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_5
    instance-of v2, v1, Leo;

    if-eqz v2, :cond_6

    instance-of v2, v1, Ldi;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Ldi;

    invoke-interface {v2}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v1}, Ldi;->a(I)Ldi;

    move-result-object v1

    invoke-static {p1, p3, p4, v1}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_7

    if-lez v2, :cond_7

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-gtz v0, :cond_8

    goto :goto_4

    :cond_8
    move-object p2, v1

    :goto_4
    invoke-static {p1, p3, p4, p2}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
