.class public abstract Lcom/android/settings_ex/SettingsPreferenceFragment;
.super Lcom/android/settings_ex/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ex/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SettingsPreferenceFragment$1;,
        Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;,
        Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x258

.field public static final HELP_URI_RESOURCE_KEY:Ljava/lang/String; = "help_uri_resource"

.field private static final ORDER_FIRST:I = -0x1

.field private static final ORDER_LAST:I = 0x7ffffffe

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final TAG:Ljava/lang/String; = "SettingsPreference"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

.field private mAnimationAllowed:Z

.field private mButtonBar:Landroid/view/ViewGroup;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mEmptyView:Landroid/view/View;

.field private mFloatingActionButton:Lcom/android/settings_ex/widget/FloatingActionButton;

.field private mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

.field private mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

.field private mHelpUri:Ljava/lang/String;

.field private mIsDataSetObserverRegistered:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/SettingsPreferenceFragment;)Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/SettingsPreferenceFragment;)Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/SettingsPreferenceFragment;Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 92
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    .line 91
    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 61
    return-void
.end method

.method private addPreferenceToTop(Lcom/android/settings_ex/applications/LayoutPreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/android/settings_ex/applications/LayoutPreference;

    .prologue
    .line 298
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/applications/LayoutPreference;->setOrder(I)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 297
    :cond_0
    return-void
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 372
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 373
    return v3

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 377
    .local v1, "listView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 379
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_1

    .line 380
    check-cast v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/support/v7/preference/PreferenceGroupAdapter;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 383
    .restart local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_1
    return v3
.end method

.method private checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 168
    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 170
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 171
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    instance-of v2, v1, Lcom/android/settings_ex/SelfAvailablePreference;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 172
    check-cast v2, Lcom/android/settings_ex/SelfAvailablePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings_ex/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    :cond_1
    instance-of v2, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v2, :cond_2

    .line 175
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 169
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .restart local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 167
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_4
    return-void
.end method

.method private findListPositionFromKey(Landroid/support/v7/preference/PreferenceGroupAdapter;Ljava/lang/String;)I
    .locals 5
    .param p1, "adapter"    # Landroid/support/v7/preference/PreferenceGroupAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    .line 446
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 447
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 448
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "preferenceKey":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    return v1

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    .end local v3    # "preferenceKey":Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v0

    .line 431
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 433
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/SettingsPreferenceFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$2;-><init>(Lcom/android/settings_ex/SettingsPreferenceFragment;I)V

    .line 440
    const-wide/16 v4, 0x258

    .line 435
    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    :cond_0
    return-void
.end method

.method private setFooterView(Lcom/android/settings_ex/applications/LayoutPreference;)V
    .locals 3
    .param p1, "footer"    # Lcom/android/settings_ex/applications/LayoutPreference;

    .prologue
    const/4 v2, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 316
    :cond_0
    if-eqz p1, :cond_2

    .line 317
    iput-object p1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LayoutPreference;->setOrder(I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 345
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 348
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    if-eqz v1, :cond_1

    move v1, v2

    .line 347
    :goto_0
    sub-int v1, v4, v1

    .line 349
    iget-object v4, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    if-eqz v4, :cond_2

    .line 347
    :goto_1
    sub-int/2addr v1, v2

    if-gtz v1, :cond_3

    const/4 v0, 0x1

    .line 350
    .local v0, "show":Z
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .end local v0    # "show":Z
    :goto_4
    return-void

    :cond_1
    move v1, v3

    .line 348
    goto :goto_0

    :cond_2
    move v2, v3

    .line 349
    goto :goto_1

    .line 347
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "show":Z
    goto :goto_2

    .line 350
    :cond_4
    const/16 v3, 0x8

    goto :goto_3

    .line 352
    .end local v0    # "show":Z
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 1
    .param p1, "preferencesResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->checkAvailablePrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 162
    return-void
.end method

.method protected cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 403
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 404
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 405
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 406
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 407
    .local v2, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 402
    .end local v2    # "p":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 763
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 761
    :goto_0
    return-void

    .line 767
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 496
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 493
    :cond_0
    return-void
.end method

.method public getButtonBar()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getCachedCount()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method protected getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    :cond_0
    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 509
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFloatingActionButton()Lcom/android/settings_ex/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFloatingActionButton:Lcom/android/settings_ex/widget/FloatingActionButton;

    return-object v0
.end method

.method public getFooterView()Lcom/android/settings_ex/applications/LayoutPreference;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    return-object v0
.end method

.method public getHeaderView()Lcom/android/settings_ex/applications/LayoutPreference;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 468
    const v0, 0x7f0e0d68

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 772
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 773
    return-object v1

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 758
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
    .line 528
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected final getPrefContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 754
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
    .line 268
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 209
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 226
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    const-string/jumbo v2, "android:preference_highlighted"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v2, "help_uri_resource"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    const-string/jumbo v2, "help_uri_resource"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "helpResource":I
    :goto_0
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    .line 115
    :cond_1
    return-void

    .line 128
    .end local v1    # "helpResource":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getHelpResource()I

    move-result v1

    .restart local v1    # "helpResource":I
    goto :goto_0
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 394
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    return-object v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 566
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings_exlib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    .line 472
    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f110129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 152
    const v1, 0x7f110277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFloatingActionButton:Lcom/android/settings_ex/widget/FloatingActionButton;

    .line 153
    const v1, 0x7f110274

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    .line 154
    return-object v0
.end method

.method protected onDataSetChanged()V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 276
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->updateEmptyView()V

    .line 274
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 537
    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 540
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->onDetach()V

    .line 533
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 625
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 627
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 629
    :cond_0
    const/4 v0, 0x0

    .line 630
    .local v0, "f":Landroid/app/DialogFragment;
    instance-of v1, p1, Lcom/android/settings_ex/RestrictedListPreference;

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-static {v1}, Lcom/android/settings_ex/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object v0

    .line 646
    .local v0, "f":Landroid/app/DialogFragment;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 647
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_preference"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDialogShowing()V

    .line 624
    return-void

    .line 633
    .local v0, "f":Landroid/app/DialogFragment;
    :cond_1
    instance-of v1, p1, Lcom/android/settings_ex/CustomListPreference;

    if-eqz v1, :cond_2

    .line 635
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-static {v1}, Lcom/android/settings_ex/CustomListPreference$CustomListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object v0

    .local v0, "f":Landroid/app/DialogFragment;
    goto :goto_0

    .line 636
    .local v0, "f":Landroid/app/DialogFragment;
    :cond_2
    instance-of v1, p1, Lcom/android/settings_ex/CustomDialogPreference;

    if-eqz v1, :cond_3

    .line 638
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-static {v1}, Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;

    move-result-object v0

    .local v0, "f":Landroid/app/DialogFragment;
    goto :goto_0

    .line 639
    .local v0, "f":Landroid/app/DialogFragment;
    :cond_3
    instance-of v1, p1, Lcom/android/settings_ex/CustomEditTextPreference;

    if-eqz v1, :cond_4

    .line 641
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-static {v1}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    move-result-object v0

    .local v0, "f":Landroid/app/DialogFragment;
    goto :goto_0

    .line 643
    .local v0, "f":Landroid/app/DialogFragment;
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    .line 644
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 481
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finishFragment()V

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->onResume()V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 220
    const-string/jumbo v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 215
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    const-string/jumbo v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 231
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDataSetChanged()V

    .line 245
    :cond_1
    return-void
.end method

.method protected removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 419
    iget-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 420
    .local v0, "p":Landroid/support/v7/preference/Preference;
    const-string/jumbo v2, "SettingsPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 418
    .end local v0    # "p":Landroid/support/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 576
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 569
    return-void
.end method

.method protected removeDialog(IZ)V
    .locals 4
    .param p1, "dialogId"    # I
    .param p2, "stateLossAllowed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 581
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 582
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    return-void

    .line 586
    :cond_1
    if-eqz p2, :cond_3

    .line 587
    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 591
    :cond_2
    iput-object v3, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 579
    :goto_0
    return-void

    .line 593
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 458
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 456
    :cond_0
    return-void
.end method

.method protected setAnimationAllowed(Z)V
    .locals 0
    .param p1, "animationAllowed"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mAnimationAllowed:Z

    .line 398
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    .line 361
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->updateEmptyView()V

    .line 356
    return-void
.end method

.method protected setFooterView(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 305
    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setFooterView(Lcom/android/settings_ex/applications/LayoutPreference;)V

    .line 304
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 309
    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setFooterView(Lcom/android/settings_ex/applications/LayoutPreference;)V

    .line 308
    return-void
.end method

.method protected setHeaderView(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 288
    new-instance v0, Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settings_ex/applications/LayoutPreference;)V

    .line 287
    return-void
.end method

.method protected setHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 293
    new-instance v0, Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->addPreferenceToTop(Lcom/android/settings_ex/applications/LayoutPreference;)V

    .line 292
    return-void
.end method

.method public setLoading(ZZ)V
    .locals 3
    .param p1, "loading"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "loading_container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v2, v1, p2}, Lcom/android/settings_ex/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 240
    return-void

    .line 242
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->-set0(Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 602
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->-set1(Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 613
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 4
    .param p1, "layoutResId"    # I

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 191
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "pinnedHeader":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    .line 193
    return-object v1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 329
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 334
    if-eqz p1, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mHeader:Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mFooter:Lcom/android/settings_ex/applications/LayoutPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 328
    :cond_2
    return-void

    .line 331
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mAnimationAllowed:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setShouldUseGeneratedIds(Z)V

    goto :goto_0
.end method

.method protected setResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 787
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 785
    return-void
.end method

.method protected setResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 780
    return-void

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 778
    return-void
.end method

.method protected showDialog(I)V
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 548
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    :cond_0
    return-void

    .line 552
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v2, :cond_2

    .line 553
    const-string/jumbo v2, "SettingsPreference"

    const-string/jumbo v3, "Old dialog fragment not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_2
    :try_start_0
    new-instance v2, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ex/DialogCreatable;I)V

    iput-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 558
    iget-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public showLoadingWhenEmpty()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "loading":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 235
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "titleRes"    # I
    .param p4, "requestCode"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 799
    .local v7, "activity":Landroid/app/Activity;
    instance-of v1, v7, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 800
    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 801
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 802
    const/4 v1, 0x1

    return v1

    .line 804
    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_0
    const-string/jumbo v1, "SettingsPreference"

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 807
    const-string/jumbo v3, ", requestCode: "

    .line 805
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 807
    const-string/jumbo v3, ")"

    .line 805
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v1, 0x0

    return v1
.end method

.method public unregisterObserverIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mDataSetObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 261
    iput-object v2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 257
    :cond_1
    return-void
.end method
