.class public final LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0OO;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0Oo<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO00o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0OO;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooO00o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooO00o(F)Z
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0O0()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public OooO0O0(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public OooO0OO()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
