.class Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;
.super Landroid/os/AsyncTask;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPrefLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/support/v7/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/datausage/AppDataUsage;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/datausage/AppDataUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/AppDataUsage;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/datausage/AppDataUsage;Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/datausage/AppDataUsage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings_ex/datausage/AppDataUsage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 516
    iget-object v5, p0, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v5}, Lcom/android/settings_ex/datausage/AppDataUsage;->-wrap1(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 517
    .local v3, "pm":Landroid/content/pm/PackageManager;
    aget-object v2, p1, v6

    .line 519
    .local v2, "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 520
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v5}, Lcom/android/settings_ex/datausage/AppDataUsage;->-wrap0(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 521
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 522
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 523
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    return-object v4

    .line 525
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "preference":Landroid/support/v7/preference/Preference;
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 515
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;->doInBackground([Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 532
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get0(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;->this$0:Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->-get0(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 531
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pref"    # Ljava/lang/Object;

    .prologue
    .line 531
    check-cast p1, Landroid/support/v7/preference/Preference;

    .end local p1    # "pref":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;->onPostExecute(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
