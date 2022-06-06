.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;
.super Ljava/lang/Object;
.source "ShapePath.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:I

.field public final OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;

.field public final OooO0Oo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO00o:Ljava/lang/String;

    iput p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO0O0:I

    iput-object p3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;

    iput-boolean p4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;
    .locals 1

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;

    invoke-direct {v0, p1, p2, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOo;-><init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;)V

    return-object v0
.end method

.method public OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0O0()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0oo;

    return-object v0
.end method

.method public OooO0OO()Z
    .locals 1

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO0Oo:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOOO;->OooO0O0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
