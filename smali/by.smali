.class public final Lby;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcs;->OooO00o()Lcs;

    move-result-object v0

    iput-object v0, p0, Lby;->d:Lcs;

    return-void
.end method

.method public constructor <init>(Lcs;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lby;->d:Lcs;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
