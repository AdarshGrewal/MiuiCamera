.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo000;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Landroid/view/View;

.field private final synthetic OooO0O0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo000;->OooO00o:Landroid/view/View;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/Oooo000;->OooO0O0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo000;->OooO00o:Landroid/view/View;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/Oooo000;->OooO0O0:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/camera/RotateDialogController;->OooO0O0(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
