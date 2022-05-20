.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoOO/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;

.field private final synthetic OooO0O0:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    iput p3, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0O0:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    iget v2, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOoOO/OooO00o;->OooO0OO:I

    move-object v3, p1

    check-cast v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;->OooO00o(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;ILandroid/view/View;)V

    return-void
.end method
