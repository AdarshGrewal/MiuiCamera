.class public LOooO00o/OooO0Oo/OooO00o/OooOO0O;
.super Ljava/lang/Object;
.source "SensitiveNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OooO0Oo:J = 0x1L


# instance fields
.field public final OooO00o:I

.field public final OooO0O0:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "LOooO00o/OooO0Oo/OooO00o/OooOO0o;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:LOooO00o/OooO0Oo/OooO00o/OooOO0O;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0O0:Ljava/util/TreeSet;

    .line 3
    iput p1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO00o:I

    return-void
.end method

.method public constructor <init>(ILOooO00o/OooO0Oo/OooO00o/OooOO0O;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0O0:Ljava/util/TreeSet;

    .line 6
    iput p1, p0, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO00o:I

    .line 7
    iput-object p0, p2, LOooO00o/OooO0Oo/OooO00o/OooOO0O;->OooO0OO:LOooO00o/OooO0Oo/OooO00o/OooOO0O;

    return-void
.end method
