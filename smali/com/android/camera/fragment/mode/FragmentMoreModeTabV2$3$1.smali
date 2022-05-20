.class public Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3$1;
.super Ljava/lang/Object;
.source "FragmentMoreModeTabV2.java"

# interfaces
.implements Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$ForEachCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->onUpdate(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3$1;->this$1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3$1;->this$1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;

    iget-object v0, v0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$302(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3$1;->this$1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;

    iget-object v0, v0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {v0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$402(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F

    return-void
.end method

.method public run(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    check-cast p1, Lcom/android/camera/ui/InnerSpringImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3$1;->this$1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;

    iget-object v0, v0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$300(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3$1;->this$1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;

    iget-object v1, v1, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$400(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/InnerSpringImageView;->updateXY(FF)V

    return-void
.end method
