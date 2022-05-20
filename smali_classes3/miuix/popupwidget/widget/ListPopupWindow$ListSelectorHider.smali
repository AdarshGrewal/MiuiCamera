.class public Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListSelectorHider"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ListSelectorHider;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->clearListSelection()V

    return-void
.end method
