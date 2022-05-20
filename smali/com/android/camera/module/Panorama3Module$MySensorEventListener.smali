.class public Lcom/android/camera/module/Panorama3Module$MySensorEventListener;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MySensorEventListener"
.end annotation


# instance fields
.field public mRefSensorListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Panorama3Module$SensorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module$SensorListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module$MySensorEventListener;->mRefSensorListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$MySensorEventListener;->mRefSensorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Panorama3Module$SensorListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/camera/module/Panorama3Module$SensorListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
