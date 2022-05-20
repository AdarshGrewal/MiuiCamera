.class public Lcom/android/camera/fragment/vv/VVWorkspace$1;
.super Ljava/lang/Object;
.source "VVWorkspace.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/VVWorkspace;->restoreWorkspace()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/camera/fragment/vv/VVWorkspaceItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/VVWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspace$1;->this$0:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/camera/fragment/vv/VVWorkspaceItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)I
    .locals 3

    .line 2
    iget-wide v0, p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastModifiedTime:J

    iget-wide p1, p2, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastModifiedTime:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    check-cast p2, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVWorkspace$1;->compare(Lcom/android/camera/fragment/vv/VVWorkspaceItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)I

    move-result p1

    return p1
.end method
