.class public final Lbi;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final f:Lbi;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbi;

    .line 1
    invoke-direct {v0}, Lbi;-><init>()V

    sput-object v0, Lbi;->f:Lbi;

    const-class v1, Lbi;

    .line 2
    invoke-static {v1, v0}, Lde;->OooO00o(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lde;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbi;->b:Ljava/lang/String;

    iput-object v0, p0, Lbi;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lbi;->d:I

    iput v0, p0, Lbi;->e:I

    return-void
.end method


# virtual methods
.method public final OooO00o(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    sget-object p1, Lbi;->f:Lbi;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lbf;

    .line 2
    invoke-direct {p1}, Lbf;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lbi;

    .line 3
    invoke-direct {p1}, Lbi;-><init>()V

    return-object p1

    :cond_2
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "a"

    aput-object v4, p1, v3

    const-string v3, "b"

    aput-object v3, p1, p2

    const-string p2, "c"

    aput-object p2, p1, v2

    const-string p2, "d"

    aput-object p2, p1, v1

    .line 4
    invoke-static {}, Lbh;->OooO00o()Ldh;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x5

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    .line 5
    invoke-static {}, Lbh;->OooO00o()Ldh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Lbi;->f:Lbi;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u100c\u0002\u0004\u100c\u0003"

    .line 6
    invoke-static {p2, v0, p1}, Lde;->OooO00o(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
