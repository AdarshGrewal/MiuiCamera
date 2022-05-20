.class public final Lfe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Lck;


# direct methods
.method public constructor <init>(Lck;)V
    .locals 0

    iput-object p1, p0, Lfe;->a:Lck;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()I
    .locals 1

    iget-object v0, p0, Lfe;->a:Lck;

    .line 1
    invoke-virtual {v0}, Lck;->a()I

    move-result v0

    return v0
.end method
