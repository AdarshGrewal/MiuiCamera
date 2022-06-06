.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentBottomPopupTips;

.field private final synthetic OooO0O0:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

.field private final synthetic OooO0OO:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOO0o;->OooO00o:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOO0o;->OooO0O0:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOO0o;->OooO0OO:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOO0o;->OooO00o:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOO0o;->OooO0O0:Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOO0o;->OooO0OO:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->OooO00o(Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Landroid/view/View;)V

    return-void
.end method
