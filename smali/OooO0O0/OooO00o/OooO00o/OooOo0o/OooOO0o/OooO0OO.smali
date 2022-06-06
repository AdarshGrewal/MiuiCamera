.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;
.super LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;
.source "ImageLayer.java"


# instance fields
.field public final OooOoOO:Landroid/graphics/Paint;

.field public final OooOoo:Landroid/graphics/Rect;

.field public final OooOoo0:Landroid/graphics/Rect;

.field public OooOooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;-><init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;)V

    new-instance p1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO00o;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO00o;-><init>(I)V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoOO:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoo0:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoo:Landroid/graphics/Rect;

    return-void
.end method

.method private OooO()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOOO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0Oo;->OooOO0O()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v1, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooO()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o()F

    move-result v0

    mul-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o()F

    move-result v0

    mul-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooOOO0:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public OooO00o(Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOoo:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    goto :goto_0

    :cond_0
    new-instance p1, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;

    invoke-direct {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooOOOo;-><init>(LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0O0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooO()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o()F

    move-result v1

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoOO:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOooO:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;

    if-eqz p3, :cond_1

    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoOO:Landroid/graphics/Paint;

    invoke-virtual {p3}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o;->OooO0o()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoo0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoo0:Landroid/graphics/Rect;

    iget-object p3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoo:Landroid/graphics/Rect;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0OO;->OooOoOO:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method
