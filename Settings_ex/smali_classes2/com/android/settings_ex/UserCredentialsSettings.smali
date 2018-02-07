.class public Lcom/android/settings_ex/UserCredentialsSettings;
.super Lcom/android/settings_ex/OptionsMenuFragment;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;,
        Lcom/android/settings_ex/UserCredentialsSettings$Credential;,
        Lcom/android/settings_ex/UserCredentialsSettings$CredentialAdapter;,
        Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserCredentialsSettings"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mRootView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/UserCredentialsSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/OptionsMenuFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x11d

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const v0, 0x7f0401fa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings;->mRootView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f110355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings;->mListView:Landroid/widget/ListView;

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/UserCredentialsSettings;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/UserCredentialsSettings$Credential;

    .line 91
    .local v0, "item":Lcom/android/settings_ex/UserCredentialsSettings$Credential;
    invoke-static {p0, v0}, Lcom/android/settings_ex/UserCredentialsSettings$CredentialDialogFragment;->show(Landroid/app/Fragment;Lcom/android/settings_ex/UserCredentialsSettings$Credential;)V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings_ex/OptionsMenuFragment;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings;->refreshItems()V

    .line 71
    return-void
.end method

.method protected refreshItems()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings_ex/UserCredentialsSettings;Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/UserCredentialsSettings$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :cond_0
    return-void
.end method
