.class public LOooO00o/OooO00o/OooO00o/OooOoO/OooO0OO;
.super Ljava/lang/Object;
.source "LogcatLogger.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOO0O;


# static fields
.field public static final OooO00o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0OO;->OooO00o:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0OO;->OooO0OO(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-boolean v0, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o:Z

    if-eqz v0, :cond_0

    const-string v0, "LOTTIE"

    .line 3
    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0OO;->OooO0O0(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0OO;->OooO00o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LOTTIE"

    .line 3
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    sget-object p2, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0OO;->OooO00o:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0OO(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o:Z

    if-eqz v0, :cond_0

    const-string v0, "LOTTIE"

    .line 2
    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
