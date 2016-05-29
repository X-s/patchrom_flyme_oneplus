.class public Lcom/android/settings_ex/print/PrintServiceSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;
    }
.end annotation


# static fields
.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1

.field private static final LOADER_ID_PRINTERS_LOADER:I = 0x1


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mAddPrintersTitle:Ljava/lang/CharSequence;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mLastUnfilteredItemCount:I

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mSearchView:Landroid/widget/SearchView;

.field private mServiceEnabled:Z

.field private final mSettingsContentObserver:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;

    .line 92
    new-instance v0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    .line 644
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method private initComponents()V
    .locals 4

    .prologue
    .line 292
    new-instance v1, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;)V

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 293
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 297
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 298
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 299
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 301
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 302
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    new-instance v2, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 177
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 178
    .local v0, "service":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    .line 180
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings_ex/print/PrintSettingsUtils;->writeEnabledPrintServices(Landroid/content/Context;Ljava/util/List;)V

    .line 185
    return-void

    .line 182
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 12

    .prologue
    const v11, 0x7f0f0026

    const v10, 0x7f090774

    const v9, 0x7f09076b

    const v8, 0x7f040046

    const/4 v7, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 231
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, "emptyView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 234
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f00ac

    if-eq v5, v6, :cond_0

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    const/4 v1, 0x0

    .line 238
    :cond_0
    if-nez v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v8, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 241
    const v5, 0x7f0f0034

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 242
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 244
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 276
    .end local v2    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v5

    if-gtz v5, :cond_4

    .line 249
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f00ad

    if-eq v5, v6, :cond_3

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 252
    const/4 v1, 0x0

    .line 254
    :cond_3
    if-nez v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040047

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 261
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0f00ac

    if-eq v5, v6, :cond_5

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    const/4 v1, 0x0

    .line 265
    :cond_5
    if-nez v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v8, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 268
    const v5, 0x7f0f0034

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 269
    .restart local v2    # "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 271
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateUiForArguments()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 334
    .local v3, "arguments":Landroid/os/Bundle;
    const-string v9, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 337
    const-string v9, "EXTRA_CHECKED"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 338
    .local v4, "enabled":Z
    iget-object v9, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 341
    const-string v9, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "settingsTitle":Ljava/lang/String;
    const-string v9, "EXTRA_SETTINGS_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "settingsComponentName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 345
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 347
    .local v7, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 349
    .local v5, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 351
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_0

    .line 352
    iput-object v8, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 353
    iput-object v7, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 359
    .end local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    const-string v9, "EXTRA_ADD_PRINTERS_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "addPrintersTitle":Ljava/lang/String;
    const-string v9, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "addPrintersComponentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 365
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 367
    .local v2, "addPritnersIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 369
    .restart local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 371
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_1

    .line 372
    iput-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    .line 373
    iput-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 379
    .end local v2    # "addPritnersIntent":Landroid/content/Intent;
    .end local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const-string v9, "EXTRA_ENABLE_WARNING_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 383
    const-string v9, "EXTRA_ENABLE_WARNING_MESSAGE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 387
    const-string v9, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 390
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 391
    return-void
.end method

.method private updateUiForServiceState()V
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/print/PrintSettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 280
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 281
    iget-boolean v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    .line 288
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 289
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 286
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    packed-switch p2, :pswitch_data_0

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 213
    :pswitch_0
    const/4 v0, 0x1

    .line 214
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 227
    :goto_0
    return-void

    .line 219
    .end local v0    # "checked":Z
    :pswitch_1
    const/4 v0, 0x0

    .line 220
    .restart local v0    # "checked":Z
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "title":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 191
    .local v0, "message":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 193
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 199
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v6, 0x7f0f02ba

    const v5, 0x7f0f02b9

    const v4, 0x7f0f02b8

    .line 395
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 396
    const v3, 0x7f110004

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 398
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 399
    .local v0, "addPrinters":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 406
    :goto_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 407
    .local v2, "settings":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 409
    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 414
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 415
    .local v1, "searchItem":Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 416
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    .line 417
    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 429
    iget-object v3, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$5;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 450
    :goto_2
    return-void

    .line 403
    .end local v1    # "searchItem":Landroid/view/MenuItem;
    .end local v2    # "settings":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 411
    .restart local v2    # "settings":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 448
    .restart local v1    # "searchItem":Landroid/view/MenuItem;
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 148
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 328
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 162
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->initComponents()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 164
    return-void
.end method
