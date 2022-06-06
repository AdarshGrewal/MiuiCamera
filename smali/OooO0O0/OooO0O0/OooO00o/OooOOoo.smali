.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOOoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Landroid/view/View;

.field private final synthetic OooO0O0:Ljava/lang/CharSequence;

.field private final synthetic OooO0OO:Landroid/app/Activity;

.field private final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOOoo;->OooO00o:Landroid/view/View;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooOOoo;->OooO0O0:Ljava/lang/CharSequence;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OooOOoo;->OooO0OO:Landroid/app/Activity;

    iput p4, p0, LOooO0O0/OooO0O0/OooO00o/OooOOoo;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooOOoo;->OooO00o:Landroid/view/View;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooOOoo;->OooO0O0:Ljava/lang/CharSequence;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/OooOOoo;->OooO0OO:Landroid/app/Activity;

    iget v3, p0, LOooO0O0/OooO0O0/OooO00o/OooOOoo;->OooO0Oo:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/camera/OnScreenHint;->OooO00o(Landroid/view/View;Ljava/lang/CharSequence;Landroid/app/Activity;ILio/reactivex/SingleEmitter;)V

    return-void
.end method
