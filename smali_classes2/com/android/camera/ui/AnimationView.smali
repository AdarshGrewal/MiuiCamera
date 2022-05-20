.class public Lcom/android/camera/ui/AnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AnimationView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AnimationView"


# instance fields
.field public final bitmapRect:Landroid/graphics/Rect;

.field public cornersState:F

.field public drawBitmap:Landroid/graphics/Bitmap;

.field public final path:Landroid/graphics/Path;

.field public final viewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/AnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/AnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/AnimationView;->viewRect:Landroid/graphics/RectF;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/AnimationView;->bitmapRect:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/AnimationView;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/AnimationView;->cornersState:F

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/AnimationView;->cornersState:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->drawBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/AnimationView;->bitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/AnimationView;->viewRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/ui/AnimationView;->drawBitmap:Landroid/graphics/Bitmap;

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setImageBitmap: bitmapRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", view size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnimationView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setProgress(F)V
    .locals 12

    .line 1
    iput p1, p0, Lcom/android/camera/ui/AnimationView;->cornersState:F

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/AnimationView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/AnimationView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 4
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/camera/ui/AnimationView;->cornersState:F

    mul-float v10, p1, v0

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/AnimationView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    sub-float p1, v3, v8

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    cmpl-float v0, v3, v8

    if-lez v0, :cond_0

    .line 7
    iget-object v4, p0, Lcom/android/camera/ui/AnimationView;->path:Landroid/graphics/Path;

    iget v0, p0, Lcom/android/camera/ui/AnimationView;->cornersState:F

    mul-float v5, p1, v0

    const/4 v6, 0x0

    mul-float/2addr p1, v0

    sub-float v7, v3, p1

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/ui/AnimationView;->cornersState:F

    mul-float v4, p1, v2

    mul-float/2addr p1, v2

    sub-float p1, v8, p1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v4

    move v4, p1

    move v5, v10

    move v6, v10

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/AnimationView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setUp(Landroid/graphics/RectF;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->viewRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    neg-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setUp: start = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bitmapRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/ui/AnimationView;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnimationView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
