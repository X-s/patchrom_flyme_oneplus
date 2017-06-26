.class public Lcom/android/settings_ex/HelpUtils;
.super Ljava/lang/Object;
.source "HelpUtils.java"


# static fields
.field private static final EXTRA_BACKUP_URI:Ljava/lang/String; = "EXTRA_BACKUP_URI"

.field private static final EXTRA_CONTEXT:Ljava/lang/String; = "EXTRA_CONTEXT"

.field private static final EXTRA_PRIMARY_COLOR:Ljava/lang/String; = "EXTRA_PRIMARY_COLOR"

.field private static final EXTRA_THEME:Ljava/lang/String; = "EXTRA_THEME"

.field private static final MENU_HELP:I = 0x65

.field private static final PARAM_LANGUAGE_CODE:Ljava/lang/String; = "hl"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String;

.field private static sCachedVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/settings_ex/HelpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/HelpUtils;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addIntentParameters(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "backupContext"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 200
    const-string v2, "EXTRA_CONTEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    const-string v2, "EXTRA_CONTEXT"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_0
    const-string v2, "EXTRA_THEME"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 206
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 207
    .local v1, "typedValue":Landroid/util/TypedValue;
    const v2, 0x1010433

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 208
    const-string v2, "EXTRA_PRIMARY_COLOR"

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    return-void
.end method

.method public static getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helpUriString"    # Ljava/lang/String;
    .param p2, "backupContext"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v3, 0x3

    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 175
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v2, p2}, Lcom/android/settings_ex/HelpUtils;->addIntentParameters(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 177
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 196
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 179
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "EXTRA_BACKUP_URI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    const-string v3, "EXTRA_BACKUP_URI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/android/settings_ex/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 184
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 186
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 189
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings_ex/HelpUtils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, "fullUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "helpUriResource"    # I
    .param p3, "backupContext"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 78
    const/16 v1, 0x65

    const v2, 0x7f0c0bb8

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 79
    .local v0, "helpItem":Landroid/view/MenuItem;
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "helpUri"    # Ljava/lang/String;
    .param p3, "backupContext"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 72
    const/16 v1, 0x65

    const v2, 0x7f0c0bb8

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    .local v0, "helpItem":Landroid/view/MenuItem;
    invoke-static {p0, v0, p2, p3}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "helpMenuItem"    # Landroid/view/MenuItem;
    .param p2, "helpUriString"    # Ljava/lang/String;
    .param p3, "backupContext"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    :goto_0
    return v1

    .line 145
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/settings_ex/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 150
    new-instance v3, Lcom/android/settings_ex/HelpUtils$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/HelpUtils$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 157
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v1, v2

    .line 165
    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helpMenuItem"    # Landroid/view/MenuItem;
    .param p2, "helpUrlString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    :goto_0
    return v3

    .line 101
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings_ex/HelpUtils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, "fullUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10800000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 112
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 113
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 114
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 115
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v3, v4

    .line 122
    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 220
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    sget-object v3, Lcom/android/settings_ex/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 229
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    .line 232
    const-string v3, "version"

    sget-object v4, Lcom/android/settings_ex/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 233
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/settings_ex/HelpUtils;->TAG:Ljava/lang/String;

    const-string v4, "Invalid package name for context"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "version"

    sget-object v4, Lcom/android/settings_ex/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method
