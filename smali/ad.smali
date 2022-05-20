.class public final Lad;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final a:Lad;


# instance fields
.field public b:I

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lad;

    .line 1
    invoke-direct {v0}, Lad;-><init>()V

    sput-object v0, Lad;->a:Lad;

    const-class v1, Lad;

    .line 2
    invoke-static {v1, v0}, Lde;->OooO00o(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Lad;)V
    .locals 2

    iget v0, p0, Lad;->b:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lad;->b:I

    iput-boolean v1, p0, Lad;->c:Z

    return-void
.end method


# virtual methods
.method public final OooO00o(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    sget-object p1, Lad;->a:Lad;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lac;

    .line 2
    invoke-direct {p1}, Lac;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lad;

    .line 3
    invoke-direct {p1}, Lad;-><init>()V

    return-object p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "b"

    aput-object v1, p1, v0

    const-string v0, "c"

    aput-object v0, p1, p2

    .line 4
    sget-object p2, Lad;->a:Lad;

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1007\u0000"

    .line 5
    invoke-static {p2, v0, p1}, Lde;->OooO00o(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
