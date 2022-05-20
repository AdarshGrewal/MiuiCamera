.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooooO/OooO0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/DragLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/DragLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooO0oo;->OooO00o:Lcom/android/camera/ui/DragLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooO0oo;->OooO00o:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/DragLayout;->OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
