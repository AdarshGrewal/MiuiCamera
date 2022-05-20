.class public LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# instance fields
.field public final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0O0:C

.field public final OooO0OO:D

.field public final OooO0Oo:D

.field public final OooO0o:Ljava/lang/String;

.field public final OooO0o0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO00o:Ljava/util/List;

    .line 3
    iput-char p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0O0:C

    .line 4
    iput-wide p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0OO:D

    .line 5
    iput-wide p5, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0Oo:D

    .line 6
    iput-object p7, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0o0:Ljava/lang/String;

    .line 7
    iput-object p8, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0o:Ljava/lang/String;

    return-void
.end method

.method public static OooO00o(CLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public OooO00o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO00o:Ljava/util/List;

    return-object v0
.end method

.method public OooO0O0()D
    .locals 2

    .line 1
    iget-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0OO:D

    return-wide v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0Oo()D
    .locals 2

    .line 1
    iget-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0Oo:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-char v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0O0:C

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0o:Ljava/lang/String;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO0o0:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0Oo;->OooO00o(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
