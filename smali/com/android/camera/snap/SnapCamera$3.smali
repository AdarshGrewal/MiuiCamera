.class public Lcom/android/camera/snap/SnapCamera$3;
.super Landroid/os/Handler;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapCamera;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/snap/SnapCamera;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$3;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/snap/SnapCamera$3;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {p1}, Lcom/android/camera/snap/SnapCamera;->access$500(Lcom/android/camera/snap/SnapCamera;)Lcom/android/camera/snap/ISnapListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/snap/ISnapListener;->executeCapture()V

    :cond_0
    return-void
.end method
