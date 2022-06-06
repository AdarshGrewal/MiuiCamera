.class public final synthetic LOooO0Oo/OooO0O0/OooO0O0/OooO0O0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

.field private final synthetic OooO0O0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0Oo/OooO0O0/OooO0O0/OooO0O0/OooO00o;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, LOooO0Oo/OooO0O0/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0Oo/OooO0O0/OooO0O0/OooO0O0/OooO00o;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, LOooO0Oo/OooO0O0/OooO0O0/OooO0O0/OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->OooO00o(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V

    return-void
.end method
