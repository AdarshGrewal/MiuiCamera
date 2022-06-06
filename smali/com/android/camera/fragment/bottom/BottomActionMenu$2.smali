.class public Lcom/android/camera/fragment/bottom/BottomActionMenu$2;
.super Ljava/lang/Object;
.source "BottomActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/bottom/BottomActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/bottom/BottomActionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$2;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$2;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$000(Lcom/android/camera/fragment/bottom/BottomActionMenu;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$2;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$000(Lcom/android/camera/fragment/bottom/BottomActionMenu;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$2;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    move-object v2, p1

    check-cast v2, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {v0, v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$002(Lcom/android/camera/fragment/bottom/BottomActionMenu;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$2;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$000(Lcom/android/camera/fragment/bottom/BottomActionMenu;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iget v3, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-static {}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x2a2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$FastMotionProtocol;

    if-eqz p1, :cond_3

    invoke-interface {p1, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$FastMotionProtocol;->switchType(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
