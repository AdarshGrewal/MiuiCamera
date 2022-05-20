.class public Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "CameraItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/render/CameraItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShrinkAnimListener"
.end annotation


# instance fields
.field public final mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field public final srcRenderArea:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->mAttri:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public animatePreview(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->shrinkRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 3
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-direct {v2, v3, v0, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    sget-object p1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$900(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/CameraItem;->access$900(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p2

    iget-boolean p2, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->animatePreview(F)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$702(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    .line 5
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$1002(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    :cond_0
    return-void
.end method
