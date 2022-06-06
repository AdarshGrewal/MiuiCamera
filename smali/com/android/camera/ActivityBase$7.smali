.class public Lcom/android/camera/ActivityBase$7;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$NailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget v0, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    return v0
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isKeptBitmapTexture()Z

    move-result v0

    return v0
.end method

.method public onFrameAvailable(I)V
    .locals 7

    const-string v0, "ActivityBase"

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-wide v3, v3, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-wide v5, v5, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackStartAppCost(J)V

    iget-object v5, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v5}, Lcom/android/camera/ActivityBase;->access$200(Lcom/android/camera/ActivityBase;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {v5}, Lcom/android/camera/ActivityBase;->access$200(Lcom/android/camera/ActivityBase;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackAppLunchTimeEnd(Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/android/camera/statistic/ScenarioTrackUtil;->sLaunchTimeScenario:Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;

    invoke-static {v5}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackScenarioAbort(Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;)V

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFrameAvailable: trackStartAppCost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", start time: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-wide v5, v3, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", now: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iput-wide v1, v0, Lcom/android/camera/ActivityBase;->mAppStartTime:J

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-wide v3, v3, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-wide v5, v5, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    sub-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFrameAvailable: trackModeSwitchCost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iput-wide v1, v0, Lcom/android/camera/ActivityBase;->mModeSwitchTime:J

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->dismissBlurCover()V

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->notifyOnFirstFrameArrived(I)V

    return-void
.end method

.method public onPreviewPixelsRead([BIIIZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/module/Module;->onPreviewPixelsRead([BIIIZ)V

    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceTextureCreated surfaceTexture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityBase"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTexturePending(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onSurfaceTexturePending(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureReleased()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onSurfaceTextureReleased()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ActivityBase;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    iget-object v0, p0, Lcom/android/camera/ActivityBase$7;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    :cond_0
    return-void
.end method
