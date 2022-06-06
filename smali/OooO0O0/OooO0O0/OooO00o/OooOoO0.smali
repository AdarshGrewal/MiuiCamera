.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOoO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/Runnable;

.field private final synthetic OooO0O0:Ljava/lang/Runnable;

.field private final synthetic OooO0OO:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOoO0;->OooO00o:Ljava/lang/Runnable;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooOoO0;->OooO0O0:Ljava/lang/Runnable;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OooOoO0;->OooO0OO:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooOoO0;->OooO00o:Ljava/lang/Runnable;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooOoO0;->OooO0O0:Ljava/lang/Runnable;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/OooOoO0;->OooO0OO:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/camera/RotateDialogController;->OooO00o(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
