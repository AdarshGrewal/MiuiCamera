.class public final Lcom/xiaomi/compat/manager/InputManagerCompat;
.super Ljava/lang/Object;
.source "InputManagerCompat.java"


# static fields
.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectInputEvent(Landroid/hardware/input/InputManager;Landroid/view/InputEvent;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method
