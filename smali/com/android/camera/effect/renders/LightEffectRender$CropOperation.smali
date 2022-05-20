.class public Lcom/android/camera/effect/renders/LightEffectRender$CropOperation;
.super Ljava/lang/Object;
.source "LightEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/LightEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CropOperation"
.end annotation


# instance fields
.field public matrix:Landroid/graphics/Matrix;

.field public rect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/camera/effect/renders/LightEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/LightEffectRender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/LightEffectRender$CropOperation;->this$0:Lcom/android/camera/effect/renders/LightEffectRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/effect/renders/LightEffectRender;Lcom/android/camera/effect/renders/LightEffectRender$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/LightEffectRender$CropOperation;-><init>(Lcom/android/camera/effect/renders/LightEffectRender;)V

    return-void
.end method
