.class public Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;
.super Landroidx/appcompat/app/ActionBar$Tab;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field public mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field public mContentDesc:Ljava/lang/CharSequence;

.field public mCustomView:Landroid/view/View;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field public mPosition:I

.field public mTag:Ljava/lang/Object;

.field public mText:Ljava/lang/CharSequence;

.field public mWithAnim:Z

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar$Tab;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mWithAnim:Z

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method


# virtual methods
.method public getCallback()Landroidx/appcompat/app/ActionBar$TabListener;
    .locals 1

    .line 1
    invoke-static {}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$300()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    return-void
.end method

.method public setContentDescription(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 2
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 5
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 2

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setExpandState(I)V

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->setResizable(Z)V

    .line 4
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setInternalTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mInternalCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method

.method public setTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz p1, :cond_0

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method
