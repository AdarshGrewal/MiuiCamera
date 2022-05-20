.class public Lcom/android/camera2/autozoom/AutoZoomView$2;
.super Ljava/lang/Object;
.source "AutoZoomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/autozoom/AutoZoomView;

.field public final synthetic val$visibility:I


# direct methods
.method public constructor <init>(Lcom/android/camera2/autozoom/AutoZoomView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    iput p2, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    iget-object v0, v0, Lcom/android/camera2/autozoom/AutoZoomView;->mTrackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->access$002(Lcom/android/camera2/autozoom/AutoZoomView;I)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->access$102(Lcom/android/camera2/autozoom/AutoZoomView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 4
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-static {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->access$202(Lcom/android/camera2/autozoom/AutoZoomView;[I)[I

    .line 5
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-static {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->access$302(Lcom/android/camera2/autozoom/AutoZoomView;[I)[I

    .line 6
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/camera2/autozoom/AutoZoomView;->access$402(Lcom/android/camera2/autozoom/AutoZoomView;J)J

    .line 7
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-static {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->access$502(Lcom/android/camera2/autozoom/AutoZoomView;[I)[I

    .line 8
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget v1, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->val$visibility:I

    if-eq v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView$2;->this$0:Lcom/android/camera2/autozoom/AutoZoomView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
