.class public Lcom/android/settings_ex/DreamSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;,
        Lcom/android/settings_ex/DreamSettings$PackageReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DIALOG_WHEN_TO_DREAM:I = 0x1

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_exlib/dream/DreamBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/DreamSettings;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings_ex/DreamSettings;Lcom/android/settings_ex/DreamSettings$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    .line 51
    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "titleRes"    # I
    .param p3, "actionEnum"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 165
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 166
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 167
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 168
    new-instance v1, Lcom/android/settings_ex/DreamSettings$3;

    invoke-direct {v1, p0, p5}, Lcom/android/settings_ex/DreamSettings$3;-><init>(Lcom/android/settings_ex/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 175
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 187
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 188
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0841

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0840

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 190
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0e083f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 193
    .local v1, "items":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settings_exlib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settings_exlib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    .line 198
    .local v0, "initialSelection":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    const v3, 0x7f0e0844

    .line 198
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 200
    new-instance v3, Lcom/android/settings_ex/DreamSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DreamSettings$4;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    .line 198
    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 194
    .end local v0    # "initialSelection":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settings_exlib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "initialSelection":I
    goto :goto_0

    .line 195
    .end local v0    # "initialSelection":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settings_exlib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "initialSelection":I
    goto :goto_0

    .line 196
    .end local v0    # "initialSelection":I
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "initialSelection":I
    goto :goto_0
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    new-instance v3, Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-direct {v3, p0}, Lcom/android/settings_exlib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 236
    .local v3, "backend":Lcom/android/settings_exlib/dream/DreamBackend;
    invoke-virtual {v3}, Lcom/android/settings_exlib/dream/DreamBackend;->isEnabled()Z

    move-result v4

    .line 237
    .local v4, "isEnabled":Z
    invoke-virtual {v3}, Lcom/android/settings_exlib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    .line 238
    .local v2, "activatedOnSleep":Z
    invoke-virtual {v3}, Lcom/android/settings_exlib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    .line 239
    .local v0, "activatedOnDock":Z
    if-eqz v2, :cond_0

    move v1, v0

    .line 240
    :goto_0
    if-nez v4, :cond_1

    const v5, 0x7f0e0842

    :goto_1
    return v5

    .line 239
    :cond_0
    const/4 v1, 0x0

    .local v1, "activatedOnEither":Z
    goto :goto_0

    .line 241
    .end local v1    # "activatedOnEither":Z
    :cond_1
    if-eqz v1, :cond_2

    const v5, 0x7f0e083e

    goto :goto_1

    .line 242
    :cond_2
    if-eqz v2, :cond_3

    const v5, 0x7f0e0840

    goto :goto_1

    .line 243
    :cond_3
    if-eqz v0, :cond_4

    const v5, 0x7f0e0841

    goto :goto_1

    .line 244
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    new-instance v0, Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, "backend":Lcom/android/settings_exlib/dream/DreamBackend;
    invoke-virtual {v0}, Lcom/android/settings_exlib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    .line 250
    .local v1, "isEnabled":Z
    if-nez v1, :cond_0

    .line 251
    const v2, 0x7f0e0842

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_exlib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 285
    return-void
.end method

.method private refreshFromBackend()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 258
    const-string/jumbo v5, "refreshFromBackend()"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    .line 260
    iget-object v5, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {v5}, Lcom/android/settings_exlib/dream/DreamBackend;->isEnabled()Z

    move-result v2

    .line 261
    .local v2, "dreamsEnabled":Z
    iget-object v5, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v5

    if-eq v5, v2, :cond_0

    .line 262
    iget-object v5, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v5, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    if-nez v5, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DreamSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 269
    if-eqz v2, :cond_2

    .line 270
    iget-object v5, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {v5}, Lcom/android/settings_exlib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 271
    .local v1, "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 272
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    .line 274
    new-instance v8, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;

    invoke-direct {v8, p0, v9, v5}, Lcom/android/settings_ex/DreamSettings$DreamInfoPreference;-><init>(Lcom/android/settings_ex/DreamSettings;Landroid/content/Context;Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;)V

    .line 273
    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "N":I
    .end local v1    # "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/dream/DreamBackend$DreamInfo;>;"
    .end local v3    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v5, :cond_3

    .line 278
    iget-object v7, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v4, v7, v5

    .line 279
    .local v4, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 282
    .end local v4    # "menuItem":Landroid/view/MenuItem;
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    .line 257
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0e0daf

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x2f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const-string/jumbo v2, "onActivityCreated(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, "emptyView":Landroid/widget/TextView;
    const v2, 0x7f0e0843

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DreamSettings;->setEmptyView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    .line 126
    .local v1, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 117
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    const-string/jumbo v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 85
    const-string/jumbo v0, "onCreate(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DreamSettings;->setHasOptionsMenu(Z)V

    .line 84
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x1

    .line 180
    const-string/jumbo v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    if-ne p1, v4, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 133
    const-string/jumbo v0, "onCreateOptionsMenu()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settings_exlib/dream/DreamBackend;->isEnabled()Z

    move-result v4

    .line 140
    .local v4, "isEnabled":Z
    new-instance v5, Lcom/android/settings_ex/DreamSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DreamSettings$1;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    .line 138
    const v2, 0x7f0e0845

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 151
    .local v6, "start":Landroid/view/MenuItem;
    new-instance v5, Lcom/android/settings_ex/DreamSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DreamSettings$2;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    .line 148
    const v2, 0x7f0e0844

    move-object v0, p0

    move-object v1, p1

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 158
    .local v7, "whenToDream":Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    aput-object v6, v0, v3

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 132
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    const-string/jumbo v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 220
    const-string/jumbo v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 222
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 102
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_exlib/dream/DreamBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings_exlib/dream/DreamBackend;->setEnabled(Z)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    .line 94
    :cond_0
    return-void
.end method
