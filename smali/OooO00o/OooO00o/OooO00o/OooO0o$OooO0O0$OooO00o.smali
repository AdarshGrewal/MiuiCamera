.class public final LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source "LottieComposition.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOO0;
.implements LOooO00o/OooO00o/OooO00o/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOO0<",
        "LOooO00o/OooO00o/OooO00o/OooO0o;",
        ">;",
        "LOooO00o/OooO00o/OooO00o/OooO0O0;"
    }
.end annotation


# instance fields
.field public final OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOo;

.field public OooO0O0:Z


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooOOOo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0$OooO00o;->OooO0O0:Z

    .line 4
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOo;

    return-void
.end method

.method public synthetic constructor <init>(LOooO00o/OooO00o/OooO00o/OooOOOo;LOooO00o/OooO00o/OooO00o/OooO0o$OooO00o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0$OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooOOOo;)V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0$OooO00o;->OooO0O0:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOo;

    invoke-interface {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOOOo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;)V

    return-void
.end method

.method public bridge synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, LOooO00o/OooO00o/OooO00o/OooO0o;

    invoke-virtual {p0, p1}, LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooO0o;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooO0o$OooO0O0$OooO00o;->OooO0O0:Z

    return-void
.end method
