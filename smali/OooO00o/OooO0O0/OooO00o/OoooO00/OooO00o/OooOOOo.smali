.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOOOo;->OooO00o:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooOOOo;->OooO00o:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifViewPresenter;->OooO00o(Landroid/view/View;)V

    return-void
.end method
