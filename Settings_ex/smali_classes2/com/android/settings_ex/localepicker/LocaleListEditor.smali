.class public Lcom/android/settings_ex/localepicker/LocaleListEditor;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LocaleListEditor.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;


# static fields
.field private static final CFGKEY_REMOVE_DIALOG:Ljava/lang/String; = "showingLocaleRemoveDialog"

.field private static final CFGKEY_REMOVE_MODE:Ljava/lang/String; = "localeRemoveMode"

.field private static final MENU_ID_REMOVE:I = 0x2


# instance fields
.field private mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

.field private mAddLanguage:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mRemoveMode:Z

.field private mShowingRemoveDialog:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/localepicker/LocaleListEditor;)Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/localepicker/LocaleListEditor;Z)V
    .locals 0
    .param p1, "mRemoveMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 271
    const v2, 0x7f11018e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 272
    .local v0, "list":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)V

    .line 273
    .local v1, "llm":Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;
    invoke-virtual {v1, v4}, Lcom/android/settings_ex/localepicker/LocaleLinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 274
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 276
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 277
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 278
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 270
    return-void
.end method

.method private static getUserLocaleList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 257
    .local v2, "localeList":Landroid/os/LocaleList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 258
    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 260
    .local v1, "locale":Ljava/util/Locale;
    const-string/jumbo v4, "zh-CN"

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const-string/jumbo v4, "zh-Hans-CN"

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 264
    :cond_0
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_1
    return-object v3
.end method

.method private setRemoveMode(Z)V
    .locals 1
    .param p1, "mRemoveMode"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 158
    return-void
.end method

.method private showRemoveLocaleWarningDialog()V
    .locals 6

    .prologue
    const v5, 0x1040013

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 172
    iget-object v4, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    .line 175
    .local v0, "checkedCount":I
    if-nez v0, :cond_1

    .line 176
    iget-boolean v4, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v4, :cond_0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 177
    return-void

    :cond_0
    move v2, v3

    .line 176
    goto :goto_0

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 182
    iput-boolean v3, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 183
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    const v3, 0x7f0e0583

    .line 183
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 185
    const v3, 0x7f0e0584

    .line 183
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 186
    new-instance v3, Lcom/android/settings_ex/localepicker/LocaleListEditor$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor$2;-><init>(Lcom/android/settings_ex/localepicker/LocaleListEditor;)V

    .line 183
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 191
    new-instance v3, Lcom/android/settings_ex/localepicker/LocaleListEditor$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor$3;-><init>(Lcom/android/settings_ex/localepicker/LocaleListEditor;)V

    .line 183
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 199
    return-void

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f130003

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "title":Ljava/lang/String;
    iput-boolean v3, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 205
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 207
    const v3, 0x7f0e0582

    .line 205
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 208
    new-instance v3, Lcom/android/settings_ex/localepicker/LocaleListEditor$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor$4;-><init>(Lcom/android/settings_ex/localepicker/LocaleListEditor;)V

    const v4, 0x1040009

    .line 205
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 214
    new-instance v3, Lcom/android/settings_ex/localepicker/LocaleListEditor$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor$5;-><init>(Lcom/android/settings_ex/localepicker/LocaleListEditor;)V

    .line 205
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 232
    new-instance v3, Lcom/android/settings_ex/localepicker/LocaleListEditor$6;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor$6;-><init>(Lcom/android/settings_ex/localepicker/LocaleListEditor;)V

    .line 205
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 171
    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 296
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    .line 297
    return-void

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 301
    .local v1, "menuItemRemove":Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 303
    iget-boolean v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v2, :cond_2

    move v2, v3

    .line 302
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 306
    iget-boolean v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/4 v0, 0x1

    .line 311
    .local v0, "isVisible":Z
    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    .end local v0    # "isVisible":Z
    :cond_1
    return-void

    .line 303
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 307
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isVisible":Z
    goto :goto_1

    .line 309
    .end local v0    # "isVisible":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    if-le v2, v3, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "isVisible":Z
    goto :goto_1

    .end local v0    # "isVisible":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isVisible":Z
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x158

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->setHasOptionsMenu(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getUserLocaleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "feedsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 81
    new-instance v3, Lcom/android/settings_ex/localepicker/LocaleListEditor$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor$1;-><init>(Lcom/android/settings_ex/localepicker/LocaleListEditor;)V

    .line 80
    invoke-direct {v1, v2, v0, v3}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 245
    const/4 v1, 0x2

    const v2, 0x7f0e0580

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 246
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 247
    const v1, 0x7f0200fd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 248
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 249
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    .line 250
    invoke-direct {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 243
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .local v1, "result":Landroid/view/View;
    move-object v2, v1

    .line 107
    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0400a5

    invoke-virtual {p1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "myLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e057f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 111
    invoke-direct {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    .line 112
    return-object v1
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 2
    .param p1, "locale"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 286
    .local v0, "mFragmentManager":Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 282
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 142
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    .line 147
    :goto_0
    return v1

    .line 145
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    goto :goto_0

    .line 149
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 151
    return v1

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 317
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string/jumbo v0, "localeRemoveMode"

    iget-boolean v1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string/jumbo v0, "showingLocaleRemoveDialog"

    iget-boolean v1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    const-string/jumbo v0, "localeRemoveMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 120
    const-string/jumbo v0, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 125
    iget-boolean v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    .line 116
    :cond_1
    return-void
.end method
