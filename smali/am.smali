.class public final synthetic Lam;
.super Ljava/lang/Object;

# interfaces
.implements Lap;


# instance fields
.field public final a:Laq;

.field public final b:Lap;


# direct methods
.method public constructor <init>(Laq;Lap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lam;->a:Laq;

    iput-object p2, p0, Lam;->b:Lap;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object p1, p0, Lam;->a:Laq;

    iget-object v0, p0, Lam;->b:Lap;

    .line 1
    invoke-virtual {p1}, Laq;->OooO0oO()I

    move-result p1

    invoke-interface {v0, p1}, Lap;->a(I)V

    return-void
.end method
