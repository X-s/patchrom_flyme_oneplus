.class public Lcom/android/settings_ex/applications/RunningServices;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningServices$1;
    }
.end annotation


# static fields
.field private static final SHOW_BACKGROUND_PROCESSES:I = 0x2

.field private static final SHOW_RUNNING_SERVICES:I = 0x1


# instance fields
.field private mLoadingContainer:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/RunningServices;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/applications/RunningServices;)Lcom/android/settings_ex/applications/RunningProcessesView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/android/settings_ex/applications/RunningServices$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/RunningServices$1;-><init>(Lcom/android/settings_ex/applications/RunningServices;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method private updateOptionsMenu()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 106
    .local v0, "showingBackground":Z
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x194

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningServices;->setHasOptionsMenu(Z)V

    .line 42
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningServices;->mOptionsMenu:Landroid/view/Menu;

    .line 63
    const v0, 0x7f0e09ee

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 65
    const v0, 0x7f0e09ef

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServices;->updateOptionsMenu()V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const v1, 0x7f0400ab

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f110193

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningProcessesView;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    .line 54
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningProcessesView;->doCreate()V

    .line 55
    const v1, 0x7f11018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    .line 57
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    return v1

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServices;->updateOptionsMenu()V

    .line 96
    return v2

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->doPause()V

    .line 78
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningServices;->updateOptionsMenu()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 74
    .local v0, "haveData":Z
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningServices;->mLoadingContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningServices;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/settings_ex/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 71
    return-void
.end method
