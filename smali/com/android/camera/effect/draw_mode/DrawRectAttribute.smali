.class public Lcom/android/camera/effect/draw_mode/DrawRectAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawRectAttribute.java"


# instance fields
.field public mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

.field public mHeight:F

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mX:F

    .line 4
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mY:F

    .line 5
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mWidth:F

    .line 6
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mHeight:F

    .line 7
    iput-object p5, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method


# virtual methods
.method public init(FFFFLcom/android/gallery3d/ui/GLPaint;)Lcom/android/camera/effect/draw_mode/DrawRectAttribute;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mX:F

    .line 2
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mY:F

    .line 3
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mWidth:F

    .line 4
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mHeight:F

    .line 5
    iput-object p5, p0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-object p0
.end method
