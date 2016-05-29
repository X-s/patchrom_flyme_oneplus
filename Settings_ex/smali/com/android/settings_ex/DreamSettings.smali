.class public Lcom/android/settings_ex/DreamSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DreamSettings$PackageReceiver;,
        Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DIALOG_WHEN_TO_DREAM:I = 0x1

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/android/settings_ex/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/settings_ex/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/DreamSettings;->TAG:Ljava/lang/String;

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

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings_ex/DreamSettings;Lcom/android/settings_ex/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    .line 364
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DreamSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DreamSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

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
    .line 167
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 168
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 169
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 170
    new-instance v1, Lcom/android/settings_ex/DreamSettings$3;

    invoke-direct {v1, p0, p5}, Lcom/android/settings_ex/DreamSettings$3;-><init>(Lcom/android/settings_ex/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 177
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f090473

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f090472

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f090471

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 195
    .local v1, "items":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    .local v0, "initialSelection":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090476

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/DreamSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DreamSettings$4;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 195
    .end local v0    # "initialSelection":I
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 237
    new-instance v3, Lcom/android/settings_ex/DreamBackend;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 238
    .local v3, "backend":Lcom/android/settings_ex/DreamBackend;
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v4

    .line 239
    .local v4, "isEnabled":Z
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    .line 240
    .local v2, "activatedOnSleep":Z
    invoke-virtual {v3}, Lcom/android/settings_ex/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    .line 241
    .local v0, "activatedOnDock":Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 242
    .local v1, "activatedOnEither":Z
    :goto_0
    if-nez v4, :cond_2

    const v5, 0x7f090474

    :cond_0
    :goto_1
    return v5

    .end local v1    # "activatedOnEither":Z
    :cond_1
    move v1, v5

    .line 241
    goto :goto_0

    .line 242
    .restart local v1    # "activatedOnEither":Z
    :cond_2
    if-eqz v1, :cond_3

    const v5, 0x7f090470

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v5, 0x7f090472

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    const v5, 0x7f090473

    goto :goto_1
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    new-instance v0, Lcom/android/settings_ex/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "backend":Lcom/android/settings_ex/DreamBackend;
    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v1

    .line 252
    .local v1, "isEnabled":Z
    if-nez v1, :cond_0

    .line 253
    const v2, 0x7f090474

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 280
    return-void
.end method

.method private refreshFromBackend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 260
    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    .line 262
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v2

    .line 263
    .local v2, "dreamsEnabled":Z
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 264
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v6, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 266
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->clear()V

    .line 267
    if-eqz v2, :cond_1

    .line 268
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings_ex/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 269
    .local v1, "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;->addAll(Ljava/util/Collection;)V

    .line 271
    .end local v1    # "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, "arr$":[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 273
    .local v5, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "arr$":[Landroid/view/MenuItem;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    iput-boolean v8, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    .line 275
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f090a24

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 114
    const-string v3, "onActivityCreated(%s)"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 118
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, "emptyView":Landroid/widget/TextView;
    const v3, 0x7f090475

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 124
    new-instance v3, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/settings_ex/DreamSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    .line 125
    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mAdapter:Lcom/android/settings_ex/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    .line 128
    .local v2, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 129
    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 130
    iget-object v3, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 131
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 81
    const-string v0, "onCreate(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings_ex/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DreamSettings;->setHasOptionsMenu(Z)V

    .line 87
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x1

    .line 182
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    if-ne p1, v4, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v0, "onCreateOptionsMenu()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v4

    .line 140
    .local v4, "isEnabled":Z
    const v2, 0x7f090477

    new-instance v5, Lcom/android/settings_ex/DreamSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DreamSettings$1;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 149
    .local v6, "start":Landroid/view/MenuItem;
    const v2, 0x7f090476

    new-instance v5, Lcom/android/settings_ex/DreamSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DreamSettings$2;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 160
    .local v7, "whenToDream":Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    aput-object v6, v0, v3

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 163
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 222
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/DreamSettings;->mPackageReceiver:Lcom/android/settings_ex/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 101
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/DreamBackend;->setEnabled(Z)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V

    .line 95
    :cond_0
    return-void
.end method
