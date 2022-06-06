.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;


# instance fields
.field public final OooO00o:Z

.field public final OooO0O0:Landroid/graphics/Path$FillType;

.field public final OooO0OO:Ljava/lang/String;

.field public final OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

.field public final OooO0o:Z

.field public final OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0OO:Ljava/lang/String;

    iput-boolean p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO00o:Z

    iput-object p3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0O0:Landroid/graphics/Path$FillType;

    iput-object p4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    iput-object p5, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    iput-boolean p6, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;
    .locals 1

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;

    invoke-direct {v0, p1, p2, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;-><init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;)V

    return-object v0
.end method

.method public OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    return-object v0
.end method

.method public OooO0O0()Landroid/graphics/Path$FillType;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0O0:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0Oo()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    return-object v0
.end method

.method public OooO0o0()Z
    .locals 1

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO00o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
