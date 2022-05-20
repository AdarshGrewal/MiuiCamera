.class public final Lcom/android/camera/ui/ScreenHint$1;
.super Landroid/text/style/ClickableSpan;
.source "ScreenHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint;->setLinkClickEvent(Landroid/widget/TextView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$urlSpan:Landroid/text/style/URLSpan;


# direct methods
.method public constructor <init>(Landroid/text/style/URLSpan;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$urlSpan:Landroid/text/style/URLSpan;

    iput-object p2, p0, Lcom/android/camera/ui/ScreenHint$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/android/camera/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cta_url"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
