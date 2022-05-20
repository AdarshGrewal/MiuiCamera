.class public Lmiuix/popupwidget/internal/widget/GuidePopupView$WrapperOnClickListener;
.super Ljava/lang/Object;
.source "GuidePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/internal/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapperOnClickListener"
.end annotation


# instance fields
.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$WrapperOnClickListener;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$WrapperOnClickListener;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    invoke-static {p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$200(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Lmiuix/popupwidget/widget/GuidePopupWindow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
