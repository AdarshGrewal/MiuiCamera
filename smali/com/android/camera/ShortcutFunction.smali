.class public Lcom/android/camera/ShortcutFunction;
.super Ljava/lang/Object;
.source "ShortcutFunction.java"


# instance fields
.field public infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mShortcutManager:Landroid/content/pm/ShortcutManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupShortcutsCapture(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CAPTURE"

    const-string v2, "android.intent.extra.CAMERA_MODE"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.USE_FRONT_CAMERA"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.media.action.VOICE_COMMAND"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120263

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    const v2, 0x7f0808e2

    .line 7
    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/android/camera/ShortcutFunction;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    iget-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    return-void
.end method

.method private setupShortcutsDoc(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "DOC"

    const-string v2, "android.intent.extra.CAMERA_MODE"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.action.VOICE_COMMAND"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12034f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    const v2, 0x7f0808e3

    .line 6
    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/ShortcutFunction;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    iget-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    return-void
.end method

.method private setupShortcutsManual(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "MANUAL"

    const-string v2, "android.intent.extra.CAMERA_MODE"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.action.VOICE_COMMAND"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1208af

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    const v2, 0x7f0808e4

    .line 6
    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/ShortcutFunction;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    iget-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    return-void
.end method

.method private setupShortcutsVideo(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "VIDEO"

    const-string v2, "android.intent.extra.CAMERA_MODE"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.action.VOICE_COMMAND"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1209dc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    const v2, 0x7f0808e5

    .line 6
    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/ShortcutFunction;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    iget-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    return-void
.end method


# virtual methods
.method public initShortcut(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    iput-object v0, p0, Lcom/android/camera/ShortcutFunction;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ShortcutFunction;->infos:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayFoldState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ShortcutFunction;->setupShortcutsCapture(Landroid/content/Context;)V

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ShortcutFunction;->setupShortcutsVideo(Landroid/content/Context;)V

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0Ooo0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/ShortcutFunction;->setupShortcutsManual(Landroid/content/Context;)V

    .line 8
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/ShortcutFunction;->setupShortcutsDoc(Landroid/content/Context;)V

    :cond_3
    return-void
.end method
