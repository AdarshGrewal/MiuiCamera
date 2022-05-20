.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOoO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOoO0;->OooO00o:I

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOoO0;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOoO0;->OooO00o:I

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOoO0;->OooO0O0:Ljava/util/List;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->OooO00o(ILjava/util/List;Landroid/widget/ImageView;)V

    return-void
.end method
