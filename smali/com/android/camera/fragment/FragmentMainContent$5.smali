.class public Lcom/android/camera/fragment/FragmentMainContent$5;
.super Ljava/lang/Object;
.source "FragmentMainContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentMainContent;->mimojiFaceDetect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentMainContent;

.field public final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$5;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    iput p2, p0, Lcom/android/camera/fragment/FragmentMainContent$5;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$5;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent$5;->val$result:I

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->access$702(Lcom/android/camera/fragment/FragmentMainContent;I)I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$5;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    iget v1, p0, Lcom/android/camera/fragment/FragmentMainContent$5;->val$result:I

    const/16 v2, 0xa0

    invoke-static {v0, v2, v1}, Lcom/android/camera/fragment/FragmentMainContent;->access$800(Lcom/android/camera/fragment/FragmentMainContent;II)V

    return-void
.end method
