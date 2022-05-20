.class public Lmiuix/core/util/variable/WindowWrapper;
.super Ljava/lang/Object;
.source "WindowWrapper.java"


# static fields
.field public static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field public static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT:I = 0x1

.field public static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT_MASK:I = 0x11

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static setExtraFlags:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setExtraFlags"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTranslucentStatus(Landroid/view/Window;I)Z
    .locals 5

    .line 1
    sget-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    const/high16 v0, -0x80000000

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v3, :cond_2

    const/16 v2, 0x2010

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, -0x2001

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_5

    const/high16 v0, 0x4000000

    if-nez p1, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    :goto_1
    const/4 v0, 0x2

    const/16 v2, 0x11

    if-nez p1, :cond_6

    .line 11
    :try_start_0
    sget-object p1, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    if-ne p1, v3, :cond_7

    move p1, v2

    goto :goto_2

    :cond_7
    move p1, v3

    .line 12
    :goto_2
    sget-object v4, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v1, v3

    :catch_0
    return v1
.end method
