.class public Lcom/oneplus/settings/packageuninstaller/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;
    }
.end annotation


# static fields
.field public static final INTENT_ATTR_APPLICATION_INFO:Ljava/lang/String; = "com.android.packageinstaller.applicationInfo"

.field public static final INTENT_ATTR_INSTALL_STATUS:Ljava/lang/String; = "com.android.packageinstaller.installStatus"

.field public static final INTENT_ATTR_PACKAGE_NAME:Ljava/lang/String; = "com.android.packageinstaller.PackageName"

.field public static final INTENT_ATTR_PERMISSIONS_LIST:Ljava/lang/String; = "com.android.packageinstaller.PermissionsList"

.field public static final PREFIX:Ljava/lang/String; = "com.android.packageinstaller."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;
    .locals 9
    .param p0, "pContext"    # Landroid/app/Activity;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "sourceFile"    # Ljava/io/File;

    .prologue
    .line 155
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "archiveFilePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 157
    .local v5, "pRes":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 158
    .local v1, "assmgr":Landroid/content/res/AssetManager;
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 159
    new-instance v6, Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 160
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 163
    .local v4, "label":Ljava/lang/CharSequence;
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v7, :cond_0

    .line 165
    :try_start_0
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 169
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 170
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    .line 171
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 173
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 176
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v7, :cond_2

    .line 178
    :try_start_1
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 182
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 185
    :cond_3
    new-instance v7, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;

    invoke-direct {v7, v4, v3}, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v7

    .line 171
    :cond_4
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v4, "label":Ljava/lang/CharSequence;
    goto :goto_1

    .line 179
    .end local v4    # "label":Ljava/lang/CharSequence;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_2

    .line 166
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .local v4, "label":Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method public static getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p0, "sourceFile"    # Ljava/io/File;

    .prologue
    .line 53
    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1}, Landroid/content/pm/PackageParser;-><init>()V

    .line 55
    .local v1, "parser":Landroid/content/pm/PackageParser;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static initSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1
    .param p0, "snippetView"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    const v0, 0x7f11009c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v0, 0x7f11009d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object p0
.end method

.method public static initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "pContext"    # Landroid/app/Activity;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "snippetView"    # Landroid/view/View;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/settings/packageuninstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;Landroid/os/UserHandle;)Landroid/view/View;
    .locals 3
    .param p0, "pContext"    # Landroid/app/Activity;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "snippetView"    # Landroid/view/View;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 96
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 100
    invoke-static {p2, v2, v0}, Lcom/oneplus/settings/packageuninstaller/PackageUtil;->initSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static initSnippetForNewApp(Landroid/app/Activity;Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;I)Landroid/view/View;
    .locals 3
    .param p0, "pContext"    # Landroid/app/Activity;
    .param p1, "as"    # Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;
    .param p2, "snippetId"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "appSnippet":Landroid/view/View;
    const v1, 0x7f11009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    const v1, 0x7f11009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-object v0
.end method

.method public static isPackageAlreadyInstalled(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 126
    const/16 v5, 0x2000

    .line 125
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 128
    .local v2, "installedListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 129
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 130
    .local v3, "tmp":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const/4 v4, 0x1

    return v4

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "tmp":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method
