.class public final Lcom/android/camera/animation/FolmeUtils$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/animation/FolmeUtils;->handleTouchScale(Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$click:Landroid/view/View$OnClickListener;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/animation/FolmeUtils$1;->val$click:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/camera/animation/FolmeUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/animation/FolmeUtils$1;->val$click:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/camera/animation/FolmeUtils$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
