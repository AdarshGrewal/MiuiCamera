.class public Lcom/android/camera/ui/VerticalAlignImageSpan;
.super Landroid/text/style/ImageSpan;
.source "VerticalAlignImageSpan.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    int-to-float p4, p7

    .line 3
    iget p6, p3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr p6, p4

    add-float/2addr p6, p4

    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr p6, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p6, p3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p3, p3

    .line 6
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
