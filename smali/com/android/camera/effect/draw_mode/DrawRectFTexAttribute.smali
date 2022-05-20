.class public Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawRectFTexAttribute.java"


# instance fields
.field public mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mSourceRectF:Landroid/graphics/RectF;

.field public mTargetRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mSourceRectF:Landroid/graphics/RectF;

    .line 3
    iput-object p3, p0, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mTargetRectF:Landroid/graphics/RectF;

    .line 4
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 p1, 0x7

    .line 5
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method
