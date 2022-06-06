.class public abstract Lde;
.super Lbu;
.source "PG"


# static fields
.field public static final j:Ljava/util/Map;


# instance fields
.field public h:Lfi;

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lde;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbu;-><init>()V

    sget-object v0, Lfi;->a:Lfi;

    iput-object v0, p0, Lde;->h:Lfi;

    const/4 v0, -0x1

    iput v0, p0, Lde;->i:I

    return-void
.end method

.method public static OooO00o(Lcq;)Lcq;
    .locals 0

    return-object p0
.end method

.method public static OooO00o(Leh;Ljava/lang/Object;Leh;ILfy;Ljava/lang/Class;)Lcq;
    .locals 1

    new-instance p5, Lcq;

    new-instance v0, Ldd;

    invoke-direct {v0, p3, p4}, Ldd;-><init>(ILfy;)V

    invoke-direct {p5, p0, p1, p2, v0}, Lcq;-><init>(Leh;Ljava/lang/Object;Leh;Ldd;)V

    return-object p5
.end method

.method public static OooO00o(Lde;[BILcs;)Lde;
    .locals 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde;

    :try_start_0
    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->OooO00o(Ljava/lang/Object;)Les;

    move-result-object v6

    new-instance v5, Lby;

    invoke-direct {v5, p3}, Lby;-><init>(Lcs;)V

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Les;->OooO00o(Ljava/lang/Object;[BIILby;)V

    invoke-interface {v6, p0}, Les;->OooO0OO(Ljava/lang/Object;)V

    iget p1, p0, Lbu;->g:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Ldl;->OooO00o()Ldl;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ldl;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldl;

    throw p0

    :cond_1
    new-instance p1, Ldl;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ldl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static OooO00o(Lde;[BLcs;)Lde;
    .locals 1

    array-length v0, p1

    invoke-static {p0, p1, v0, p2}, Lde;->OooO00o(Lde;[BILcs;)Lde;

    move-result-object p0

    invoke-static {p0}, Lde;->OooO00o(Lde;)V

    return-object p0
.end method

.method public static OooO00o(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ler;

    invoke-direct {v0, p0, p1, p2}, Ler;-><init>(Leh;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs OooO00o(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static OooO00o(Lde;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lde;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lfg;

    invoke-direct {p0}, Lfg;-><init>()V

    new-instance v0, Ldl;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ldl;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static OooO00o(Ljava/lang/Class;Lde;)V
    .locals 1

    sget-object v0, Lde;->j:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic OooO00o()Leg;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda;

    return-object v0
.end method

.method public abstract OooO00o(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final OooO00o(I)V
    .locals 0

    iput p1, p0, Lde;->i:I

    return-void
.end method

.method public final OooO00o(Lcn;)V
    .locals 2

    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->OooO00o(Ljava/lang/Object;)Les;

    move-result-object v0

    iget-object v1, p1, Lcn;->b:Lco;

    if-nez v1, :cond_0

    new-instance v1, Lco;

    invoke-direct {v1, p1}, Lco;-><init>(Lcn;)V

    :cond_0
    invoke-interface {v0, p0, v1}, Les;->OooO00o(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method public final OooO0O0()I
    .locals 2

    iget v0, p0, Lde;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->OooO00o(Ljava/lang/Object;)Les;

    move-result-object v0

    invoke-interface {v0, p0}, Les;->OooO00o(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lde;->i:I

    :cond_0
    return v0
.end method

.method public final OooO0O0(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde;->OooO00o(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0o()I
    .locals 1

    iget v0, p0, Lde;->i:I

    return v0
.end method

.method public final bridge synthetic OooO0o0()Leh;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde;

    return-object v0
.end method

.method public final OooO0oo()Lda;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda;

    return-object v0
.end method

.method public final bridge synthetic b()Leg;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda;

    invoke-virtual {v0, p0}, Lda;->OooO00o(Lde;)V

    return-object v0
.end method

.method public final c()Z
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lde;->OooO0O0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_3

    sget-object v2, Lep;->a:Lep;

    invoke-virtual {v2, p0}, Lep;->OooO00o(Ljava/lang/Object;)Les;

    move-result-object v2

    invoke-interface {v2, p0}, Les;->OooO0O0(Ljava/lang/Object;)Z

    move-result v2

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lde;->OooO00o(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-eq p0, p1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->OooO00o(Ljava/lang/Object;)Les;

    move-result-object v0

    check-cast p1, Lde;

    invoke-interface {v0, p0, p1}, Les;->OooO0O0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lbu;->g:I

    if-nez v0, :cond_0

    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->OooO00o(Ljava/lang/Object;)Les;

    move-result-object v0

    invoke-interface {v0, p0}, Les;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lbu;->g:I

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lej;->OooO00o(Leh;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
