.class public final Laa;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final e:Laa;


# instance fields
.field public a:I

.field public b:Lz;

.field public c:Lx;

.field public d:I

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Laa;

    .line 1
    invoke-direct {v0}, Laa;-><init>()V

    sput-object v0, Laa;->e:Laa;

    const-class v1, Laa;

    .line 2
    invoke-static {v1, v0}, Lde;->OooO00o(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lde;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laa;->d:I

    return-void
.end method


# virtual methods
.method public final OooO00o(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

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

    sget-object p1, Laa;->e:Laa;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lt;

    .line 2
    invoke-direct {p1}, Lt;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Laa;

    .line 3
    invoke-direct {p1}, Laa;-><init>()V

    return-object p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "f"

    aput-object v3, p1, v0

    const-string v0, "a"

    aput-object v0, p1, p2

    const-string p2, "b"

    aput-object p2, p1, v2

    const-string p2, "c"

    aput-object p2, p1, v1

    .line 4
    sget-object p2, Laa;->e:Laa;

    const-string v0, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

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
