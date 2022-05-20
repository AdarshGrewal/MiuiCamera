.class public final Lcom/android/camera/Util$6;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Util;->updateSelectIndicator(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$select:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/Util$6;->val$select:Z

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/Util$6;->val$select:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/Util$6;->val$select:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
