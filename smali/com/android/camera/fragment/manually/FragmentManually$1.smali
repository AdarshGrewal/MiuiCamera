.class public Lcom/android/camera/fragment/manually/FragmentManually$1;
.super Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;
.source "FragmentManually.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentManually;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentManually;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/manually/FragmentManually;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
