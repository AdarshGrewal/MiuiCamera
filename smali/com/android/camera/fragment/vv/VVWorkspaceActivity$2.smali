.class public Lcom/android/camera/fragment/vv/VVWorkspaceActivity$2;
.super Ljava/lang/Object;
.source "VVWorkspaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->onDeleteClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$2;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$2;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->access$802(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
