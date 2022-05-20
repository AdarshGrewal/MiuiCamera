.class public Lcom/android/camera/ui/InnerSpringImageView;
.super Landroid/widget/ImageView;
.source "InnerSpringImageView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mSavedLayer:Landroid/graphics/RectF;

.field public mTranX:F

.field public mTranY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/InnerSpringImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/InnerSpringImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/InnerSpringImageView;->mSavedLayer:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/InnerSpringImageView;->mSavedLayer:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/InnerSpringImageView;->mSavedLayer:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/InnerSpringImageView;->mSavedLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/ui/InnerSpringImageView;->mTranX:F

    iget v2, p0, Lcom/android/camera/ui/InnerSpringImageView;->mTranY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/android/camera/ui/InnerSpringImageView;->mSavedLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public updateXY(FF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/InnerSpringImageView;->mTranX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/InnerSpringImageView;->mTranY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/InnerSpringImageView;->mTranX:F

    .line 3
    iput p2, p0, Lcom/android/camera/ui/InnerSpringImageView;->mTranY:F

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method
