.class public Lcom/android/camera/ui/DragLayout$2;
.super Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/DragLayout;->shrink(ZLjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/DragLayout;

.field public final synthetic val$finishCb:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/DragLayout;Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/DragLayout$2;->this$0:Lcom/android/camera/ui/DragLayout;

    iput-object p3, p0, Lcom/android/camera/ui/DragLayout$2;->val$finishCb:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;-><init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->onEnd()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout$2;->val$finishCb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
