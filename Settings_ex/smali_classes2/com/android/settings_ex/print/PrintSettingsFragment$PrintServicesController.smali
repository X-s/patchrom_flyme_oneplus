.class final Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintServicesController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/print/PrintSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 175
    .local v0, "printManager":Landroid/print/PrintManager;
    if-eqz v0, :cond_0

    .line 176
    new-instance v1, Landroid/print/PrintServicesLoader;

    iget-object v2, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 177
    const/4 v3, 0x3

    .line 176
    invoke-direct {v1, v0, v2, v3}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object v1

    .line 179
    :cond_0
    return-object v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "services"    # Ljava/lang/Object;

    .prologue
    .line 184
    check-cast p2, Ljava/util/List;

    .end local p2    # "services":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;>;"
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 187
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-static {v11}, Lcom/android/settings_ex/print/PrintSettingsFragment;->-get1(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 188
    return-void

    .line 189
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "print_services_category"

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_1

    .line 190
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-static {v11}, Lcom/android/settings_ex/print/PrintSettingsFragment;->-get1(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 193
    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->-get1(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 194
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 196
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 197
    .local v5, "numServices":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 198
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/printservice/PrintServiceInfo;

    .line 199
    .local v8, "service":Landroid/printservice/PrintServiceInfo;
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v10

    .line 200
    iget-object v11, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v11}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 199
    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    .line 202
    .local v7, "preference":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 206
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 208
    const-class v10, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 209
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setPersistent(Z)V

    .line 211
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 212
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    const v11, 0x7f0e0b18

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    :goto_1
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 218
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {v7, v2}, Landroid/support/v7/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_2
    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 223
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v10, "EXTRA_CHECKED"

    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string/jumbo v10, "EXTRA_TITLE"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v10, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->-get1(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 214
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    const v11, 0x7f0e0b19

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 230
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "preference":Landroid/support/v7/preference/PreferenceScreen;
    .end local v8    # "service":Landroid/printservice/PrintServiceInfo;
    .end local v9    # "title":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->-wrap0(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 231
    .local v0, "addNewServicePreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_5

    .line 232
    iget-object v10, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/settings_ex/print/PrintSettingsFragment;->-get1(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 185
    :cond_5
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;>;"
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings_ex/print/PrintSettingsFragment;->-get1(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 237
    return-void
.end method
