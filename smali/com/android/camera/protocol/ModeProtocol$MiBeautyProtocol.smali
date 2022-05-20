.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$Expandable;
.implements Lcom/android/camera/protocol/ModeProtocol$MenuSwitch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MiBeautyProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xc2


# virtual methods
.method public abstract clearBeauty()V
.end method

.method public abstract dismiss(I)V
.end method

.method public abstract getDistanceForWM()I
.end method

.method public abstract getSupportedBeautyItems(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBeautyPanelShow()Z
.end method

.method public abstract isSkinColorShow()Z
.end method

.method public abstract onStateChanged()V
.end method

.method public abstract resetBeauty()V
.end method
