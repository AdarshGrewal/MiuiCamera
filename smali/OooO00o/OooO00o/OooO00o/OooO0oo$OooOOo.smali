.class public LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;
.super Ljava/lang/Object;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO0oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooOOo"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->OooO00o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->OooO0O0:Ljava/lang/String;

    .line 4
    iput-object p3, p0, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->OooO0OO:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->hashCode()I

    move-result v1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->OooO0OO:Landroid/graphics/ColorFilter;

    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->OooO0OO:Landroid/graphics/ColorFilter;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->OooO00o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x20f

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 3
    :goto_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO0oo$OooOOo;->OooO0O0:Ljava/lang/String;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/2addr v1, v0

    :cond_1
    return v1
.end method
