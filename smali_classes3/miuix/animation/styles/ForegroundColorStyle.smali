.class public Lmiuix/animation/styles/ForegroundColorStyle;
.super Lmiuix/animation/styles/PropertyStyle;
.source "ForegroundColorStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/styles/PropertyStyle;-><init>()V

    return-void
.end method

.method public static end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object p0

    .line 4
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, p1, Lmiuix/animation/internal/AnimInfo;->value:D

    double-to-int p1, v0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    :cond_1
    return-void
.end method

.method public static getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;
    .locals 1

    .line 1
    instance-of v0, p0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lmiuix/animation/ViewTarget;

    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isInvalid(Landroid/view/View;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static start(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget p1, p1, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 4
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object p0

    .line 5
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    and-int/2addr p1, v1

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/animation/styles/TintDrawable;->initTintBuffer(I)V

    return-void
.end method
