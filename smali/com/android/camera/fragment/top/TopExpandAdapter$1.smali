.class public Lcom/android/camera/fragment/top/TopExpandAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "TopExpandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/TopExpandAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/TopExpandAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/TopExpandAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter$1;->this$0:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method
