.class public Lcom/oneplus/settings/OPSettingsActivity;
.super Landroid/app/Activity;
.source "OPSettingsActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# static fields
.field private static final ACTIVATE_SEARCH:I = 0x0

.field private static final ACTIVATE_SEARCH_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "OPSettingsActivity"


# instance fields
.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mNeedToRevertToInitialFragment:Z

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItemExpanded:Z

    .line 47
    iput-boolean v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mDisplaySearch:Z

    .line 52
    new-instance v0, Lcom/oneplus/settings/OPSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPSettingsActivity$1;-><init>(Lcom/oneplus/settings/OPSettingsActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 200
    iput-boolean v1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 202
    iput-boolean v1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItemExpanded:Z

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 208
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 260
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 261
    iget v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 262
    iget v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPSettingsActivity;->setTitle(I)V

    .line 266
    :goto_0
    const/4 v1, 0x0

    .line 271
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 264
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 269
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPSettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 276
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 277
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    return-void

    .line 279
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private switchToDashbord(Ljava/lang/String;Landroid/os/Bundle;ZI)Landroid/app/Fragment;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "addToBackStack"    # Z
    .param p4, "titleResId"    # I

    .prologue
    .line 123
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 124
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 126
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 127
    if-lez p4, :cond_0

    .line 128
    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 130
    :cond_0
    if-eqz p3, :cond_1

    .line 131
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 133
    :cond_1
    if-lez p4, :cond_2

    .line 134
    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 136
    :cond_2
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 137
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 138
    return-object v0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 181
    iget-object v1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f120008

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 185
    .local v0, "current":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v1, :cond_1

    .line 186
    check-cast v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .end local v0    # "current":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 192
    iput-boolean v4, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 188
    .restart local v0    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v1, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c0bfc

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/oneplus/settings/OPSettingsActivity;->switchToDashbord(Ljava/lang/String;Landroid/os/Bundle;ZI)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iput-object v1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    goto :goto_1
.end method


# virtual methods
.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 197
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/oneplus/settings/OPSettingsActivity;->setTitleFromBackStack()I

    .line 256
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/search/Index;->update()V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v2, 0x7f0c0bfb

    iput v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mInitialTitleResId:I

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 78
    const-class v2, Lcom/oneplus/settings/OPDashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/settings/OPSettingsActivity;->mInitialTitleResId:I

    invoke-direct {p0, v2, v3, v6, v4}, Lcom/oneplus/settings/OPSettingsActivity;->switchToDashbord(Ljava/lang/String;Landroid/os/Bundle;ZI)Landroid/app/Fragment;

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 86
    :cond_0
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 87
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_1

    .line 88
    new-instance v0, Landroid/nfc/NdefMessage;

    const-string v2, "com.android.settings"

    invoke-static {v2}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    new-array v3, v6, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 89
    .local v0, "msg":Landroid/nfc/NdefMessage;
    new-array v2, v6, [Landroid/app/Activity;

    invoke-virtual {v1, v0, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 91
    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    iget-boolean v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mDisplaySearch:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 250
    :goto_0
    return v2

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 225
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f140004

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 228
    iget-object v1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 230
    .local v1, "query":Ljava/lang/String;
    const v2, 0x7f1202fc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 231
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 233
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    .line 234
    goto :goto_0

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    iget-object v3, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 241
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 242
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 243
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 245
    iget-boolean v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v2, :cond_4

    .line 246
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 248
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v2, v4

    .line 250
    goto :goto_0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 173
    iget-boolean v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/oneplus/settings/OPSettingsActivity;->revertToInitialFragment()V

    .line 177
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/oneplus/settings/OPSettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 167
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->unregister()V

    .line 112
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/oneplus/settings/OPSettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 144
    iput-object p1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mSearchResultsFragment:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 97
    iget-boolean v0, p0, Lcom/oneplus/settings/OPSettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/oneplus/settings/OPSettingsActivity;->revertToInitialFragment()V

    .line 100
    :cond_0
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/oneplus/settings/OPSettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 216
    return-void
.end method
