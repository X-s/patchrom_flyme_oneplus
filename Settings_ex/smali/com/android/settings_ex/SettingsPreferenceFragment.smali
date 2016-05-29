.class public Lcom/android/settings_ex/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ex/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x258

.field private static final MENU_HELP:I = 0x65

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 71
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 383
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SettingsPreferenceFragment;)Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsPreferenceFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/SettingsPreferenceFragment;Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p1, "x1"    # Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->hasListView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v2

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 204
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 206
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_0

    .line 207
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 251
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 252
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, "item":Ljava/lang/Object;
    instance-of v5, v1, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 254
    check-cast v3, Landroid/preference/Preference;

    .line 255
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "preferenceKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    .end local v1    # "item":Ljava/lang/Object;
    .end local v2    # "n":I
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v4    # "preferenceKey":Ljava/lang/String;
    :goto_1
    return v2

    .line 251
    .restart local v1    # "item":Ljava/lang/Object;
    .restart local v2    # "n":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 216
    .local v1, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v3

    .line 217
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 218
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 221
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move-object v4, v0

    .line 223
    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 226
    new-instance v4, Lcom/android/settings_ex/SettingsPreferenceFragment$2;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment$2;-><init>(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 247
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPinnedHeaderView()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 495
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 293
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 302
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings_ex/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings_ex/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 147
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const-string v1, "android:preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 95
    .local v0, "helpResource":I
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 98
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    const/16 v1, 0x65

    const v2, 0x7f090a18

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 283
    .local v0, "helpItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 285
    .end local v0    # "helpItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f0f00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 105
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 330
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 331
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 139
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 142
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 159
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 152
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 170
    :cond_1
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 354
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 355
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 266
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    # setter for: Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 366
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    # setter for: Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 377
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 111
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ex/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "titleRes"    # I
    .param p4, "requestCode"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 499
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 500
    .local v7, "activity":Landroid/app/Activity;
    instance-of v1, v7, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 501
    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 502
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v8

    .line 513
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :goto_0
    return v1

    .line 504
    :cond_0
    instance-of v1, v7, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    move-object v0, v7

    .line 505
    check-cast v0, Landroid/preference/PreferenceActivity;

    .local v0, "sa":Landroid/preference/PreferenceActivity;
    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 506
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v8

    .line 507
    goto :goto_0

    .line 509
    .end local v0    # "sa":Landroid/preference/PreferenceActivity;
    :cond_1
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 180
    :cond_1
    return-void
.end method
