.class public Lcom/android/camera/dualvideo/render/CameraItemManager;
.super Ljava/lang/Object;
.source "CameraItemManager.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "CameraItemManager"


# instance fields
.field public final mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

.field public final mRenderLocker:Ljava/lang/Object;

.field public final mRenderSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/RenderSource;",
            ">;"
        }
    .end annotation
.end field

.field public final mRenderableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/CameraItemInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/RenderSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderSource:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    new-instance p1, Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->getUIStyle()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/dualvideo/render/RegionHelper;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderSource;)Lcom/android/gallery3d/ui/ExtTexture;
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/RenderSource;->getTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->enterOrExit(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOoo;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOoo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOoo;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOoo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic OooO00o(IILcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p2, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p2

    iget-object p2, p2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO00o(ILcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete render source:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItemManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->release()V

    :cond_1
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/camera/dualvideo/render/RenderSource;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RenderSource;->getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userdata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraItemManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0oO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOOO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOOO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method public static synthetic OooOO0O(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooOO0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic OooOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooOOO0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooOOOO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooOOOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "printRenderList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraItemManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooOOo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooOOo0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {p0, v2, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    :goto_0
    return-void
.end method

.method public static synthetic OooOOoo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method public static synthetic OooOo00(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/render/CameraItemManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/render/CameraItemManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/dualvideo/render/CameraItemManager;)Lcom/android/camera/dualvideo/render/RegionHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    return-object p0
.end method

.method private createCameraItem(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/CameraItem;
    .locals 3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OO0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getFaceType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v1

    invoke-direct {v0, p1, p1, v1}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/FaceType;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->alphaInGridWindowFlag(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->getRecordType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getFaceType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/camera/dualvideo/render/CameraItem;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/FaceType;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initCameraItemAttri(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initSelected(Lcom/android/camera/dualvideo/render/CameraItem;)V

    return-object v0
.end method

.method private deleteRedundantCameraItem(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOOO;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateRenderableList(Z)V

    return-void
.end method

.method private getFaceTypeByCameraTag(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/camera/dualvideo/render/FaceType;
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    :goto_0
    return-object p1
.end method

.method private getIndexBySelelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0o;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0o;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO0O0;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object p1
.end method

.method private getRenderTypeBySelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooo00;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooo00;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000ooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000ooO;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p1
.end method

.method private getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderSource:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderSource:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooooO0;

    invoke-direct {v2, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooooO0;-><init>(Lcom/android/camera/dualvideo/util/RenderSourceType;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOO0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/ui/ExtTexture;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "RenderSource is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleTouch(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 9

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo00;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getPresentZoom(Lcom/android/camera/dualvideo/render/LayoutType;)F

    move-result v3

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne v4, v5, :cond_1

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0oO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0oO;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    const-string v6, "front"

    const-string v7, "X"

    const-string v8, "CameraItemManager"

    if-ne v4, v5, :cond_3

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoo;

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOo0;

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p1, v1, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", index from 1 to 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v4, v5, :cond_7

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooO00;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooO00;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p1, v0, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOooo;

    invoke-direct {v5, v1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOooo;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v4, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoO0;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v4, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_2
    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {p1, v1, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", index from 0 to 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private initCameraItemAttri(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$FaceType:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "CameraItemManager"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "initCameraItemAttri: remote"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "initCameraItemAttri: front"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "initCameraItemAttri: back"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    :goto_0
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object v2

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p1, v3, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V

    return-void
.end method

.method private initRenderableList()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRenderableList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItemManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OO0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo000;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo000;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initSelectIndexFromSelectData()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOooO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOooO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private initSelected(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooO0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooO0;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0O0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0O0;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p1, "CameraItemManager"

    const-string v0, "initSelected: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onTouched(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0;

    invoke-direct {v1, p1, p2}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo00o;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo00o;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private removeRenderSource(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItemManager;->deleteRedundantCameraItem(Z)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderSource:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOO0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOO0;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private saveSelectedStatus()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo0O;

    invoke-direct {v2, v0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo0O;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(FLjava/util/List;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p3, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p3

    check-cast p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p3, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget-object v1, v1, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/RectUtil;->scaleRect(Landroid/graphics/Rect;F)V

    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object p3, p3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-direct {p1, v1, p3, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getIndexBySelelectType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/CameraItemInterface;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItemManager;->removeRenderSource(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooo0o;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Ooooo0o;-><init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->createCameraItem(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/CameraItem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->setVisibilityWithAnim(ZZ)V

    const-wide/16 v0, 0xc8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0oo;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0oo;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->createCameraItem(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/CameraItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmRecordLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->handleTouch(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->saveSelectedStatus()V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->createCameraItem(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/CameraItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooO0O;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooO0O;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;Lcom/android/camera/dualvideo/util/UserSelectData;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic OooO0OO(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInGridWindowFlag(Z)V

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$util$SelectIndex:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectedFrame(Z)V

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderTypeBySelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {p1, v0, v1, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :goto_0
    return-void
.end method

.method public synthetic OooO0Oo(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInGridWindowFlag(Z)V

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$util$SelectIndex:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->alphaInSelectedFrame(Z)V

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :goto_0
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setVisibilityWithAnim(ZZ)V

    :cond_2
    return-void
.end method

.method public synthetic OooO0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 5

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-interface {p1, v0}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$FaceType:[I

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto/16 :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto/16 :goto_0

    :cond_2
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_4

    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-ne v3, v2, :cond_5

    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-void

    :cond_5
    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeTexture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " main: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraItemManager"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_6

    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto :goto_0

    :cond_6
    if-ne p1, v1, :cond_7

    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :goto_0
    return-void
.end method

.method public synthetic OooO0o0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :cond_1
    return-void
.end method

.method public addCameraItem()V
    .locals 2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOOo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOOo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public deleteCameraItem(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o000O000;

    invoke-direct {p2, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o000O000;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-static {p2}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo0o;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo0o;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItemManager;->removeRenderSource(Lcom/android/camera/dualvideo/render/CameraItemInterface;Z)V

    :goto_0
    return-void
.end method

.method public expandBottom()V
    .locals 5

    const-string v0, "CameraItemManager"

    const-string v1, "expandBottom: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public expandOrShrinkTop()V
    .locals 7

    const-string v0, "CameraItemManager"

    const-string v1, "expandOrShrinkTop: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :pswitch_1
    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_7

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v4, v5, :cond_7

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :pswitch_3
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto/16 :goto_1

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFullTypeRecordAttri(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/camera/effect/draw_mode/DrawAttribute;
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getTexture(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sget-object v3, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getFaceTypeByCameraTag(Lcom/android/camera/dualvideo/util/RenderSourceType;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p1

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    sget-object v3, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sget-object v5, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v2, v0, p1, v1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    return-object v2
.end method

.method public getRenderableList(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/CameraItemInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initRenderableList()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getRenderableListForRecord()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/effect/draw_mode/DrawAttribute;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->OUTPUT_SIZE:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/ooOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/ooOO;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o000;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o000;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo00O;

    invoke-direct {v3, p0, v2, v1}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo00O;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;FLjava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public getVisibleRenderList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/render/CameraItemInterface;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getRenderableList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/ooOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/ooOO;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o00O0O;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o00O0O;

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMiniCameraItem()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoO;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO00o;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGridWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOO;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public printRenderList()V
    .locals 2

    const-string v0, "CameraItemManager"

    const-string/jumbo v1, "printRenderList: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public refreshSelectStatus()V
    .locals 6

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    sget-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    new-instance v4, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOOo;

    invoke-direct {v4, v3}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOOo;-><init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooooOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooooOO;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public selectItem(Landroid/view/MotionEvent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItemManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->onTouched(II)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000oOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o0000oOo;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooooo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooooo0;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->onKeyDown()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public switchGridToRecordWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->printRenderList()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->getUIStyle()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setDrawRect(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOo0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->initSelectIndexFromSelectData()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoOO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoOO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public switchRecordToGridWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraItemManager"

    const-string/jumbo v1, "switchRecordToGridWindow: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->getUIStyle()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setDrawRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0o0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0o0;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o000oOoO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/o000oOoO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public switchTopBottom()Z
    .locals 6

    const-string v0, "CameraItemManager"

    const-string/jumbo v1, "switchTopBottom "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOo0;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/camera/dualvideo/render/CameraItemManager$2;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :pswitch_3
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :pswitch_4
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_1

    :pswitch_5
    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v3, v4, v5, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    :goto_1
    if-nez v0, :cond_1

    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {v3, v4, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    sget-object v5, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-interface {v3, v4, v1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateMiniWindowLocation(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget-boolean v0, v0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget v1, v1, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget v4, v3, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setStartPosition(FF)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/dualvideo/render/RegionHelper;->updateMarginOffset(II)V

    return v2

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iget-boolean v0, p1, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p1, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->moveToEdge()V

    return v2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v4, v5}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    iput-boolean v2, v1, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    new-instance v3, Lcom/android/camera/dualvideo/render/CameraItemManager$1;

    invoke-direct {v3, p0}, Lcom/android/camera/dualvideo/render/CameraItemManager$1;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/dualvideo/render/RegionHelper;->setListener(Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setStartPosition(FF)V

    return v2

    :cond_5
    return v1
.end method

.method public updateRenderableList(Z)V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0OO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/Oooo0OO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->getVisibleRenderList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRegionHelper:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-interface {v2, v3, p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateRenderlistAnyway(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->updateRenderableList(Z)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItemManager;->refreshSelectStatus()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoo0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOoo0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateTextureId()V
    .locals 2

    const-string v0, "CameraItemManager"

    const-string/jumbo v1, "updateTextureId: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItemManager;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooOOO0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOoO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooOoO;-><init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
