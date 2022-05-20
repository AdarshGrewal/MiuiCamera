.class public Lcom/android/camera/snap/SnapCamera$4;
.super Landroid/view/OrientationEventListener;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$4;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/snap/SnapCamera$4;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v0}, Lcom/android/camera/snap/SnapCamera;->access$600(Lcom/android/camera/snap/SnapCamera;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/snap/SnapCamera;->access$602(Lcom/android/camera/snap/SnapCamera;I)I

    return-void
.end method
