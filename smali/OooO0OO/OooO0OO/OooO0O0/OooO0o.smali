.class public final synthetic LOooO0OO/OooO0OO/OooO0O0/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private final synthetic OooO00o:Lmiuix/internal/widget/PopupMenuWindow;

.field private final synthetic OooO0O0:Landroid/view/SubMenu;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0OO/OooO0O0/OooO0o;->OooO00o:Lmiuix/internal/widget/PopupMenuWindow;

    iput-object p2, p0, LOooO0OO/OooO0OO/OooO0O0/OooO0o;->OooO0O0:Landroid/view/SubMenu;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, LOooO0OO/OooO0OO/OooO0O0/OooO0o;->OooO00o:Lmiuix/internal/widget/PopupMenuWindow;

    iget-object v1, p0, LOooO0OO/OooO0OO/OooO0O0/OooO0o;->OooO0O0:Landroid/view/SubMenu;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/PopupMenuWindow;->OooO00o(Landroid/view/SubMenu;)V

    return-void
.end method
