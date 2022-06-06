.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOo;->OooO00o:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooOo;->OooO00o:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/android/camera/RotateDialogController;->OooO0O0(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
