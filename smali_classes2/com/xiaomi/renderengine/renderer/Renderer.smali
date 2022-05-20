.class public abstract Lcom/xiaomi/renderengine/renderer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# instance fields
.field public mIsEnabled:Z

.field public mIsInit:Z

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    return-void
.end method

.method public onCameraSwitch(Z)V
    .locals 0

    return-void
.end method

.method public onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    return-void
.end method

.method public onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSizeChange(II)V
    .locals 0

    return-void
.end method

.method public onSurfaceChange(I)V
    .locals 0

    return-void
.end method
