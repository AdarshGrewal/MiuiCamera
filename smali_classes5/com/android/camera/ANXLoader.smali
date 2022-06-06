.class public Lcom/android/camera/ANXLoader;
.super Ljava/lang/Object;
.source "ANXLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ANXLoader$InternalLoader;
    }
.end annotation


# instance fields
.field public endTime:F

.field public loaded:Z


# direct methods
.method public constructor <init>(F)V
    .locals 3
    .param p1, "startTime"    # F

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "anx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ANXLoader;->endTime:F

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ANXLoader;->endTime:F

    sub-float/2addr v1, p1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "mS\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANX"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ANXLoader;->loaded:Z

    .line 13
    return-void
.end method

.method public static Load()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/android/camera/ANXLoader$InternalLoader;->Load()Z

    move-result v0

    return v0
.end method
