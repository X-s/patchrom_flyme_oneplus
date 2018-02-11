.class public abstract Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;
.super Ljava/lang/Object;
.source "AbstractRequireScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

.field private mScrollNeeded:Z

.field private mScrollNotified:Z


# direct methods
.method static synthetic -get0(Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;)Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    return-object v0
.end method

.method protected constructor <init>(Lcom/android/setupwizardlib/view/NavigationBar;)V
    .locals 1
    .param p1, "navigationBar"    # Lcom/android/setupwizardlib/view/NavigationBar;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mScrollNotified:Z

    .line 38
    iput-object p1, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 37
    return-void
.end method


# virtual methods
.method protected notifyRequiresScroll()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mScrollNeeded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mScrollNotified:Z

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    new-instance v1, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper$2;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper$2;-><init>(Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/NavigationBar;->post(Ljava/lang/Runnable;)Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mScrollNeeded:Z

    goto :goto_0
.end method

.method protected notifyScrolledToBottom()V
    .locals 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mScrollNeeded:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    new-instance v1, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper$1;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper$1;-><init>(Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/NavigationBar;->post(Ljava/lang/Runnable;)Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mScrollNeeded:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mScrollNotified:Z

    .line 45
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->pageScrollDown()V

    .line 73
    return-void
.end method

.method protected abstract pageScrollDown()V
.end method

.method protected requireScroll()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/setupwizardlib/util/AbstractRequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
