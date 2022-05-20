.class public Lcom/miui/extravideo/interpolation/VideoInterpolator$2;
.super Ljava/lang/Object;
.source "VideoInterpolator.java"

# interfaces
.implements Lcom/miui/extravideo/interpolation/EncodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extravideo/interpolation/VideoInterpolator;->doDecodeAndEncodeSyncWithWatermark(IILjava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;[FZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field public final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field public final synthetic val$success:[Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;[ZLjava/util/concurrent/locks/Condition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$success:[Z

    iput-object p3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$success:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method

.method public onError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$success:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolator$2;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method
