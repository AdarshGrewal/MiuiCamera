.class public Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;
.super Landroid/view/View;
.source "MusicFrameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/music/MusicFrameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070600

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/music/MusicFrameAdapter$ItemView;->mWidth:I

    return-void
.end method
