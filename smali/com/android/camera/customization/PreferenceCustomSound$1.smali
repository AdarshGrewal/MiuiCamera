.class public Lcom/android/camera/customization/PreferenceCustomSound$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PreferenceCustomSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/customization/PreferenceCustomSound;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/customization/PreferenceCustomSound;


# direct methods
.method public constructor <init>(Lcom/android/camera/customization/PreferenceCustomSound;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/customization/PreferenceCustomSound$1;->this$0:Lcom/android/camera/customization/PreferenceCustomSound;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/customization/PreferenceCustomSound$1;->this$0:Lcom/android/camera/customization/PreferenceCustomSound;

    invoke-static {v0}, Lcom/android/camera/customization/PreferenceCustomSound;->access$100(Lcom/android/camera/customization/PreferenceCustomSound;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/customization/PreferenceCustomSound$1;->this$0:Lcom/android/camera/customization/PreferenceCustomSound;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1, p2}, Lcom/android/camera/customization/PreferenceCustomSound;->access$000(Lcom/android/camera/customization/PreferenceCustomSound;Landroid/view/View;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/camera/customization/PreferenceCustomSound$1;->this$0:Lcom/android/camera/customization/PreferenceCustomSound;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0175

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/android/camera/customization/PreferenceCustomSound$MyViewHolder;

    iget-object v0, p0, Lcom/android/camera/customization/PreferenceCustomSound$1;->this$0:Lcom/android/camera/customization/PreferenceCustomSound;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/customization/PreferenceCustomSound$MyViewHolder;-><init>(Lcom/android/camera/customization/PreferenceCustomSound;Landroid/view/View;)V

    return-object p2
.end method
