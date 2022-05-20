.class public Lcom/android/camera/ui/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/HorizontalListView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView$2;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$2;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
