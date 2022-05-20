.class public final Leu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfh;

.field public static final b:Lfh;

.field public static final c:Lfh;

.field public static final d:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.GeneratedMessage"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    sput-object v1, Leu;->d:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Leu;->OooO00o(Z)Lfh;

    move-result-object v1

    sput-object v1, Leu;->a:Lfh;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Leu;->OooO00o(Z)Lfh;

    move-result-object v1

    sput-object v1, Leu;->b:Lfh;

    new-instance v1, Lfh;

    .line 4
    invoke-direct {v1, v0}, Lfh;-><init>([B)V

    sput-object v1, Leu;->c:Lfh;

    return-void
.end method

.method public static OooO(ILjava/util/List;)I
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Leu;->OooO0oO(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooO(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static OooO(ILjava/util/List;Lgb;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 8
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcn;->OooO0o(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 9
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p0, v1}, Lcn;->OooO0Oo(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO00o(ILjava/lang/Object;Les;)I
    .locals 1

    .line 8
    instance-of v0, p1, Ldq;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Ldq;

    invoke-static {p0, p1}, Lcn;->OooO00o(ILdq;)I

    move-result p0

    return p0

    .line 10
    :cond_0
    check-cast p1, Leh;

    .line 11
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    invoke-static {p1, p2}, Lcn;->OooO00o(Leh;Les;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooO00o(ILjava/util/List;)I
    .locals 4

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 19
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 20
    instance-of v2, p1, Lds;

    if-eqz v2, :cond_1

    .line 21
    check-cast p1, Lds;

    :goto_0
    if-ge v1, v0, :cond_3

    .line 22
    invoke-interface {p1, v1}, Lds;->OooO00o(I)Ljava/lang/Object;

    move-result-object v2

    .line 23
    instance-of v3, v2, Lck;

    if-eqz v3, :cond_0

    .line 24
    check-cast v2, Lck;

    invoke-static {v2}, Lcn;->OooO00o(Lck;)I

    move-result v2

    goto :goto_1

    .line 25
    :cond_0
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn;->OooO0O0(Ljava/lang/String;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, v0, :cond_3

    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 27
    instance-of v3, v2, Lck;

    if-eqz v3, :cond_2

    .line 28
    check-cast v2, Lck;

    invoke-static {v2}, Lcn;->OooO00o(Lck;)I

    move-result v2

    goto :goto_3

    .line 29
    :cond_2
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn;->OooO0O0(Ljava/lang/String;)I

    move-result v2

    :goto_3
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return p0

    :cond_4
    return v1
.end method

.method public static OooO00o(ILjava/util/List;Les;)I
    .locals 4

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 15
    instance-of v3, v2, Ldq;

    if-eqz v3, :cond_0

    .line 16
    check-cast v2, Ldq;

    invoke-static {v2}, Lcn;->OooO00o(Ldq;)I

    move-result v2

    goto :goto_1

    .line 17
    :cond_0
    check-cast v2, Leh;

    invoke-static {v2, p2}, Lcn;->OooO00o(Leh;Les;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    return v1
.end method

.method public static OooO00o(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    instance-of v2, p0, Ldw;

    if-eqz v2, :cond_0

    .line 3
    check-cast p0, Ldw;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ldw;->OooO0O0(I)J

    move-result-wide v3

    .line 5
    invoke-static {v3, v4}, Lcn;->OooO0OO(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 7
    invoke-static {v3, v4}, Lcn;->OooO0OO(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static OooO00o(Z)Lfh;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.UnknownFieldSetSchema"

    .line 42
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 43
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    :cond_0
    return-object v0
.end method

.method public static OooO00o(IILjava/lang/Object;Lfh;)Ljava/lang/Object;
    .locals 2

    if-nez p2, :cond_0

    .line 62
    invoke-static {}, Lfh;->OooO00o()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    int-to-long v0, p1

    .line 63
    invoke-static {p2, p0, v0, v1}, Lfh;->OooO00o(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method public static OooO00o(ILjava/util/List;Ldh;Ljava/lang/Object;Lfh;)Ljava/lang/Object;
    .locals 5

    if-eqz p2, :cond_6

    .line 30
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_4

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 33
    invoke-interface {p2, v3}, Ldh;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    invoke-static {p0, v3, p3, p4}, Leu;->OooO00o(IILjava/lang/Object;Lfh;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_2

    :cond_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    goto :goto_4

    .line 36
    :cond_3
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object p3

    .line 37
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    invoke-interface {p2, v0}, Ldh;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 40
    invoke-static {p0, v0, p3, p4}, Leu;->OooO00o(IILjava/lang/Object;Lfh;)Ljava/lang/Object;

    move-result-object p3

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_6
    :goto_4
    return-object p3
.end method

.method public static OooO00o(ILjava/util/List;Lgb;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    instance-of v0, p1, Lds;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 79
    move-object v0, p1

    check-cast v0, Lds;

    .line 80
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 81
    invoke-interface {v0, v1}, Lds;->OooO00o(I)Ljava/lang/Object;

    move-result-object v2

    .line 82
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, p2

    check-cast v3, Lco;

    iget-object v3, v3, Lco;->a:Lcn;

    .line 83
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2}, Lcn;->OooO00o(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v3, p2

    check-cast v3, Lco;

    iget-object v3, v3, Lco;->a:Lcn;

    .line 84
    check-cast v2, Lck;

    invoke-virtual {v3, p0, v2}, Lcn;->OooO00o(ILck;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    move-object v0, p2

    check-cast v0, Lco;

    iget-object v0, v0, Lco;->a:Lcn;

    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcn;->OooO00o(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO00o(ILjava/util/List;Lgb;Les;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 76
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lco;

    invoke-virtual {v2, p0, v1, p3}, Lco;->OooO0O0(ILjava/lang/Object;Les;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static OooO00o(ILjava/util/List;Lgb;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 65
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 67
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    sget-boolean v1, Lcn;->a:Z

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 68
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 69
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcn;->OooO0O0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Lcn;->OooO00o(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO00o(Lej;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 44
    invoke-static {p2}, Lej;->OooO0O0(Ljava/lang/Object;)Lcu;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcu;->OooO00o()Z

    move-result p2

    if-nez p2, :cond_1

    .line 46
    invoke-static {p1}, Lej;->OooO0OO(Ljava/lang/Object;)Lcu;

    move-result-object p1

    const/4 p2, 0x0

    .line 47
    :goto_0
    iget-object v0, p0, Lcu;->a:Lfc;

    invoke-virtual {v0}, Lfc;->OooO00o()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcu;->a:Lfc;

    invoke-virtual {v0, p2}, Lfc;->OooO00o(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcu;->OooO00o(Ljava/util/Map$Entry;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object p0, p0, Lcu;->a:Lfc;

    invoke-virtual {p0}, Lfc;->OooO0O0()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 50
    invoke-virtual {p1, p2}, Lcu;->OooO00o(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static OooO00o(Lff;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0

    .line 51
    invoke-static {p1, p3, p4}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p3, p4}, Lfr;->OooO0o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 52
    invoke-static {p0, p2}, Lff;->OooO0O0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 53
    invoke-static {p1, p3, p4, p0}, Lfr;->OooO00o(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static OooO00o(Lfh;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 54
    invoke-virtual {p0, p1}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    invoke-virtual {p0, p2}, Lfh;->OooO0O0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 56
    invoke-static {v0, p2}, Lfh;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, p2}, Lfh;->OooO0O0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static OooO00o(Ljava/lang/Class;)V
    .locals 1

    const-class v0, Lde;

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Leu;->d:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 60
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static OooO0O0(ILjava/util/List;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr v0, p0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lck;

    invoke-static {p0}, Lcn;->OooO00o(Lck;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public static OooO0O0(ILjava/util/List;Les;)I
    .locals 4

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh;

    invoke-static {p0, v3, p2}, Lcn;->OooO0O0(ILeh;Les;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public static OooO0O0(Ljava/util/List;)I
    .locals 5

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    instance-of v2, p0, Ldw;

    if-eqz v2, :cond_0

    .line 9
    check-cast p0, Ldw;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Ldw;->OooO0O0(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn;->OooO0OO(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn;->OooO0OO(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static OooO0O0(ILjava/util/List;Lgb;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v1, p2

    check-cast v1, Lco;

    iget-object v1, v1, Lco;->a:Lcn;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lck;

    invoke-virtual {v1, p0, v2}, Lcn;->OooO00o(ILck;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static OooO0O0(ILjava/util/List;Lgb;Les;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lco;

    invoke-virtual {v2, p0, v1, p3}, Lco;->OooO00o(ILjava/lang/Object;Les;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static OooO0O0(ILjava/util/List;Lgb;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 16
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 18
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    sget-boolean v1, Lcn;->a:Z

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 19
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 20
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 22
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p0, p3}, Lcn;->OooO0OO(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p0, v1}, Lcn;->OooO00o(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO0OO(ILjava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lcn;->OooOO0(I)I

    move-result p0

    mul-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooO0OO(Ljava/util/List;)I
    .locals 5

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    instance-of v2, p0, Ldw;

    if-eqz v2, :cond_0

    .line 5
    check-cast p0, Ldw;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Ldw;->OooO0O0(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn;->OooO0Oo(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 7
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn;->OooO0Oo(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static OooO0OO(ILjava/util/List;Lgb;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 11
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Lcn;->OooO0OO(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 13
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 14
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 16
    invoke-virtual {p0, v1, v2}, Lcn;->OooO00o(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 19
    invoke-virtual {p3, p0, v1, v2}, Lcn;->OooO0O0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO0Oo(ILjava/util/List;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Leu;->OooO0Oo(Ljava/util/List;)I

    move-result p1

    .line 3
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooO0Oo(Ljava/util/List;)I
    .locals 4

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    instance-of v2, p0, Ldf;

    if-eqz v2, :cond_0

    .line 6
    check-cast p0, Ldf;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Ldf;->OooO0O0(I)I

    move-result v3

    .line 8
    invoke-static {v3}, Lcn;->OooO0o0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 10
    invoke-static {v3}, Lcn;->OooO0o0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static OooO0Oo(ILjava/util/List;Lgb;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 12
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 14
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn;->OooO0OO(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 15
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 16
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcn;->OooO00o(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Lcn;->OooO0O0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO0o(ILjava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lcn;->OooOOO0(I)I

    move-result p0

    mul-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooO0o(Ljava/util/List;)I
    .locals 4

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    instance-of v2, p0, Ldf;

    if-eqz v2, :cond_0

    .line 5
    check-cast p0, Ldf;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Ldf;->OooO0O0(I)I

    move-result v3

    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 7
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn;->OooO0o(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static OooO0o(ILjava/util/List;Lgb;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 11
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    sget-boolean v1, Lcn;->a:Z

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 12
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 13
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcn;->OooO0O0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Lcn;->OooO0OO(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO0o0(ILjava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lcn;->OooOO0o(I)I

    move-result p0

    mul-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooO0o0(Ljava/util/List;)I
    .locals 4

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    instance-of v2, p0, Ldf;

    if-eqz v2, :cond_0

    .line 5
    check-cast p0, Ldf;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Ldf;->OooO0O0(I)I

    move-result v3

    invoke-static {v3}, Lcn;->OooO0o0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 7
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn;->OooO0o0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static OooO0o0(ILjava/util/List;Lgb;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 11
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn;->OooO0Oo(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 12
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 13
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Lcn;->OooO0o0(J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcn;->OooO00o(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Lcn;->OooO00o(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO0oO(ILjava/util/List;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Leu;->OooO0o0(Ljava/util/List;)I

    move-result p1

    .line 3
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooO0oO(Ljava/util/List;)I
    .locals 4

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    instance-of v2, p0, Ldf;

    if-eqz v2, :cond_0

    .line 6
    check-cast p0, Ldf;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Ldf;->OooO0O0(I)I

    move-result v3

    invoke-static {v3}, Lcn;->OooO0oO(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn;->OooO0oO(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static OooO0oO(ILjava/util/List;Lgb;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 10
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 12
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    sget-boolean v1, Lcn;->a:Z

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 13
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 14
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 16
    invoke-virtual {p0, v1, v2}, Lcn;->OooO0O0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 19
    invoke-virtual {p3, p0, v1, v2}, Lcn;->OooO0OO(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooO0oo(ILjava/util/List;)I
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Leu;->OooO00o(Ljava/util/List;)I

    move-result v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooO0oo(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static OooO0oo(ILjava/util/List;Lgb;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 8
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcn;->OooO0o0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 9
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Lcn;->OooO00o(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p0, v1}, Lcn;->OooO0OO(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooOO0(ILjava/util/List;)I
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Leu;->OooO0OO(Ljava/util/List;)I

    move-result p1

    .line 4
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooOO0(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static OooOO0(ILjava/util/List;Lgb;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 8
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcn;->OooO0oO(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 9
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 12
    invoke-static {p3}, Lcn;->OooO(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p0, v1}, Lcn;->OooO00o(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooOO0O(ILjava/util/List;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Leu;->OooO0o(Ljava/util/List;)I

    move-result p1

    .line 3
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooOO0O(ILjava/util/List;Lgb;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 7
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    sget-boolean v1, Lcn;->a:Z

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 8
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 9
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Lcn;->OooO0OO(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p0, v1}, Lcn;->OooO0o0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooOO0o(ILjava/util/List;)I
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Leu;->OooO0O0(Ljava/util/List;)I

    move-result p1

    .line 3
    invoke-static {p0}, Lcn;->OooO0Oo(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooOO0o(ILjava/util/List;Lgb;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 7
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    sget-boolean v1, Lcn;->a:Z

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 8
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 9
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 11
    invoke-virtual {p0, p3}, Lcn;->OooO0OO(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 14
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0o0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooOOO(ILjava/util/List;Lgb;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, 0x1

    sget-boolean v1, Lcn;->a:Z

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 5
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 8
    invoke-virtual {p0, p3}, Lcn;->OooO00o(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p0, v1}, Lcn;->OooO00o(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static OooOOO0(ILjava/util/List;Lgb;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Lco;

    iget-object p3, p2, Lco;->a:Lcn;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0O0(II)V

    move p0, v0

    move p3, p0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-static {v1}, Lcn;->OooO0o0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lco;->a:Lcn;

    .line 6
    invoke-virtual {p0, p3}, Lcn;->OooO0O0(I)V

    .line 7
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Lco;->a:Lcn;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 9
    invoke-virtual {p0, p3}, Lcn;->OooO00o(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    move-object p3, p2

    check-cast p3, Lco;

    iget-object p3, p3, Lco;->a:Lcn;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 12
    invoke-virtual {p3, p0, v1}, Lcn;->OooO0OO(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
