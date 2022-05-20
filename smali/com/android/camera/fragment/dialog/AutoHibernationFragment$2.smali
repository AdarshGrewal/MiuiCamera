.class public Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "AutoHibernationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setTranslationY(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;->val$view:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    return-void
.end method
