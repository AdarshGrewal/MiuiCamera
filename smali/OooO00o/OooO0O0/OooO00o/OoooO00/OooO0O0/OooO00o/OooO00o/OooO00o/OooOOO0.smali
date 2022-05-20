.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOO0;->OooO00o:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    return-void
.end method


# virtual methods
.method public final OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO00o/OooO00o/OooOOO0;->OooO00o:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->OooO00o(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;ILandroid/view/View;)V

    return-void
.end method
