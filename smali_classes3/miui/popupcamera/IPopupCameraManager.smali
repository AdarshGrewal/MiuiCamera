.class public interface abstract Lmiui/popupcamera/IPopupCameraManager;
.super Ljava/lang/Object;
.source "IPopupCameraManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/popupcamera/IPopupCameraManager$Stub;,
        Lmiui/popupcamera/IPopupCameraManager$Default;
    }
.end annotation


# virtual methods
.method public abstract calibrationMotor()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMotorStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyCameraStatus(IILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract popupMotor()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract takebackMotor()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
