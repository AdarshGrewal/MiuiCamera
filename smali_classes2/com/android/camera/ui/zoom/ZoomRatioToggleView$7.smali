.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;
.super Ljava/lang/Object;
.source "ZoomRatioToggleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/zoom/ZoomRatioToggleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-static {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$300(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)F

    move-result v0

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f12006c

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$900(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$7;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->access$900(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
