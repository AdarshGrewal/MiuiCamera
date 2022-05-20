.class public final Lah;
.super Ldc;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final b:Lah;


# instance fields
.field public a:I

.field public c:I

.field public e:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lah;

    .line 1
    invoke-direct {v0}, Lah;-><init>()V

    sput-object v0, Lah;->b:Lah;

    const-class v1, Lah;

    .line 2
    invoke-static {v1, v0}, Lde;->OooO00o(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldc;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lah;->e:B

    const/4 v0, 0x1

    iput v0, p0, Lah;->a:I

    return-void
.end method


# virtual methods
.method public final OooO00o(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    sget-object p1, Lah;->b:Lah;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lag;

    .line 2
    invoke-direct {p1}, Lag;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lah;

    .line 3
    invoke-direct {p1}, Lah;-><init>()V

    return-object p1

    :cond_2
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v0

    const-string p2, "a"

    aput-object p2, p1, v1

    .line 4
    invoke-static {}, Laf;->OooO00o()Ldh;

    move-result-object p2

    aput-object p2, p1, v2

    sget-object p2, Lah;->b:Lah;

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    .line 5
    invoke-static {p2, v0, p1}, Lde;->OooO00o(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    .line 6
    :goto_0
    iput-byte v0, p0, Lah;->e:B

    const/4 p1, 0x0

    return-object p1

    :cond_5
    iget-byte p1, p0, Lah;->e:B

    .line 7
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
