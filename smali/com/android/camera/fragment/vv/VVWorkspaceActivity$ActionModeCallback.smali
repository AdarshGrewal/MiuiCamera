.class public Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;
.super Ljava/lang/Object;
.source "VVWorkspaceActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/vv/VVWorkspaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Lcom/android/camera/fragment/vv/VVWorkspaceActivity$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x1020019

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$300(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;ZZ)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102001a

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$400(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$500(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    :goto_0
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$102(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$100(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Landroid/view/ActionMode;

    move-result-object v0

    const v1, 0x7f120496

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    const/4 v1, 0x0

    const/16 v2, 0x67

    const v3, 0x7f120483

    invoke-interface {p2, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const v2, 0x7f0805b6

    .line 4
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 5
    invoke-static {v0, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$202(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-static {p2}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$200(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x1

    .line 7
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-static {p2}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$200(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9
    check-cast p1, Lmiuix/view/EditActionMode;

    const/4 p2, 0x0

    const v1, 0x1020019

    const v2, 0x7f08067b

    invoke-interface {p1, v1, p2, v2}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    const v1, 0x102001a

    const v2, 0x7f080693

    .line 10
    invoke-interface {p1, v1, p2, v2}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$102(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
