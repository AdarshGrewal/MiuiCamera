.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;
.super Ljava/lang/Object;
.source "FloatParser.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
