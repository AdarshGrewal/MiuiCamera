.class public final Lx;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final b:Lx;


# instance fields
.field public a:I

.field public c:Lw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx;

    .line 1
    invoke-direct {v0}, Lx;-><init>()V

    sput-object v0, Lx;->b:Lx;

    const-class v1, Lx;

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

    sget-object p1, Lx;->b:Lx;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Lu;

    .line 2
    invoke-direct {p1}, Lu;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lx;

    .line 3
    invoke-direct {p1}, Lx;-><init>()V

    return-object p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "c"

    aput-object v0, p1, p2

    .line 4
    sget-object p2, Lx;->b:Lx;

    const-string v0, "\u0001\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u1009\u0001"

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
