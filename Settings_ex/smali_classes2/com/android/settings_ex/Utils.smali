.class public final Lcom/android/settings_ex/Utils;
.super Lcom/android/settings_exlib/Utils;
.source "Utils.java"


# static fields
.field public static final BADNESS_COLORS:[I

.field public static final DISABLED_ALPHA:F = 0.4f

.field public static final OS_PKG:Ljava/lang/String; = "os"

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings_ex"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/Utils;->BADNESS_COLORS:[I

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings_ex/Utils;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/Utils;->sBuilder:Ljava/lang/StringBuilder;

    .line 1100
    new-instance v0, Ljava/util/Formatter;

    .line 1101
    sget-object v1, Lcom/android/settings_ex/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1100
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_ex/Utils;->sFormatter:Ljava/util/Formatter;

    .line 116
    return-void

    .line 134
    :array_0
    .array-data 4
        0x0
        -0x3bc7d8
        -0x1ab6e8
        -0xb8500
        -0x540d4
        -0x9861c9
        -0xf580be
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings_exlib/Utils;-><init>()V

    return-void
.end method

.method private static addAll(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)V
    .locals 3
    .param p0, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1144
    .local p1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    return-void

    .line 1145
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1146
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 1147
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    instance-of v2, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    .line 1149
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/settings_ex/Utils;->addAll(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)V

    .line 1145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1143
    :cond_2
    return-void
.end method

.method public static assignDefaultPhoto(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 372
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 373
    .local v1, "um":Landroid/os/UserManager;
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getDefaultUserIconAsBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, p1, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 371
    return-void
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "positiveAction"    # Ljava/lang/Runnable;

    .prologue
    .line 454
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 456
    const v1, 0x7f0e0d4e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 457
    new-instance v1, Lcom/android/settings_ex/Utils$1;

    invoke-direct {v1, p2}, Lcom/android/settings_ex/Utils$1;-><init>(Ljava/lang/Runnable;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private static checkPrefs(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)V
    .locals 4
    .param p0, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1128
    .local p1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    return-void

    .line 1129
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1130
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 1131
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    instance-of v2, v1, Lcom/android/settings_ex/SelfAvailablePreference;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 1132
    check-cast v2, Lcom/android/settings_ex/SelfAvailablePreference;

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings_ex/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1137
    :cond_1
    instance-of v2, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v2, :cond_2

    .line 1138
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/settings_ex/Utils;->checkPrefs(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)V

    .line 1129
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1133
    .restart local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    instance-of v2, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v2, :cond_2

    .line 1135
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/settings_ex/Utils;->addAll(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)V

    goto :goto_1

    .line 1127
    :cond_4
    return-void
.end method

.method public static ciActionOnSysUpdate(Landroid/content/Context;Landroid/os/PersistableBundle;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1239
    const-string/jumbo v4, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1241
    .local v3, "intentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1242
    const-string/jumbo v4, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v4, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, "extraVal":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1249
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    :cond_0
    const-string/jumbo v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1252
    const-string/jumbo v6, " with extra "

    .line 1251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1252
    const-string/jumbo v6, ", "

    .line 1251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1238
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "extraVal":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 350
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 352
    .local v1, "contactUri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 355
    .local v5, "userId":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 356
    const/4 v7, 0x1

    .line 354
    invoke-static {v6, v1, v7}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 358
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 359
    invoke-static {p0, v5}, Lcom/android/settings_ex/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V

    .line 360
    return-void

    .line 352
    .end local v0    # "avatarDataStream":Ljava/io/InputStream;
    .end local v5    # "userId":I
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .restart local v5    # "userId":I
    goto :goto_0

    .line 363
    .restart local v0    # "avatarDataStream":Ljava/io/InputStream;
    :cond_1
    const-string/jumbo v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 364
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 365
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v5, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 367
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_1
    return-void

    .line 368
    :catch_0
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p0, "displayText"    # Ljava/lang/CharSequence;
    .param p1, "accessibileText"    # Ljava/lang/String;

    .prologue
    .line 1030
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1031
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 1032
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1031
    const/4 v3, 0x0

    .line 1033
    const/16 v4, 0x12

    .line 1031
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1034
    return-object v0
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    if-nez p0, :cond_0

    .line 284
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 285
    :cond_0
    const-string/jumbo v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "brokenDownLocale":[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 288
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 289
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 290
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 292
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static enforceSameOwner(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 1069
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 1070
    .local v1, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 1071
    .local v0, "profileIds":[I
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    return p1

    .line 1074
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Given user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not belong to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1075
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 1074
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static forceCustomPadding(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "additive"    # Z

    .prologue
    const/4 v6, 0x0

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 338
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0f01e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 340
    .local v2, "paddingSide":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    :goto_0
    add-int v3, v2, v5

    .line 341
    .local v3, "paddingStart":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    :goto_1
    add-int v1, v2, v5

    .line 343
    .local v1, "paddingEnd":I
    const v5, 0x1050032

    .line 342
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 345
    .local v0, "paddingBottom":I
    invoke-virtual {p0, v3, v6, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 336
    return-void

    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingEnd":I
    .end local v3    # "paddingStart":I
    :cond_0
    move v5, v6

    .line 340
    goto :goto_0

    .restart local v3    # "paddingStart":I
    :cond_1
    move v5, v6

    .line 341
    goto :goto_1
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/widget/ListView;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    .line 306
    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 308
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 305
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 1104
    const v8, 0x10010

    .line 1106
    .local v8, "flags":I
    sget-object v9, Lcom/android/settings_ex/Utils;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1107
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1108
    sget-object v1, Lcom/android/settings_ex/Utils;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "withSeconds"    # Z

    .prologue
    const v5, 0x15180

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 821
    .local v4, "seconds":I
    if-nez p3, :cond_0

    .line 823
    add-int/lit8 v4, v4, 0x1e

    .line 826
    :cond_0
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 827
    .local v2, "minutes":I
    if-lt v4, v5, :cond_1

    .line 828
    div-int v0, v4, v5

    .line 829
    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 831
    :cond_1
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_2

    .line 832
    div-int/lit16 v1, v4, 0xe10

    .line 833
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 835
    :cond_2
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_3

    .line 836
    div-int/lit8 v2, v4, 0x3c

    .line 837
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 839
    :cond_3
    if-eqz p3, :cond_7

    .line 840
    if-lez v0, :cond_4

    .line 841
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 842
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    .line 841
    const v6, 0x7f0e0ab4

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 843
    :cond_4
    if-lez v1, :cond_5

    .line 844
    new-array v5, v11, [Ljava/lang/Object;

    .line 845
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 844
    const v6, 0x7f0e0ab5

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 846
    :cond_5
    if-lez v2, :cond_6

    .line 847
    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f0e0ab6

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 849
    :cond_6
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0e0ab7

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 852
    :cond_7
    if-lez v0, :cond_8

    .line 853
    new-array v5, v11, [Ljava/lang/Object;

    .line 854
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 853
    const v6, 0x7f0e0ab8

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 855
    :cond_8
    if-lez v1, :cond_9

    .line 856
    new-array v5, v10, [Ljava/lang/Object;

    .line 857
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 856
    const v6, 0x7f0e0ab9

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 859
    :cond_9
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0e0aba

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v3, 0x0

    .line 263
    if-nez p0, :cond_0

    return-object v3

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    .line 268
    :cond_1
    const-string/jumbo v0, ""

    .line 269
    .local v0, "addresses":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_3
    return-object v0
.end method

.method public static getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profileId"    # I

    .prologue
    const/4 v9, 0x0

    .line 995
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 996
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 997
    .local v4, "mdmPackage":Landroid/content/ComponentName;
    if-nez v4, :cond_0

    .line 998
    return-object v9

    .line 1000
    :cond_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1002
    .local v5, "mdmPackageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1004
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1005
    .local v3, "mdmApplicationInfo":Landroid/content/pm/ApplicationInfo;
    return-object v3

    .line 1006
    .end local v2    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v3    # "mdmApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1007
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error while retrieving application info for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1008
    const-string/jumbo v8, ", userId "

    .line 1007
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    return-object v9
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1195
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1197
    const/16 v3, 0x2200

    .line 1195
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1199
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1200
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find info for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 301
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCredentialOwnerUserId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1082
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings_ex/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getCredentialOwnerUserId(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 1089
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1090
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    return v1
.end method

.method public static getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 259
    .local v0, "prop":Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/settings_ex/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultUserIconAsBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "userId"    # I

    .prologue
    .line 910
    const/4 v0, 0x0

    .line 912
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/android/settings_ex/Utils;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 913
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 914
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/settings_exlib/drawable/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/drawable/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 916
    sget-object v1, Lcom/android/settings_ex/Utils;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 918
    :cond_0
    return-object v0
.end method

.method public static getEffectiveUserId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1039
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1040
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_0

    .line 1041
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    return v1

    .line 1043
    :cond_0
    const-string/jumbo v1, "Settings"

    const-string/jumbo v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    return v1
.end method

.method public static getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;
    .locals 5
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "checkUser"    # Landroid/os/UserHandle;

    .prologue
    .line 872
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 873
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 874
    .local v0, "checkUserId":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 875
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_0

    .line 876
    return-object v1

    .line 879
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public static getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 932
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 933
    .local v7, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 935
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 936
    .local v8, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 937
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "ivi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 938
    .local v5, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v5}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomains()Landroid/util/ArraySet;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "host$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 939
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 943
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "host$iterator":Ljava/util/Iterator;
    .end local v5    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v6    # "ivi$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 944
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "filter$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 945
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v9, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 946
    const-string/jumbo v9, "http"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 947
    const-string/jumbo v9, "https"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    .line 945
    if-eqz v9, :cond_2

    .line 948
    :cond_3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 952
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "filter$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v8
.end method

.method public static getInsecureTargetUser(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 9
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 730
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 731
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 733
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    .line 734
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v6

    .line 733
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 735
    .local v5, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 738
    :cond_0
    if-eqz p2, :cond_4

    .line 739
    const-string/jumbo v6, "android.intent.extra.USER"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object v4, v6

    .line 740
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 743
    :cond_1
    if-eqz p1, :cond_6

    .line 744
    const-string/jumbo v6, "android.intent.extra.USER"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object v1, v6

    .line 745
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_7

    .line 753
    :cond_2
    return-object v2

    .line 736
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_3
    return-object v5

    :cond_4
    move-object v4, v7

    .line 739
    goto :goto_0

    .line 741
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_5
    return-object v4

    :cond_6
    move-object v1, v7

    .line 744
    goto :goto_1

    .line 746
    .restart local v1    # "argumentsUser":Landroid/os/UserHandle;
    :cond_7
    return-object v1

    .line 748
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 750
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "Settings"

    const-string/jumbo v8, "Could not talk to activity manager."

    invoke-static {v6, v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    return-object v7
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 396
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 397
    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v11

    .line 398
    const-string/jumbo v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    .line 395
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    .local v6, "localRawProfile":Landroid/database/Cursor;
    if-nez v6, :cond_0

    return-object v4

    .line 404
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    return-object v4

    .line 407
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 409
    .local v8, "localRowProfileId":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 414
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 415
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "data2"

    aput-object v3, v2, v11

    .line 416
    const-string/jumbo v3, "data3"

    aput-object v3, v2, v12

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 413
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 419
    .local v10, "structuredName":Landroid/database/Cursor;
    if-nez v10, :cond_2

    return-object v4

    .line 408
    .end local v8    # "localRowProfileId":J
    .end local v10    # "structuredName":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 408
    throw v1

    .line 422
    .restart local v8    # "localRowProfileId":J
    .restart local v10    # "structuredName":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 431
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 423
    return-object v4

    .line 425
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, "partialName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 427
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 431
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 429
    return-object v7

    .line 430
    .end local v7    # "partialName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    .line 431
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 430
    throw v1
.end method

.method public static getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 617
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 618
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 619
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 620
    .local v2, "profile":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 618
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 624
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 625
    return-object v2

    .line 628
    .end local v2    # "profile":Landroid/os/UserHandle;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public static getManagedProfileId(Landroid/os/UserManager;I)I
    .locals 4
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "parentUserId"    # I

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 647
    .local v1, "profileIds":[I
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 648
    .local v0, "profileId":I
    if-eq v0, p1, :cond_0

    .line 649
    return v0

    .line 647
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "profileId":I
    :cond_1
    const/16 v2, -0x2710

    return v2
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "full"    # Z

    .prologue
    .line 378
    if-eqz p1, :cond_0

    .line 379
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 381
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNonIndexable(ILandroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "xml"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1114
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1117
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1119
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/support/v7/preference/PreferenceManager;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 1121
    .local v0, "manager":Landroid/support/v7/preference/PreferenceManager;
    invoke-virtual {v0, p1, p0, v4}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 1122
    .local v2, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-static {v2, v1}, Lcom/android/settings_ex/Utils;->checkPrefs(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)V

    .line 1124
    return-object v1
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 438
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 437
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 439
    .local v6, "profile":Landroid/database/Cursor;
    if-nez v6, :cond_0

    return-object v3

    .line 442
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 443
    return-object v3

    .line 445
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 445
    return-object v1

    .line 446
    :catchall_0
    move-exception v1

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 446
    throw v1
.end method

.method public static getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 680
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 681
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 683
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, "launchedFromPackage":Ljava/lang/String;
    const-string/jumbo v8, "com.android.settings_ex"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 686
    .local v6, "launchedFromSettingsApp":Z
    new-instance v7, Landroid/os/UserHandle;

    .line 687
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v8

    .line 686
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 688
    .local v7, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 694
    :cond_0
    if-eqz p3, :cond_5

    .line 695
    const-string/jumbo v8, "android.intent.extra.USER"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v4, v8

    .line 696
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 702
    :cond_1
    if-eqz p2, :cond_2

    .line 703
    const-string/jumbo v8, "android.intent.extra.USER"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v1, v8

    .line 704
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 714
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_3
    :goto_1
    return-object v2

    .line 690
    .restart local v5    # "launchedFromPackage":Ljava/lang/String;
    .restart local v6    # "launchedFromSettingsApp":Z
    .restart local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_4
    invoke-static {p1, v7}, Lcom/android/settings_ex/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 691
    return-object v7

    :cond_5
    move-object v4, v1

    .line 695
    goto :goto_0

    .line 698
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_6
    if-eqz v6, :cond_1

    invoke-static {p1, v4}, Lcom/android/settings_ex/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 699
    return-object v4

    .line 706
    .restart local v1    # "argumentsUser":Landroid/os/UserHandle;
    :cond_7
    if-eqz v6, :cond_3

    invoke-static {p1, v1}, Lcom/android/settings_ex/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    .line 707
    return-object v1

    .line 710
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 712
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "Settings"

    const-string/jumbo v9, "Could not talk to activity manager."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "given":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "given":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "given":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1056
    if-nez p1, :cond_0

    .line 1057
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v1

    return v1

    .line 1059
    :cond_0
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1060
    .local v0, "userId":I
    invoke-static {p0, v0}, Lcom/android/settings_ex/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 211
    .local v0, "um":Landroid/os/UserManager;
    if-nez v0, :cond_0

    .line 212
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to load UserManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_0
    return-object v0
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 247
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 248
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 1
    .param p0, "loading"    # Landroid/view/View;
    .param p1, "doneLoading"    # Landroid/view/View;
    .param p2, "done"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 957
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0, p3}, Lcom/android/settings_ex/Utils;->setViewShown(Landroid/view/View;ZZ)V

    .line 958
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/Utils;->setViewShown(Landroid/view/View;ZZ)V

    .line 956
    return-void

    .line 957
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 469
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 923
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v1, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v0, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 927
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " number of activities in preferred list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 883
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 884
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    .line 883
    const/4 v4, 0x0

    .line 885
    const v5, 0x101008c

    .line 883
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 886
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 888
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 889
    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static isBandwidthControlEnabled()Z
    .locals 3

    .prologue
    .line 1015
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1014
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 1017
    .local v1, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 297
    const-string/jumbo v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1156
    const-string/jumbo v2, "device_provisioned"

    .line 1155
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isLowStorage(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 899
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 900
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;)Z
    .locals 1
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 637
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    return v0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;I)Z
    .locals 3
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "userId"    # I

    .prologue
    .line 661
    if-nez p0, :cond_0

    .line 662
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "userManager must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 664
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 665
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isNetworkSettingsApkAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1221
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "org.codeaurora.settings.NETWORK_OPERATOR_SETTINGS_ASYNC"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1222
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1223
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1224
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1227
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1229
    const/4 v5, 0x1

    return v5

    .line 1232
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return v6
.end method

.method static isOemUnlockEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 771
    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 770
    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 772
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method public static isPackageDirectBootAware(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1259
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1260
    const/4 v3, 0x0

    .line 1259
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1261
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 1262
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1264
    .local v1, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method public static isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1208
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1209
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v3
.end method

.method private static isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    .locals 2
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "otherUser"    # Landroid/os/UserHandle;

    .prologue
    .line 760
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 761
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 762
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 761
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 230
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 235
    const-string/jumbo v2, "connectivity"

    .line 234
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 236
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResPackageName"    # Ljava/lang/String;
    .param p4, "titleResId"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "isShortcut"    # Z

    .prologue
    const/4 v2, 0x1

    .line 592
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const-class v1, Lcom/android/settings_ex/SubSettings$BluetoothSubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 595
    const-string/jumbo v1, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    :goto_0
    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string/jumbo v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 604
    const-string/jumbo v1, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string/jumbo v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    const-string/jumbo v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 608
    const-string/jumbo v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 609
    return-object v0

    .line 596
    :cond_0
    const-class v1, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    const-class v1, Lcom/android/settings_ex/SubSettings$SavedAccessPointsSubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 598
    const-string/jumbo v1, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 600
    :cond_1
    const-class v1, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/view/View;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x2000000

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 319
    .local v1, "movePadding":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 320
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 321
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0f01e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 323
    .local v3, "paddingSide":I
    const v5, 0x1050032

    .line 322
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 325
    .local v2, "paddingBottom":I
    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_3

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 328
    if-eqz p3, :cond_2

    move v0, v6

    .line 329
    .local v0, "effectivePaddingSide":I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 317
    .end local v0    # "effectivePaddingSide":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingSide":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_2
    return-void

    .end local v1    # "movePadding":Z
    :cond_1
    move v1, v6

    .line 318
    goto :goto_0

    .restart local v1    # "movePadding":Z
    .restart local v2    # "paddingBottom":I
    .restart local v3    # "paddingSide":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 328
    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {p2, v3, v6, v3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2
.end method

.method public static resolveResource(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    .line 1094
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1095
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1096
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method static setOemUnlockEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 781
    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 780
    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 782
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 779
    return-void
.end method

.method private static setViewShown(Landroid/view/View;ZZ)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 962
    if-eqz p2, :cond_2

    .line 963
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 964
    if-eqz p1, :cond_0

    const/high16 v1, 0x10a0000

    .line 963
    :goto_0
    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 965
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    .line 966
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 983
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 961
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_2
    return-void

    .line 964
    :cond_0
    const v1, 0x10a0001

    goto :goto_0

    .line 968
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    new-instance v1, Lcom/android/settings_ex/Utils$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/Utils$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 985
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 986
    if-eqz p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    goto :goto_3
.end method

.method public static showAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a007b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "hideAccounts":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    return v6

    .line 804
    :cond_1
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v1, v2

    .line 805
    .local v0, "account":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    .line 804
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    .end local v0    # "account":Ljava/lang/String;
    :cond_3
    return v6
.end method

.method public static showSimCardTile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 792
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 794
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .prologue
    .line 1161
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1162
    invoke-static {p2}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 1163
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1164
    const/4 v1, 0x1

    return v1

    .line 1166
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 492
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    .line 491
    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V

    .line 490
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "isShortcut"    # Z

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p6

    move v6, p7

    .line 521
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 523
    .local v7, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 524
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 520
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-virtual {p3, v7, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResPackageName"    # Ljava/lang/String;
    .param p6, "titleResId"    # I
    .param p7, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 515
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 514
    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V

    .line 513
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResPackageName"    # Ljava/lang/String;
    .param p6, "titleResId"    # I
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "isShortcut"    # Z

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    move/from16 v6, p8

    .line 533
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 535
    .local v7, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 536
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 532
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p3, v7, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x0

    .line 546
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 547
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 544
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 549
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v8

    .line 551
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    const v0, 0x8000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 553
    invoke-virtual {p0, v8, p6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResPackageName"    # Ljava/lang/String;
    .param p4, "titleResId"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "isShortcut"    # Z
    .param p7, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 561
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 562
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;Z)V

    .line 559
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v10

    .line 567
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 568
    const v1, 0x8000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    move-object/from16 v0, p7

    invoke-virtual {p0, v10, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static unlockWorkProfileIfNecessary(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1171
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 1172
    const/4 v4, 0x2

    .line 1171
    invoke-interface {v3, p1, v4}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 1173
    return v5

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    return v5

    .line 1178
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1179
    return v5

    .line 1182
    :cond_1
    const-string/jumbo v3, "keyguard"

    .line 1181
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1183
    .local v1, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v1, v6, v6, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v2

    .line 1184
    .local v2, "unlockIntent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 1185
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1186
    const/4 v3, 0x1

    return v3

    .line 1188
    :cond_2
    return v5
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v8, 0x0

    .line 167
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 168
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    if-nez v5, :cond_0

    .line 169
    return v8

    .line 172
    :cond_0
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 176
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 177
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 178
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 179
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 180
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 184
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 185
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 186
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 184
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 188
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 190
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    :cond_1
    const/4 v7, 0x1

    return v7

    .line 178
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 201
    return v8
.end method
