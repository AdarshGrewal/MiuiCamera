.class public Lcom/android/camera/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static final SHORT_DURATION_TIMEOUT:J = 0x7d0L

.field public static final TAG:Ljava/lang/String; = "ToastUtils"

.field public static sGravity:I = 0x11

.field public static sOldMsg:Ljava/lang/String; = null

.field public static sOneTime:J = 0x0L

.field public static sToast:Landroid/widget/Toast; = null

.field public static sTwoTime:J = 0x0L

.field public static sXOffset:I = 0x0

.field public static sYOffset:I = 0x0

.field public static sYOffsetMiui12:I = 0xb0


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const-string v0, "ToastUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 1
    :cond_0
    :try_start_0
    const-class v2, Landroid/widget/Toast;

    const-string v3, "getWindowParams"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "getWindowParams: invoke failed: "

    .line 4
    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "getWindowParams: cannot access"

    .line 5
    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v2, "getWindowParams: no such method"

    .line 6
    invoke-static {v0, v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowsParam: ret: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static prepareShowOnKeyguard(Landroid/widget/Toast;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/camera/ToastUtils;->getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 7

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 7

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/16 p0, 0x50

    if-ne p2, p0, :cond_0

    sget p0, Lcom/android/camera/ToastUtils;->sYOffsetMiui12:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    const/4 v6, 0x0

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_1
    return-void
.end method

.method public static showToast(Landroid/content/Context;IIII)V
    .locals 7

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;IZ)V
    .locals 7

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/16 p0, 0x50

    if-ne p2, p0, :cond_0

    sget p0, Lcom/android/camera/ToastUtils;->sYOffsetMiui12:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_1
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 7

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 16
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 17
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 19
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 20
    :cond_1
    sget-object v2, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    if-eqz p0, :cond_c

    const/4 v2, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 22
    invoke-virtual {p0}, Landroid/widget/Toast;->getGravity()I

    move-result p0

    sput p0, Lcom/android/camera/ToastUtils;->sGravity:I

    .line 23
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getXOffset()I

    move-result p0

    sput p0, Lcom/android/camera/ToastUtils;->sXOffset:I

    .line 24
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getYOffset()I

    move-result p0

    sput p0, Lcom/android/camera/ToastUtils;->sYOffset:I

    if-nez p5, :cond_2

    .line 25
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    :cond_2
    if-eqz v0, :cond_3

    .line 26
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/android/camera/ToastUtils;->prepareShowOnKeyguard(Landroid/widget/Toast;)V

    .line 27
    :cond_3
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 28
    sput-object p1, Lcom/android/camera/ToastUtils;->sOldMsg:Ljava/lang/String;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/android/camera/ToastUtils;->sOneTime:J
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 30
    sput-object v2, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception p0

    .line 32
    sput-object v2, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 33
    invoke-virtual {p0}, Landroid/view/InflateException;->printStackTrace()V

    goto/16 :goto_2

    .line 34
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/camera/ToastUtils;->sTwoTime:J

    .line 35
    sget-object p0, Lcom/android/camera/ToastUtils;->sOldMsg:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 36
    sput-object p1, Lcom/android/camera/ToastUtils;->sOldMsg:Ljava/lang/String;

    .line 37
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    :cond_5
    if-eqz p5, :cond_7

    .line 38
    sget p0, Lcom/android/camera/ToastUtils;->sGravity:I

    sget-object p1, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 39
    invoke-virtual {p1}, Landroid/widget/Toast;->getGravity()I

    move-result p1

    if-ne p0, p1, :cond_6

    sget p0, Lcom/android/camera/ToastUtils;->sXOffset:I

    sget-object p1, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 40
    invoke-virtual {p1}, Landroid/widget/Toast;->getXOffset()I

    move-result p1

    if-ne p0, p1, :cond_6

    sget p0, Lcom/android/camera/ToastUtils;->sYOffset:I

    sget-object p1, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->getYOffset()I

    move-result p1

    if-eq p0, p1, :cond_7

    .line 42
    :cond_6
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    sget p1, Lcom/android/camera/ToastUtils;->sGravity:I

    sget v1, Lcom/android/camera/ToastUtils;->sXOffset:I

    sget v3, Lcom/android/camera/ToastUtils;->sYOffset:I

    invoke-virtual {p0, p1, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    move v1, v2

    :cond_7
    if-nez p5, :cond_9

    .line 43
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 44
    invoke-virtual {p0}, Landroid/widget/Toast;->getGravity()I

    move-result p0

    if-ne p2, p0, :cond_8

    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 45
    invoke-virtual {p0}, Landroid/widget/Toast;->getXOffset()I

    move-result p0

    if-ne p3, p0, :cond_8

    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 46
    invoke-virtual {p0}, Landroid/widget/Toast;->getYOffset()I

    move-result p0

    if-eq p4, p0, :cond_9

    .line 47
    :cond_8
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    :cond_9
    move v2, v1

    :goto_1
    if-nez v2, :cond_a

    .line 48
    sget-wide p0, Lcom/android/camera/ToastUtils;->sTwoTime:J

    sget-wide p2, Lcom/android/camera/ToastUtils;->sOneTime:J

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x7d0

    cmp-long p0, p0, p2

    if-lez p0, :cond_c

    .line 49
    :cond_a
    sget-wide p0, Lcom/android/camera/ToastUtils;->sTwoTime:J

    sput-wide p0, Lcom/android/camera/ToastUtils;->sOneTime:J

    if-eqz v0, :cond_b

    .line 50
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/android/camera/ToastUtils;->prepareShowOnKeyguard(Landroid/widget/Toast;)V

    .line 51
    :cond_b
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_c
    :goto_2
    return-void
.end method
