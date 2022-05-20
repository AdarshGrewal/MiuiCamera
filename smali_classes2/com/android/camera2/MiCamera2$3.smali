.class public Lcom/android/camera2/MiCamera2$3;
.super Ljava/lang/Object;
.source "MiCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2;->prepareRawImageReader(Lcom/android/camera/CameraSize;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2$3;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImageAvailable: raw"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2$3;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$1000(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera2/MiCamera2;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onImageAvailable: NO raw image processor!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2$3;->this$0:Lcom/android/camera2/MiCamera2;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2;->access$1000(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/camera2/MiCamera2Shot;->onImageReceived(Landroid/media/Image;I)V

    return-void
.end method
