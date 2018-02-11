.class public Lcom/android/settings_ex/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/UserDictionarySettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final DELETE_SELECTION_WITHOUT_SHORTCUT:Ljava/lang/String; = "word=? AND shortcut is null OR shortcut=\'\'"

.field private static final DELETE_SELECTION_WITH_SHORTCUT:Ljava/lang/String; = "word=? AND shortcut=?"

.field private static final INDEX_SHORTCUT:I = 0x2

.field private static final OPTIONS_MENU_ADD:I = 0x1

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_SELECTION:Ljava/lang/String; = "locale=?"

.field private static final QUERY_SELECTION_ALL_LOCALES:Ljava/lang/String; = "locale is null"

.field private static final TAG:Ljava/lang/String; = "UserDictionarySettings"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field protected mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "word"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "shortcut"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/settings_ex/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 7

    .prologue
    .line 148
    new-instance v0, Lcom/android/settings_ex/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 149
    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 150
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "word"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "shortcut"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 151
    const v2, 0x1020014

    const v5, 0x1020015

    filled-new-array {v2, v5}, [I

    move-result-object v5

    .line 149
    const v2, 0x7f040205

    move-object v6, p0

    .line 148
    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/settings_ex/UserDictionarySettings;)V

    return-object v0
.end method

.method private createCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 134
    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 137
    const-string/jumbo v3, "locale is null"

    .line 138
    const-string/jumbo v5, "UPPER(word)"

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    move-object v6, p1

    .line 141
    .local v6, "queryLocale":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 142
    const-string/jumbo v3, "locale=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    .line 143
    const-string/jumbo v5, "UPPER(word)"

    .line 141
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 140
    .end local v6    # "queryLocale":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "queryLocale":Ljava/lang/String;
    goto :goto_0
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 5
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "shortcut"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "word=? AND shortcut is null OR shortcut=\'\'"

    .line 227
    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    .line 225
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "word=? AND shortcut=?"

    .line 231
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    .line 229
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "shortcut"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 218
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 209
    iget-object v1, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 208
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "editingWord"    # Ljava/lang/String;
    .param p2, "editingShortcut"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 189
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "mode"

    if-nez p1, :cond_0

    .line 191
    const/4 v1, 0x1

    .line 190
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string/jumbo v1, "word"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "shortcut"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v1, "locale"

    iget-object v3, p0, Lcom/android/settings_ex/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 198
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/inputmethod/UserDictionaryAddWordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 199
    const v3, 0x7f0e0ab9

    move-object v5, v4

    .line 197
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 188
    return-void

    .end local v0    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_0
    move v1, v6

    .line 192
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f0e0ab6

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    const/4 v6, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 95
    .local v5, "localeFromArguments":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_3

    .line 96
    move-object v4, v5

    .line 103
    :goto_2
    iput-object v4, p0, Lcom/android/settings_ex/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 104
    invoke-direct {p0, v4}, Lcom/android/settings_ex/UserDictionarySettings;->createCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    .local v1, "emptyView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 108
    const v7, 0x7f0e0ac6

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 113
    .local v3, "listView":Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/settings_ex/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 115
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 117
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/settings_ex/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 82
    return-void

    .line 88
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "emptyView":Landroid/widget/TextView;
    .end local v3    # "listView":Landroid/widget/ListView;
    .end local v5    # "localeFromArguments":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "locale"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "localeFromIntent":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v6    # "localeFromIntent":Ljava/lang/String;
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v7, "locale"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 97
    .restart local v5    # "localeFromArguments":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 98
    move-object v4, v6

    .local v4, "locale":Ljava/lang/String;
    goto :goto_2

    .line 100
    .end local v4    # "locale":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .local v4, "locale":Ljava/lang/String;
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 167
    const/4 v1, 0x1

    const v2, 0x7f0e0ab8

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 168
    const v2, 0x7f0201e8

    .line 167
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, "actionItem":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v0, 0x10900b8

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 156
    invoke-direct {p0, p3}, Lcom/android/settings_ex/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "word":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/settings_ex/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "shortcut":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 177
    invoke-direct {p0, v2, v2}, Lcom/android/settings_ex/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return v1

    .line 180
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
