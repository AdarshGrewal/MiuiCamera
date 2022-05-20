.class public Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "CameraItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/render/CameraItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderTypeChangeAnimListener"
.end annotation


# instance fields
.field public final dstRenderArea:Landroid/graphics/Rect;

.field public final srcRenderArea:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/RegionHelper;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public animatePreview(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->srcRenderArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->dstRenderArea:Landroid/graphics/Rect;

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    invoke-static {v0, v1, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->mixArea(Landroid/graphics/Rect;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 3
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-static {v1, v2, v3, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    sget-object p1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {v2, v3, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V

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
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItem;->access$1100(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/CameraItem;->access$1100(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p2

    iget-boolean p2, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->animatePreview(F)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;->this$0:Lcom/android/camera/dualvideo/render/CameraItem;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->access$702(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z

    :cond_0
    return-void
.end method
