.class public Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment$1;
.super Ljava/lang/Object;
.source "BokehSmoothLevelFragment.java"

# interfaces
.implements Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;

    invoke-static {p1, p2, p3}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->access$000(Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
