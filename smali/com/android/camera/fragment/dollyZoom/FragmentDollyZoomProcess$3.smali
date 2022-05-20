.class public Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$3;
.super Ljava/lang/Object;
.source "FragmentDollyZoomProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->showShareSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$3;->this$0:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "value_dolly_zoom_click_play_cancel"

    .line 1
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$3;->this$0:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->access$400(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)Z

    return-void
.end method
