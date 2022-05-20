.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ModeSelector;
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
    name = "ModeSelector"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa3


# virtual methods
.method public abstract onRestore()V
.end method

.method public abstract setModeLayoutVisibility(IZ)V
.end method

.method public abstract switchModeOrExternalTipLayout(Z)V
.end method
