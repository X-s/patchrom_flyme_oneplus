.class public Lcom/android/settings_ex/print/PrintServiceSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;,
        Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings_ex/SettingsPreferenceFragment;",
        "Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOADER_ID_PRINTERS_LOADER:I = 0x1

.field private static final LOADER_ID_PRINT_SERVICE_LOADER:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "PrintServiceSettingsFragment"


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mLastUnfilteredItemCount:I

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mSearchView:Landroid/widget/SearchView;

.field private mServiceEnabled:Z

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    .line 76
    return-void
.end method

.method private getBackupListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method private initComponents()V
    .locals 4

    .prologue
    .line 256
    new-instance v1, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;)V

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 257
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 261
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 262
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 263
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 265
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 266
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    new-instance v2, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 188
    invoke-virtual {v0, v1, p2}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 187
    return-void
.end method

.method private updateEmptyView()V
    .locals 10

    .prologue
    const v9, 0x7f0e0b4c

    const v8, 0x7f0e0b43

    const v7, 0x7f040077

    const/4 v6, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 198
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, "emptyView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 200
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f110151

    if-eq v4, v5, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    const/4 v1, 0x0

    .line 204
    .end local v1    # "emptyView":Landroid/view/View;
    :cond_0
    if-nez v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 207
    .restart local v1    # "emptyView":Landroid/view/View;
    const/high16 v4, 0x7f110000

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 208
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    const v4, 0x7f1100c0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 210
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 196
    .end local v1    # "emptyView":Landroid/view/View;
    .end local v2    # "iconView":Landroid/widget/ImageView;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 214
    .restart local v1    # "emptyView":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-gtz v4, :cond_4

    .line 215
    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f110153

    if-eq v4, v5, :cond_3

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    const/4 v1, 0x0

    .line 220
    .end local v1    # "emptyView":Landroid/view/View;
    :cond_3
    if-nez v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 222
    const v5, 0x7f040078

    .line 221
    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 223
    .restart local v1    # "emptyView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 226
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 227
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f110151

    if-eq v4, v5, :cond_5

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    const/4 v1, 0x0

    .line 231
    .end local v1    # "emptyView":Landroid/view/View;
    :cond_5
    if-nez v1, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 234
    .restart local v1    # "emptyView":Landroid/view/View;
    const/high16 v4, 0x7f110000

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 235
    .restart local v2    # "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    const v4, 0x7f1100c0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 237
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateUiForArguments()V
    .locals 5

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "EXTRA_SERVICE_COMPONENT_NAME"

    .line 303
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 307
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 310
    const-string/jumbo v2, "EXTRA_CHECKED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 311
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 314
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 299
    return-void
.end method

.method private updateUiForServiceState()V
    .locals 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 244
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x4f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v1, Landroid/print/PrintServicesLoader;

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "print"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 321
    const/4 v3, 0x3

    .line 319
    invoke-direct {v1, v0, v2, v3}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v6, 0x7f11041e

    const v5, 0x7f11041d

    const v4, 0x7f11041c

    .line 394
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 395
    const v3, 0x7f140005

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 397
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 398
    .local v0, "addPrinters":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 404
    :goto_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 405
    .local v2, "settings":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 406
    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 411
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 412
    .local v1, "searchItem":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 413
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    .line 414
    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 426
    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$5;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 393
    :goto_2
    return-void

    .line 401
    .end local v1    # "searchItem":Landroid/view/MenuItem;
    .end local v2    # "settings":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 408
    .restart local v2    # "settings":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 445
    .restart local v1    # "searchItem":Landroid/view/MenuItem;
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 148
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 181
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "services"    # Ljava/lang/Object;

    .prologue
    .line 325
    check-cast p2, Ljava/util/List;

    .end local p2    # "services":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;>;"
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 327
    const/4 v4, 0x0

    .line 329
    .local v4, "service":Landroid/printservice/PrintServiceInfo;
    if-eqz p2, :cond_0

    .line 330
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 331
    .local v2, "numServices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 332
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 333
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "service":Landroid/printservice/PrintServiceInfo;
    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 339
    .end local v1    # "i":I
    .end local v2    # "numServices":I
    :cond_0
    if-nez v4, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->finishFragment()V

    .line 344
    :cond_1
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 346
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 347
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v5, "settingsIntent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 355
    .local v3, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 357
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_2

    .line 358
    iput-object v5, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 365
    .end local v3    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "settingsIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "addPrintersIntent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v8

    .line 369
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 374
    .restart local v3    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 376
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_3

    .line 377
    iput-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 384
    .end local v0    # "addPrintersIntent":Landroid/content/Intent;
    .end local v3    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 326
    return-void

    .line 331
    .restart local v1    # "i":I
    .restart local v2    # "numServices":I
    .restart local v4    # "service":Landroid/printservice/PrintServiceInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 362
    .end local v1    # "i":I
    .end local v2    # "numServices":I
    .end local v4    # "service":Landroid/printservice/PrintServiceInfo;
    :cond_5
    iput-object v9, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_1

    .line 381
    :cond_6
    iput-object v9, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    goto :goto_2
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 388
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 159
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 154
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 152
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 167
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 295
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->initComponents()V

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getBackupListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 172
    return-void
.end method
