.class public LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;
.super LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
.source "ValueCallbackKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field public final OooO:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0<",
            "TA;>;"
        }
    .end annotation
.end field

.field public final OooOO0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TA;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TA;>;TA;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;-><init>(Ljava/util/List;)V

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;->OooO:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO0O0;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;->OooOO0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TK;>;F)TA;"
        }
    .end annotation

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;->OooO0o()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public OooO0o()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    iget-object v4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;->OooOO0:Ljava/lang/Object;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0()F

    move-result v5

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0()F

    move-result v6

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    invoke-virtual/range {v0 .. v7}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;->OooO00o(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oO()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    if-eqz v0, :cond_0

    invoke-super {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oO()V

    :cond_0
    return-void
.end method
