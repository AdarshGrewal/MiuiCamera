.class public Lcom/android/camera/effect/draw_mode/DrawLineAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawLineAttribute.java"


# instance fields
.field public mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

.field public mX1:F

.field public mX2:F

.field public mY1:F

.field public mY2:F


# direct methods
.method public constructor <init>(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mX1:F

    .line 3
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mY1:F

    .line 4
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mX2:F

    .line 5
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mY2:F

    .line 6
    iput-object p5, p0, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method
