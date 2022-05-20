.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$4;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "CameraSnapPaintItemBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->initLongPressReboundSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$4;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$4;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr p1, v1

    iput p1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentWidth:F

    .line 3
    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->access$000(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
