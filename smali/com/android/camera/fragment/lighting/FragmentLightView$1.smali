.class public Lcom/android/camera/fragment/lighting/FragmentLightView$1;
.super Ljava/lang/Object;
.source "FragmentLightView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/lighting/FragmentLightView;->mimojiFaceDetect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

.field public final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/lighting/FragmentLightView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$1;->this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

    iput p2, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$1;->this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

    iget v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$1;->val$result:I

    invoke-static {v0, v1}, Lcom/android/camera/fragment/lighting/FragmentLightView;->access$002(Lcom/android/camera/fragment/lighting/FragmentLightView;I)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$1;->this$0:Lcom/android/camera/fragment/lighting/FragmentLightView;

    iget v1, p0, Lcom/android/camera/fragment/lighting/FragmentLightView$1;->val$result:I

    const/16 v2, 0xa0

    invoke-static {v0, v2, v1}, Lcom/android/camera/fragment/lighting/FragmentLightView;->access$100(Lcom/android/camera/fragment/lighting/FragmentLightView;II)V

    return-void
.end method
