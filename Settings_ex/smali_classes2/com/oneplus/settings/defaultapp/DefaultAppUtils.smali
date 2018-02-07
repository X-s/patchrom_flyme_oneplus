.class public Lcom/oneplus/settings/defaultapp/DefaultAppUtils;
.super Ljava/lang/Object;
.source "DefaultAppUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DefaultAppUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDefaultApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 173
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 174
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 175
    .local v2, "needClear":Z
    const/4 v5, 0x0

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 176
    .local v0, "appType":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "p":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    const/4 v2, 0x1

    .line 179
    const-string/jumbo v7, ""

    invoke-static {p0, v0, v7}, Lcom/oneplus/settings/defaultapp/DataHelper;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "appType":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 171
    :cond_2
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 56
    :pswitch_0
    new-instance v0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeCamera;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeCamera;-><init>()V

    return-object v0

    .line 58
    :pswitch_1
    new-instance v0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeGallery;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeGallery;-><init>()V

    return-object v0

    .line 60
    :pswitch_2
    new-instance v0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeMusic;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeMusic;-><init>()V

    return-object v0

    .line 62
    :pswitch_3
    new-instance v0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeEmail;

    invoke-direct {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeEmail;-><init>()V

    return-object v0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v2, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 42
    .local v2, "mKey":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 43
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 44
    aget-object v1, v2, v0

    .line 45
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    move v3, v0

    .line 50
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;I)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v4

    return-object v4

    .line 43
    .restart local v1    # "k":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getDefaultAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "systemDefaultPackageName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 93
    .local v0, "isAppExist":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 94
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const v3, 0x7f0e0f23

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 98
    :cond_0
    invoke-static {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->queryAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 101
    :cond_1
    return-object v4

    .line 104
    :cond_2
    return-object v4
.end method

.method public static getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 112
    .local v0, "isAppExist":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    if-eqz v0, :cond_0

    .line 114
    return-object v1

    .line 116
    :cond_0
    return-object v3

    .line 119
    :cond_1
    return-object v3
.end method

.method public static getDefaultAppValueList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getKeyTypeInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v2, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 29
    .local v2, "mKey":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 30
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 31
    aget-object v1, v2, v0

    .line 32
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    move v3, v0

    .line 37
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    return v3

    .line 30
    .restart local v1    # "k":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getKeyTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 24
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v2, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 79
    .local v2, "mKey":[Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppValueList()[Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "mValue":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 81
    aget-object v1, v2, v0

    .line 82
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    aget-object v4, v3, v0

    return-object v4

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "k":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public static isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    return v4

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 129
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    return v3

    .line 130
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    return v4
.end method

.method public static queryAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string/jumbo v1, ""

    .line 139
    .local v1, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 140
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 141
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 145
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static resetDefaultApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appType"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v2

    .line 150
    .local v2, "logic":Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
    invoke-virtual {v2, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    invoke-virtual {v2, p1, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 152
    .local v3, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {v2, p1, v3, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    .line 154
    .local v4, "position":I
    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 148
    return-void
.end method

.method public static updateDefaultApp(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v2

    .line 159
    .local v2, "logic":Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
    sget-object v3, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 160
    .local v3, "mKey":[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v8, v3

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v1, v3, v7

    .line 161
    .local v1, "appType":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    invoke-virtual {v2, v1, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 164
    .local v5, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 165
    invoke-virtual {v2, v1, v5, v4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    .line 166
    .local v6, "position":I
    invoke-virtual {v2, v1, v0, v5, v6}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 160
    .end local v6    # "position":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;>;"
    .end local v1    # "appType":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
