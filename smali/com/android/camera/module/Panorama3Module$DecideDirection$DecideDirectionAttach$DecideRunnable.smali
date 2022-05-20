.class public Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecideRunnable"
.end annotation


# instance fields
.field public mThumbnailViewSize:Landroid/util/Size;

.field public final synthetic this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;Landroid/util/Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->mThumbnailViewSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;->this$1:Lcom/android/camera/module/Panorama3Module$DecideDirection;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;->this$1:Lcom/android/camera/module/Panorama3Module$DecideDirection;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$1800(Lcom/android/camera/module/Panorama3Module;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecideRunnable exit request stop"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "go to PanoramaPreview in DecideRunnable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    iget-object v1, v1, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;->this$1:Lcom/android/camera/module/Panorama3Module$DecideDirection;

    iget-object v1, v1, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecideRunnable exit due to mMorphoPanoramaGP3 is null"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    iget-object v1, v1, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;->this$1:Lcom/android/camera/module/Panorama3Module$DecideDirection;

    iget-object v1, v1, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance v2, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;->this$1:Lcom/android/camera/module/Panorama3Module$DecideDirection;

    iget-object v3, v3, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->mThumbnailViewSize:Landroid/util/Size;

    invoke-direct {v2, v3, v4}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;-><init>(Lcom/android/camera/module/Panorama3Module;Landroid/util/Size;)V

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$602(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/PanoramaState;)Lcom/android/camera/panorama/PanoramaState;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;->this$1:Lcom/android/camera/module/Panorama3Module$DecideDirection;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$DecideDirection;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/PanoramaState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    iget-object v1, v1, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;->this$1:Lcom/android/camera/module/Panorama3Module$DecideDirection;

    iget-object v1, v1, Lcom/android/camera/panorama/PanoramaState;->listener:Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/PanoramaState;->setPanoramaStateEventListener(Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach$DecideRunnable;->this$2:Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module$DecideDirection$DecideDirectionAttach;->this$1:Lcom/android/camera/module/Panorama3Module$DecideDirection;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaState;->clearListener()V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
