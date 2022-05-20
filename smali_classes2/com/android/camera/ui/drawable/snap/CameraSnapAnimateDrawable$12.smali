.class public Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;
.super Lmiuix/view/animation/CubicEaseInInterpolator;
.source "CameraSnapAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->finishRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseInInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->updateValue(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$600(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 4
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$12;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method
