.class public LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;
.super Ljava/lang/Object;
.source "ShapeGroup.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0OO:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO00o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO0O0:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;
    .locals 1

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;

    invoke-direct {v0, p1, p2, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0Oo;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;)V

    return-object v0
.end method

.method public OooO00o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO0O0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0OO()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO0OO:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeGroup{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO;->OooO0O0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
