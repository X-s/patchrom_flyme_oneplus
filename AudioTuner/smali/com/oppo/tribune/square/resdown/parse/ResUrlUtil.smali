.class public Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;
.super Ljava/lang/Object;
.source "ResUrlUtil.java"


# static fields
.field public static final ALBUM_LIST_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceAlbums?page="

.field private static final DOMAIN:Ljava/lang/String; = "http://i.paradise.wanyol.com/"

.field public static final DOWN_STAT_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/ResourceDownload"

.field public static final HOT_GALLERY_CLICK_STAT:Ljava/lang/String; = "http://i.paradise.wanyol.com/IndexViews?type=hotthread&id="

.field public static final MUSIC_LIST_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceMusics?mcid="

.field public static final POOR_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/ResourcePoor"

.field public static final PRAISE_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/ResourcePraise"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "Resdown.lastmodify.time.records"

.field public static final RESOURCE_APP_ALBUM_DETAIL_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceDetailAlbum?album="

.field public static final RESOURCE_APP_ALBUM_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceApkAlbum?page="

.field public static final RESOURCE_APP_DETAIL_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceApk?id="

.field public static final RESOURCE_INDEXT_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceNewIndex"

.field public static final RESOURCE_NEW_THEME_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceNewThemes?page="

.field public static final RESOURCE_PHONE_MODLE_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceModel"

.field public static final RESOURCE_THEME_URL:Ljava/lang/String; = "http://i.paradise.wanyol.com/GetResourceThemes?page="

.field public static final RES_GALLERY_CLICK_STAT:Ljava/lang/String; = "http://i.paradise.wanyol.com/IndexViews?type=index&id="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLastModifyRecords(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 95
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMd5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MD5C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v0, "Resdown.lastmodify.time.records"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 90
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public static setMd5c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MD5C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p0}, Lcom/oppo/tribune/square/resdown/parse/ResUrlUtil;->getSettingSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
