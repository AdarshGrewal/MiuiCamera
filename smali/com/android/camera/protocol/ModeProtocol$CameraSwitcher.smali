.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraSwitcher"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xb7


# virtual methods
.method public abstract changeCamera(Landroid/view/View;)V
.end method

.method public abstract forceSwitchFront()Z
.end method

.method public abstract onSwitchCameraPicker()V
.end method
