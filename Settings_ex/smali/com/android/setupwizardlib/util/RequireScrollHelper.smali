.class public Lcom/android/setupwizardlib/util/RequireScrollHelper;
.super Ljava/lang/Object;
.source "RequireScrollHelper.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

.field private mScrollNeeded:Z

.field private final mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;


# direct methods
.method private constructor <init>(Lcom/android/setupwizardlib/view/NavigationBar;Lcom/android/setupwizardlib/view/BottomScrollView;)V
    .locals 0
    .param p1, "navigationBar"    # Lcom/android/setupwizardlib/view/NavigationBar;
    .param p2, "scrollView"    # Lcom/android/setupwizardlib/view/BottomScrollView;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 56
    iput-object p2, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    .line 57
    return-void
.end method

.method public static requireScroll(Lcom/android/setupwizardlib/view/NavigationBar;Lcom/android/setupwizardlib/view/BottomScrollView;)Lcom/android/setupwizardlib/util/RequireScrollHelper;
    .locals 1
    .param p0, "navigationBar"    # Lcom/android/setupwizardlib/view/NavigationBar;
    .param p1, "scrollView"    # Lcom/android/setupwizardlib/view/BottomScrollView;

    .prologue
    .line 44
    new-instance v0, Lcom/android/setupwizardlib/util/RequireScrollHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/setupwizardlib/util/RequireScrollHelper;-><init>(Lcom/android/setupwizardlib/view/NavigationBar;Lcom/android/setupwizardlib/view/BottomScrollView;)V

    .line 45
    .local v0, "helper":Lcom/android/setupwizardlib/util/RequireScrollHelper;
    invoke-direct {v0}, Lcom/android/setupwizardlib/util/RequireScrollHelper;->requireScroll()V

    .line 46
    return-object v0
.end method

.method private requireScroll()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->setBottomScrollListener(Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/BottomScrollView;->pageScroll(I)Z

    .line 85
    return-void
.end method

.method public onRequiresScroll()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mScrollNeeded:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mScrollNeeded:Z

    .line 80
    :cond_0
    return-void
.end method

.method public onScrolledToBottom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mScrollNeeded:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iput-boolean v2, p0, Lcom/android/setupwizardlib/util/RequireScrollHelper;->mScrollNeeded:Z

    .line 71
    :cond_0
    return-void
.end method
