.class public Lcom/android/camera/module/Panorama3Module$2;
.super Lcom/android/camera/SensorStateManager$SensorStateAdapter;
.source "Panorama3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$SensorStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/SensorStateManager$SensorStateAdapter;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0oOO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$2;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/SensorFusion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/panorama/SensorFusion;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_1
    return-void
.end method
