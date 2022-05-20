.class public abstract LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0o0;
.implements LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;
.implements LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o;


# static fields
.field public static final OooOo:I = 0x10

.field public static final OooOo0o:I = 0x2

.field public static final OooOoO:I = 0x13

.field public static final OooOoO0:I = 0x1


# instance fields
.field public final OooO:Landroid/graphics/RectF;

.field public final OooO00o:Landroid/graphics/Path;

.field public final OooO0O0:Landroid/graphics/Matrix;

.field public final OooO0OO:Landroid/graphics/Paint;

.field public final OooO0Oo:Landroid/graphics/Paint;

.field public final OooO0o:Landroid/graphics/Paint;

.field public final OooO0o0:Landroid/graphics/Paint;

.field public final OooO0oO:Landroid/graphics/Paint;

.field public final OooO0oo:Landroid/graphics/RectF;

.field public final OooOO0:Landroid/graphics/RectF;

.field public final OooOO0O:Landroid/graphics/RectF;

.field public final OooOO0o:Ljava/lang/String;

.field public final OooOOO:LOooO00o/OooO00o/OooO00o/OooO0oo;

.field public final OooOOO0:Landroid/graphics/Matrix;

.field public final OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

.field public OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

.field public OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

.field public OooOOo0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

.field public OooOOoo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

.field public final OooOo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "**>;>;"
        }
    .end annotation
.end field

.field public OooOo0O:Z


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;-><init>(I)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    .line 5
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo:Landroid/graphics/Paint;

    .line 6
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0:Landroid/graphics/Paint;

    .line 7
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;

    invoke-direct {v0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;-><init>(I)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o:Landroid/graphics/Paint;

    .line 8
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO00o;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oO:Landroid/graphics/Paint;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0O:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO0:Landroid/graphics/Matrix;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo00:Ljava/util/List;

    .line 15
    iput-boolean v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0O:Z

    .line 16
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO:LOooO00o/OooO00o/OooO00o/OooO0oo;

    .line 17
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0o:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO0O0;

    move-result-object p1

    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO0O0;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO0O0;

    if-ne p1, v0, :cond_0

    .line 20
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 22
    :goto_0
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOo0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    .line 23
    invoke-virtual {p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 24
    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0o0()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0o0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    new-instance p1, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0o0()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;-><init>(Ljava/util/List;)V

    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    .line 26
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 27
    invoke-virtual {p2, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    goto :goto_1

    .line 28
    :cond_1
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0OO()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 29
    invoke-virtual {p0, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    .line 30
    invoke-virtual {p2, p0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    goto :goto_2

    .line 31
    :cond_2
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo()V

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;
    .locals 2

    .line 2
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO0O0;->OooO00o:[I

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO00o;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0Oo()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO00o;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO0O0(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 4
    :pswitch_0
    new-instance p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oo;

    invoke-direct {p2, p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oo;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V

    return-object p2

    .line 5
    :pswitch_1
    new-instance p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o0;

    invoke-direct {p2, p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o0;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V

    return-object p2

    .line 6
    :pswitch_2
    new-instance p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;

    invoke-direct {p2, p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V

    return-object p2

    .line 7
    :pswitch_3
    new-instance p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oO;

    invoke-direct {p2, p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oO;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V

    return-object p2

    .line 8
    :pswitch_4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;

    .line 9
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOO0O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooO0OO(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0O0;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;Ljava/util/List;LOooO00o/OooO00o/OooO00o/OooO0o;)V

    return-object v0

    .line 10
    :pswitch_5
    new-instance p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o;

    invoke-direct {p2, p1, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0o;-><init>(LOooO00o/OooO00o/OooO00o/OooO0oo;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Z)V

    return-void
.end method

.method private OooO00o(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "Layer#clearLayer"

    .line 74
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float v7, v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v3

    iget-object v9, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oO:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method private OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 9

    const-string v0, "Layer#saveLayer"

    .line 97
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-static {p1, v1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_0

    .line 100
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 101
    :cond_0
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 102
    :goto_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 103
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;

    .line 104
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 105
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 106
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO0O0;->OooO0O0:[I

    invoke-virtual {v6}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xff

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 107
    :cond_1
    invoke-virtual {v6}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 108
    invoke-direct/range {v3 .. v8}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    goto/16 :goto_1

    :cond_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 109
    invoke-direct/range {v3 .. v8}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v6}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 111
    invoke-direct/range {v3 .. v8}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    goto :goto_1

    :cond_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 112
    invoke-direct/range {v3 .. v8}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    .line 113
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 116
    :cond_6
    invoke-virtual {v6}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 117
    invoke-direct/range {v3 .. v8}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    goto :goto_1

    :cond_7
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 118
    invoke-direct/range {v3 .. v8}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    goto :goto_1

    .line 119
    :cond_8
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    const-string p2, "Layer#restoreLayer"

    .line 122
    invoke-static {p2}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    invoke-static {p2}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method private OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            "Landroid/graphics/Path;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 126
    iget-object p4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 127
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 128
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    .line 77
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 80
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;

    .line 81
    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    .line 82
    invoke-virtual {v5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    .line 83
    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 84
    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 85
    sget-object v5, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO0O0;->OooO0O0:[I

    invoke-virtual {v4}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v4}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO0Oo()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 87
    :cond_2
    :goto_1
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0O:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_3

    .line 88
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO:Landroid/graphics/RectF;

    iget-object v5, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0O:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 89
    :cond_3
    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0O:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 90
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0O:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0O:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 92
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0O:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 94
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    .line 95
    :cond_5
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 96
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    return-void
.end method

.method private OooO00o(Z)V
    .locals 1

    .line 130
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0O:Z

    if-eq p1, v0, :cond_0

    .line 131
    iput-boolean p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0O:Z

    .line 132
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oO()V

    :cond_0
    return-void
.end method

.method private OooO0O0(F)V
    .locals 2

    .line 4
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO:LOooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->OooO0o()LOooO00o/OooO00o/OooO00o/OooO0o;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0o;->OooOO0o()LOooO00o/OooO00o/OooO00o/OooOOo0;

    move-result-object v0

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0oO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO00o/OooO00o/OooOOo0;->OooO00o(Ljava/lang/String;F)V

    return-void
.end method

.method private OooO0O0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            "Landroid/graphics/Path;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 12
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo:Landroid/graphics/Paint;

    invoke-static {p1, p3, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 14
    iget-object p4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 15
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 16
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooO0O0(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 6
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO0O0;

    move-result-object v0

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO0O0;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo$OooO0O0;

    if-ne v0, v1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 10
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 11
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private OooO0OO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            "Landroid/graphics/Path;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-static {p1, p3, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    invoke-virtual {p4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 4
    iget-object p4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 5
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 6
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooO0Oo(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            "Landroid/graphics/Path;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo:Landroid/graphics/Paint;

    invoke-static {p1, p3, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    invoke-virtual {p4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 6
    iget-object p4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 7
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 8
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooO0o()V
    .locals 2

    .line 5
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOoo:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOoo:Ljava/util/List;

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOoo:Ljava/util/List;

    .line 9
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    :goto_0
    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOoo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private OooO0o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            "Landroid/graphics/Path;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 2
    iget-object p4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 3
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 4
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private OooO0o0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0o;",
            "Landroid/graphics/Path;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0:Landroid/graphics/Paint;

    invoke-static {p1, p3, v0}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p5}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    invoke-virtual {p4}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 8
    iget-object p4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 9
    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 10
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o:Landroid/graphics/Path;

    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private OooO0o0()Z
    .locals 4

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO0O0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;->OooO00o()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    move-result-object v2

    sget-object v3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private OooO0oO()V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO:LOooO00o/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    return-void
.end method

.method private OooO0oo()V
    .locals 4

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    .line 3
    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0OO()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;-><init>(Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0oo()V

    .line 5
    new-instance v2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO00o;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO00o;-><init>(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;)V

    invoke-virtual {v0, v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;)V

    .line 6
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Z)V

    .line 7
    invoke-virtual {p0, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-direct {p0, v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 0

    .line 11
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oO()V

    return-void
.end method

.method public OooO00o(F)V
    .locals 3

    .line 133
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0(F)V

    .line 134
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 135
    :goto_0
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 136
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    invoke-virtual {v2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v2, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOo00()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOo00()F

    move-result v0

    div-float/2addr p1, v0

    .line 139
    :cond_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOo00()F

    move-result v0

    .line 141
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    mul-float/2addr v0, p1

    invoke-virtual {v2, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(F)V

    .line 142
    :cond_2
    :goto_1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 143
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo00:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    invoke-virtual {v0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO00o(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "I",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO0OO(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;

    move-result-object p4

    .line 147
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p4, p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO0Oo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;->OooO0O0(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V

    :cond_2
    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)V
    .locals 0

    .line 12
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    return-void
.end method

.method public OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 23
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0o:Ljava/lang/String;

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 24
    iget-boolean v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0O:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOo0O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 25
    :cond_0
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o()V

    const-string v0, "Layer#parentMatrix"

    .line 26
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 28
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 29
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOoo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 30
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOoo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    iget-object v3, v3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 32
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0OO()LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 33
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO()Z

    move-result v0

    if-nez v0, :cond_3

    .line 34
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 35
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 37
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 38
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0o:Ljava/lang/String;

    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    .line 39
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 41
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 42
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 43
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 44
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v2

    if-nez v2, :cond_4

    .line 45
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 46
    :cond_4
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 47
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Layer#saveLayer"

    .line 48
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 51
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 52
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/Canvas;)V

    .line 53
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 55
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 56
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0OO()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 58
    :cond_5
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0Oo()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_6

    const-string v1, "Layer#drawMatte"

    .line 59
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    iget-object v4, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o:Landroid/graphics/Paint;

    const/16 v5, 0x13

    invoke-static {p1, v3, v4, v5}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 62
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 63
    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    invoke-virtual {v0, p1, p2, p3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 65
    invoke-static {v2}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 67
    invoke-static {v2}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 68
    invoke-static {v1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 69
    :cond_6
    invoke-static {v2}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    invoke-static {v2}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    .line 72
    :cond_7
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0o:Ljava/lang/String;

    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0O0(F)V

    return-void

    .line 73
    :cond_8
    :goto_2
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOO0o:Ljava/lang/String;

    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 14
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0o()V

    .line 16
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO0:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 17
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOoo:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 19
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO0:Landroid/graphics/Matrix;

    iget-object p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOoo:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    iget-object p3, p3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p3}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    if-eqz p1, :cond_1

    .line 21
    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO0:Landroid/graphics/Matrix;

    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 22
    :cond_1
    iget-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO0:Landroid/graphics/Matrix;

    iget-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO0O0()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public OooO00o(Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TT;>;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo0:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;

    invoke-virtual {v0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOO;->OooO00o(Ljava/lang/Object;LOooO00o/OooO00o/OooO00o/OooOoOO/OooOO0;)Z

    return-void
.end method

.method public OooO00o(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public OooO0O0()LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    return-object v0
.end method

.method public OooO0O0(LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "**>;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOo00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0(LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;ILjava/util/List;LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "I",
            "Ljava/util/List<",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ">;",
            "LOooO00o/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public OooO0O0(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)V
    .locals 0

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    return-void
.end method

.method public abstract OooO0O0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public OooO0OO()Z
    .locals 1

    .line 9
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOo:LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0oO;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOo0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
