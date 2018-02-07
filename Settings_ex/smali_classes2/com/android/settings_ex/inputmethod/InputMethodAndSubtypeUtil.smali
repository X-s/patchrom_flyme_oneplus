.class Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INPUT_METHOD_SEPARATER:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATER:C = ';'

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field static final TAG:Ljava/lang/String; = "InputMethdAndSubtypeUtil"

.field private static final sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 56
    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 60
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 59
    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "imeToSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "imi":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 69
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 72
    .local v5, "subtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subtypeId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, "subtypeId":Ljava/lang/String;
    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    .end local v1    # "imi":Ljava/lang/String;
    .end local v3    # "subtypeId":Ljava/lang/String;
    .end local v4    # "subtypeId$iterator":Ljava/util/Iterator;
    .end local v5    # "subtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static buildInputMethodsString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "imiList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, "imi":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 84
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    .end local v1    # "imi":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "imiId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 146
    .local v0, "enabledImeAndSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "enabledImesAndSubtypesString":Ljava/lang/String;
    const-string/jumbo v2, "enabled_input_methods"

    .line 149
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    return-void
.end method

.method private static getDisabledSystemIMEs(Landroid/content/ContentResolver;)Ljava/util/HashSet;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v2, "disabled_system_input_methods"

    .line 155
    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "disabledIMEsStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    return-object v1

    .line 160
    :cond_0
    sget-object v2, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 161
    :goto_0
    sget-object v2, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    sget-object v2, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    return-object v1
.end method

.method private static getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    if-nez p0, :cond_0

    .line 416
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    return-object v2

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_1

    .line 419
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    return-object v2

    .line 421
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 422
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-nez v0, :cond_2

    .line 423
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    return-object v2

    .line 425
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 426
    .local v1, "configurationLocale":Ljava/util/Locale;
    if-nez v1, :cond_3

    .line 427
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    return-object v2

    .line 429
    :cond_3
    return-object v1
.end method

.method private static getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    const-string/jumbo v1, "enabled_input_methods"

    .line 111
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "enabledInputMethodsStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method private static getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 94
    :try_start_0
    const-string/jumbo v1, "selected_input_method_subtype"

    .line 93
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method static getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 384
    if-nez p0, :cond_0

    .line 385
    const-string/jumbo v2, ""

    return-object v2

    .line 387
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 389
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 388
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 391
    .local v1, "subtypeName":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    const-string/jumbo v4, ""

    return-object v4

    .line 401
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 402
    .local v1, "locale":Ljava/util/Locale;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 403
    .local v2, "subtypeCount":I
    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 404
    .local v3, "subtypeNames":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 405
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 406
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 405
    invoke-virtual {v4, p1, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_1
    invoke-static {v1}, Landroid/icu/text/ListFormatter;->getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 409
    invoke-static {v4, v1}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static isInputMethodSubtypeSelected(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .param p0, "context"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/SettingsPreferenceFragment;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p2, "inputMethodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p3, "inputMethodPrefsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/support/v7/preference/Preference;>;>;"
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v2

    .line 305
    .local v2, "enabledSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 306
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "imiId":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 308
    .local v7, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v7, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v9, :cond_0

    move-object v8, v7

    .line 309
    check-cast v8, Landroid/support/v7/preference/TwoStatePreference;

    .line 310
    .local v8, "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 311
    .local v6, "isEnabled":Z
    invoke-virtual {v8, v6}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 312
    if-eqz p3, :cond_1

    .line 313
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "childPref$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 314
    .local v0, "childPref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 317
    .end local v0    # "childPref":Landroid/support/v7/preference/Preference;
    .end local v1    # "childPref$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {p0, p2, v5, v6}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings_ex/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    .line 320
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "imiId":Ljava/lang/String;
    .end local v6    # "isEnabled":Z
    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    .end local v8    # "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    :cond_2
    invoke-static {p0, p2, v2}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->updateSubtypesPreferenceChecked(Lcom/android/settings_ex/SettingsPreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V

    .line 301
    return-void
.end method

.method static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v3, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    return-object v3

    .line 125
    :cond_0
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 126
    :cond_1
    :goto_0
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "nextImsStr":Ljava/lang/String;
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 129
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v2, "subtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "imiId":Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    .end local v0    # "imiId":Ljava/lang/String;
    .end local v1    # "nextImsStr":Ljava/lang/String;
    .end local v2    # "subtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    return-object v3
.end method

.method private static putSelectedInputMethodSubtype(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "hashCode"    # I

    .prologue
    .line 105
    const-string/jumbo v0, "selected_input_method_subtype"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    return-void
.end method

.method static removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p0, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 373
    :cond_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 376
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    :cond_2
    return-void
.end method

.method static saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V
    .locals 25
    .param p0, "context"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "hasHardKeyboard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/SettingsPreferenceFragment;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "inputMethodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string/jumbo v23, "default_input_method"

    .line 170
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "currentInputMethodId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I

    move-result v15

    .line 174
    .local v15, "selectedInputMethodSubtype":I
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v5

    .line 175
    .local v5, "enabledIMEsAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->getDisabledSystemIMEs(Landroid/content/ContentResolver;)Ljava/util/HashSet;

    move-result-object v3

    .line 177
    .local v3, "disabledSystemIMEs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 178
    .local v13, "needsToResetSelectedSubtype":Z
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v2    # "currentInputMethodId":Ljava/lang/String;
    .local v9, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 179
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, "imiId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    .line 181
    .local v14, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v14, :cond_0

    .line 186
    instance-of v0, v14, Landroid/support/v7/preference/TwoStatePreference;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 187
    check-cast v14, Landroid/support/v7/preference/TwoStatePreference;

    .end local v14    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v14}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    .line 189
    .local v12, "isImeChecked":Z
    :goto_1
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 190
    .local v11, "isCurrentInputMethod":Z
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v22

    .line 191
    .local v22, "systemIme":Z
    if-nez p3, :cond_1

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    .line 191
    invoke-static/range {v23 .. v23}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v23

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 191
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_2

    :cond_1
    if-eqz v12, :cond_9

    .line 194
    :cond_2
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 196
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v5, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_3
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashSet;

    .line 200
    .local v21, "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 201
    .local v20, "subtypePrefFound":Z
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v17

    .line 202
    .local v17, "subtypeCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v7, v0, :cond_a

    .line 203
    invoke-virtual {v8, v7}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v16

    .line 204
    .local v16, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 206
    .local v18, "subtypeHashCodeStr":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/TwoStatePreference;

    .line 208
    .local v19, "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    if-nez v19, :cond_6

    .line 202
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 188
    .end local v7    # "i":I
    .end local v11    # "isCurrentInputMethod":Z
    .end local v12    # "isImeChecked":Z
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v17    # "subtypeCount":I
    .end local v18    # "subtypeHashCodeStr":Ljava/lang/String;
    .end local v19    # "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    .end local v20    # "subtypePrefFound":Z
    .end local v21    # "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "systemIme":Z
    .restart local v14    # "pref":Landroid/support/v7/preference/Preference;
    :cond_5
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .restart local v12    # "isImeChecked":Z
    goto :goto_1

    .line 211
    .end local v14    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v7    # "i":I
    .restart local v11    # "isCurrentInputMethod":Z
    .restart local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v17    # "subtypeCount":I
    .restart local v18    # "subtypeHashCodeStr":Ljava/lang/String;
    .restart local v19    # "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    .restart local v20    # "subtypePrefFound":Z
    .restart local v21    # "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "systemIme":Z
    :cond_6
    if-nez v20, :cond_7

    .line 214
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->clear()V

    .line 216
    const/4 v13, 0x1

    .line 217
    const/16 v20, 0x1

    .line 224
    :cond_7
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/TwoStatePreference;->isEnabled()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 225
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    if-eqz v11, :cond_4

    .line 227
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v23

    move/from16 v0, v23

    if-ne v15, v0, :cond_4

    .line 230
    const/4 v13, 0x0

    goto :goto_3

    .line 234
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 238
    .end local v7    # "i":I
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v17    # "subtypeCount":I
    .end local v18    # "subtypeHashCodeStr":Ljava/lang/String;
    .end local v19    # "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    .end local v20    # "subtypePrefFound":Z
    .end local v21    # "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    if-eqz v11, :cond_a

    .line 247
    const/4 v2, 0x0

    .line 252
    :cond_a
    if-eqz v22, :cond_0

    if-eqz p3, :cond_0

    .line 253
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 254
    if-eqz v12, :cond_0

    .line 255
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 258
    :cond_b
    if-nez v12, :cond_0

    .line 259
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 265
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v10    # "imiId":Ljava/lang/String;
    .end local v11    # "isCurrentInputMethod":Z
    .end local v12    # "isImeChecked":Z
    .end local v22    # "systemIme":Z
    :cond_c
    invoke-static {v5}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "enabledIMEsAndSubtypesString":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "disabledSystemIMEsString":Ljava/lang/String;
    if-nez v13, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->isInputMethodSubtypeSelected(Landroid/content/ContentResolver;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 288
    :goto_4
    const-string/jumbo v23, "enabled_input_methods"

    .line 287
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 289
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_d

    .line 290
    const-string/jumbo v23, "disabled_system_input_methods"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    :cond_d
    const-string/jumbo v23, "default_input_method"

    .line 296
    if-eqz v2, :cond_f

    .line 295
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    return-void

    .line 284
    :cond_e
    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->putSelectedInputMethodSubtype(Landroid/content/ContentResolver;I)V

    goto :goto_4

    .line 296
    :cond_f
    const-string/jumbo v2, ""

    goto :goto_5
.end method

.method static setSubtypesPreferenceEnabled(Lcom/android/settings_ex/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/SettingsPreferenceFragment;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "inputMethodProperties":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 327
    .local v4, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 328
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    .line 330
    .local v6, "subtypeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 331
    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 333
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-virtual {v4, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/TwoStatePreference;

    .line 334
    .local v3, "pref":Landroid/support/v7/preference/TwoStatePreference;
    if-eqz v3, :cond_1

    .line 335
    invoke-virtual {v3, p3}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    .line 330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "i":I
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "pref":Landroid/support/v7/preference/TwoStatePreference;
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtypeCount":I
    :cond_2
    return-void
.end method

.method private static updateSubtypesPreferenceChecked(Lcom/android/settings_ex/SettingsPreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 11
    .param p0, "context"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/SettingsPreferenceFragment;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "inputMethodProperties":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, "enabledSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    .line 346
    .local v7, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 347
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 352
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 353
    .local v0, "enabledSubtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v9

    .line 354
    .local v9, "subtypeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 355
    invoke-virtual {v4, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 356
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "hashCode":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 361
    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/TwoStatePreference;

    .line 363
    .local v6, "pref":Landroid/support/v7/preference/TwoStatePreference;
    if-eqz v6, :cond_1

    .line 364
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 354
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "enabledSubtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "hashCode":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "pref":Landroid/support/v7/preference/TwoStatePreference;
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v9    # "subtypeCount":I
    :cond_2
    return-void
.end method
