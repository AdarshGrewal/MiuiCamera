.class public Lcom/android/camera/fragment/lighting/FragmentLightView$3;
.super Ljava/lang/Object;
.source "FragmentLightView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/lighting/FragmentLightView;->consumeResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

.field public final synthetic val$currentLightingView:Lcom/android/camera/ui/LightingView;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/lighting/FragmentLightView;Lcom/android/camera/ui/LightingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$3;->this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

    iput-object p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$3;->val$currentLightingView:Lcom/android/camera/ui/LightingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$3;->this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

    invoke-static {v0}, Lcom/android/camera/fragment/lighting/FragmentLightView;->access$300(Lcom/android/camera/fragment/lighting/FragmentLightView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$3;->val$currentLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateSuccess()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$3;->val$currentLightingView:Lcom/android/camera/ui/LightingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LightingView;->triggerAnimateFocusing()V

    :goto_0
    return-void
.end method
