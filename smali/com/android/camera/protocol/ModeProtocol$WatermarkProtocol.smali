.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$Expandable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WatermarkProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xfd


# virtual methods
.method public abstract getDistanceForWM()I
.end method

.method public abstract isWatermarkPanelShow()Z
.end method

.method public abstract requestLocationPermission(Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)V
.end method

.method public abstract startDottedLineAnimation(Landroid/view/View;)V
.end method

.method public abstract switchType(Ljava/lang/String;Z)V
.end method
