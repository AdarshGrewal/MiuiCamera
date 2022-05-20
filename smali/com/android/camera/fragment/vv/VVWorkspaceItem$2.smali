.class public Lcom/android/camera/fragment/vv/VVWorkspaceItem$2;
.super Ljava/lang/Object;
.source "VVWorkspaceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/VVWorkspaceItem;->removeSelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/VVWorkspaceItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem$2;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem$2;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iget-object v1, v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteDir(Ljava/io/File;)Z

    :cond_0
    return-void
.end method
