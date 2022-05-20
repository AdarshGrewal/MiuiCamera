.class public Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

.field public final synthetic val$resultCode:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iput p2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;->this$2:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;->this$1:Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach$1;->val$resultCode:I

    invoke-static {v0, v1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->access$5600(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;I)V

    return-void
.end method
