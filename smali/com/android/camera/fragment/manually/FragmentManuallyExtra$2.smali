.class public Lcom/android/camera/fragment/manually/FragmentManuallyExtra$2;
.super Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;
.source "FragmentManuallyExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->initLensRecyclerView(Lcom/android/camera/data/data/ComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra$2;->this$0:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;-><init>(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)V

    return-void
.end method


# virtual methods
.method public couldNewValueTakeEffect(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "manual"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;->couldNewValueTakeEffect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
