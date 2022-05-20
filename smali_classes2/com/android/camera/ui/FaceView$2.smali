.class public Lcom/android/camera/ui/FaceView$2;
.super Lmiuix/view/animation/CubicEaseOutInterpolator;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$2;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$2;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {v0}, Lcom/android/camera/ui/FaceView;->access$600(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$2;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {v0}, Lcom/android/camera/ui/FaceView;->access$700(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;

    move-result-object v0

    float-to-double v1, v1

    const-wide v3, 0x4043200000000000L    # 38.25

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$2;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return p1
.end method
