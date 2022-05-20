.class public Lcom/android/camera/fragment/manually/FragmentParameterDescription$1;
.super Ljava/lang/Object;
.source "FragmentParameterDescription.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentParameterDescription;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$1;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$1;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method
