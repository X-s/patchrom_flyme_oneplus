.class public Landroid/content/res/ThemeController;
.super Ljava/lang/Object;
.source "ThemeController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeController"

.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I

.field private static mThemeController:Landroid/content/res/ThemeController;


# instance fields
.field private final mBlackThemeFolderPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mWhiteThemeFolderPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "/system/media/themes/oneplus_white/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mWhiteThemeFolderPath:Ljava/lang/String;

    .line 20
    const-string v0, "/system/media/themes/oneplus_black/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mBlackThemeFolderPath:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/content/res/ThemeController;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    .line 35
    :cond_0
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-object v0
.end method


# virtual methods
.method public checkHasTheme(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v4

    .line 43
    .local v4, "themeState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "apkName":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 45
    new-instance v3, Ljava/io/File;

    const-string v5, "/system/media/themes/oneplus_black/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, "themeDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 57
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v3    # "themeDirectory":Ljava/io/File;
    .end local v4    # "themeState":I
    .local v2, "result":Z
    :goto_0
    return v2

    .line 47
    .end local v2    # "result":Z
    .restart local v0    # "apkName":Ljava/lang/String;
    .restart local v4    # "themeState":I
    :cond_0
    if-nez v4, :cond_1

    .line 48
    new-instance v3, Ljava/io/File;

    const-string v5, "/system/media/themes/oneplus_white/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .restart local v3    # "themeDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 50
    .restart local v2    # "result":Z
    goto :goto_0

    .line 51
    .end local v2    # "result":Z
    .end local v3    # "themeDirectory":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0

    .line 53
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v4    # "themeState":I
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ThemeController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public varargs getCorrectThemeResource([I)I
    .locals 2
    .param p1, "resIds"    # [I

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 80
    aget v0, p1, v1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    goto :goto_0
.end method

.method public getThemeState()I
    .locals 5

    .prologue
    .line 62
    const/4 v1, 0x2

    .line 64
    .local v1, "themeState":I
    :try_start_0
    iget-object v2, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_black_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 68
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ThemeController"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
