.class public LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0OO;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0OO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v2, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 6
    iput-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 7
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    .line 8
    iput-object v1, v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 9
    iget-object v1, v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    goto :goto_0

    .line 10
    :cond_1
    iput-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0OO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    return-object v0
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 1
    iput-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 2
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 3
    :cond_0
    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0OO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    return-void
.end method
