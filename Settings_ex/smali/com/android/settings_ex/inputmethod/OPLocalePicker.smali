.class public Lcom/android/settings_ex/inputmethod/OPLocalePicker;
.super Landroid/app/ListFragment;
.source "OPLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/OPLocalePicker$Holder;,
        Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;,
        Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 276
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const v0, 0x7f04009f

    const v1, 0x7f12013b

    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 240
    .local v8, "isInDeveloperMode":Z
    :cond_0
    invoke-static {p0, v8}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)[Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    move-result-object v4

    .line 242
    .local v4, "localeInfos":[Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 243
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/settings_ex/inputmethod/OPLocalePicker$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/inputmethod/OPLocalePicker$1;-><init>(Landroid/content/Context;II[Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;Landroid/view/LayoutInflater;II)V

    return-object v0
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)[Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 107
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "locales":[Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->getLocaleArray([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object v5

    .line 111
    .local v5, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 112
    const-string v11, "ar-XB"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    const-string v11, "en-XA"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 117
    const v11, 0x7f0a0076

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "specialLocaleCodes":[Ljava/lang/String;
    const v11, 0x7f0a0077

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "specialLocaleNames":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v4, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "locale":Ljava/lang/String;
    const/16 v11, 0x5f

    const/16 v12, 0x2d

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 123
    .local v2, "l":Ljava/util/Locale;
    if-eqz v2, :cond_1

    const-string v11, "und"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 127
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 131
    new-instance v11, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    .line 138
    .local v7, "previous":Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    iget-object v11, v7, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v7, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zz"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 144
    iget-object v11, v7, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v11, v9, v10}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 150
    new-instance v11, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    invoke-static {v2, v9, v10}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 153
    :cond_3
    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "displayName":Ljava/lang/String;
    new-instance v11, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    invoke-direct {v11, v0, v2}, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 162
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "l":Ljava/util/Locale;
    .end local v3    # "locale":Ljava/lang/String;
    .end local v7    # "previous":Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 163
    invoke-static {p0, v4}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->reOrderLocales(Landroid/content/Context;Ljava/util/List;)[Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    move-result-object v11

    return-object v11
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 293
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    aget-object v2, p2, v1

    .line 298
    :goto_1
    return-object v2

    .line 292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLocaleArray([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "locales"    # [Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const v3, 0x7f0c01e8

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "locale_codes":Ljava/lang/String;
    const/4 v0, 0x0

    .line 96
    .local v0, "localeCodesArray":[Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    array-length v3, v0

    if-nez v3, :cond_2

    :cond_1
    move-object v0, p0

    .end local v0    # "localeCodesArray":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v1, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method private static reOrderLocales(Landroid/content/Context;Ljava/util/List;)[Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;",
            ">;)[",
            "Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;"
        }
    .end annotation

    .prologue
    .local p1, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;>;"
    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 168
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v6, "localeInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;>;"
    const/4 v4, -0x1

    .line 171
    .local v4, "localeCNIndex":I
    const/4 v7, -0x1

    .line 172
    .local v7, "localeTWIndex":I
    const/4 v8, -0x1

    .line 174
    .local v8, "localeUSIndex":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 175
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 176
    .local v1, "finalSize":I
    const/4 v0, 0x0

    .line 177
    .local v0, "country":Ljava/lang/String;
    const/4 v3, 0x0

    .line 178
    .local v3, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 179
    .local v5, "localeInfo":Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 180
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "localeInfo":Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    check-cast v5, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    .line 182
    .restart local v5    # "localeInfo":Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    iget-object v11, v5, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v11, v5, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 184
    const-string v11, "CN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "TW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "US"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "en"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 179
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const-string v11, "TW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "zh"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 189
    const v11, 0x7f0c01e9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 190
    move v7, v2

    .line 193
    :cond_2
    const-string v11, "CN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "zh"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 194
    const v11, 0x7f0c01ea

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 195
    move v4, v2

    .line 198
    :cond_3
    const-string v11, "US"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "en"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 199
    const v11, 0x7f0c01eb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 200
    move v8, v2

    goto :goto_1

    .line 205
    :cond_4
    if-eq v8, v12, :cond_5

    .line 206
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v13, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    :cond_5
    if-eq v7, v12, :cond_6

    .line 210
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v13, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 213
    :cond_6
    if-eq v4, v12, :cond_7

    .line 214
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v13, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 217
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v9, v11, [Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    .line 218
    .local v9, "orderedLocales":[Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_8

    .line 219
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    aput-object v11, v9, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 222
    :cond_8
    return-object v9
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 341
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 346
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 347
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 349
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 351
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 305
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->mListener:Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 329
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->mListener:Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 331
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 316
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleSelectionListener;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/OPLocalePicker;->mListener:Lcom/android/settings_ex/inputmethod/OPLocalePicker$LocaleSelectionListener;

    .line 310
    return-void
.end method
