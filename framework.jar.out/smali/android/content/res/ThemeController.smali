.class public Landroid/content/res/ThemeController;
.super Ljava/lang/Object;
.source "ThemeController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeController"

.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_BLACK_BLUE:I = 0xc

.field public static final THEME_BLACK_GOLDEN:I = 0x8

.field public static final THEME_BLACK_GREEN:I = 0xa

.field public static final THEME_BLACK_PINK:I = 0xe

.field public static final THEME_BLACK_PURPLE:I = 0xb

.field public static final THEME_BLACK_RED:I = 0xd

.field public static final THEME_BLACK_YELLOW:I = 0x9

.field public static final THEME_WHITE:I = 0x0

.field public static final THEME_WHITE_BLUE:I = 0x5

.field public static final THEME_WHITE_GOLDEN:I = 0x1

.field public static final THEME_WHITE_GREEN:I = 0x3

.field public static final THEME_WHITE_PINK:I = 0x7

.field public static final THEME_WHITE_PURPLE:I = 0x4

.field public static final THEME_WHITE_RED:I = 0x6

.field public static final THEME_WHITE_YELLOW:I = 0x2

.field private static mThemeController:Landroid/content/res/ThemeController;


# instance fields
.field private final mBlackThemeFolderPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mWhiteThemeFolderPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    .line 12
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "/system/media/themes/oneplus_white/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mWhiteThemeFolderPath:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "/system/media/themes/oneplus_black/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mBlackThemeFolderPath:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/content/res/ThemeController;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    .line 50
    :cond_0
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-object v0
.end method


# virtual methods
.method public checkHasTheme(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v4

    .line 58
    .local v4, "themeState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "apkName":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 60
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "/system/media/themes/oneplus_black/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "themeDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 72
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v3    # "themeDirectory":Ljava/io/File;
    .end local v4    # "themeState":I
    :goto_0
    return v2

    .line 62
    .restart local v0    # "apkName":Ljava/lang/String;
    .restart local v4    # "themeState":I
    :cond_0
    if-nez v4, :cond_1

    .line 63
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "/system/media/themes/oneplus_white/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v3    # "themeDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 66
    .end local v2    # "result":Z
    .end local v3    # "themeDirectory":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, "result":Z
    goto :goto_0

    .line 68
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v4    # "themeState":I
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ThemeController"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public getColorState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "colorState":I
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_white_mode_accent_color_index"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode_accent_color_index"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public varargs getCorrectColorResource(II[I)I
    .locals 9
    .param p1, "whiteTheme"    # I
    .param p2, "blackTheme"    # I
    .param p3, "colorTheme"    # [I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getColorState()I

    move-result v0

    .line 116
    .local v0, "colorState":I
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v2

    .line 117
    .local v2, "themeState":I
    const-string/jumbo v3, "ThemeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ColorState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ThemeState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    array-length v3, p3

    const/16 v4, 0xe

    if-eq v3, v4, :cond_0

    .line 119
    const-string/jumbo v3, "ThemeController"

    const-string/jumbo v4, "The length of colorTheme isn\'t 14"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    if-eq v2, v8, :cond_1

    if-eqz v0, :cond_1

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 165
    const-string/jumbo v3, "ThemeController"

    const-string/jumbo v4, "return whitetheme"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return p1

    .line 125
    :pswitch_0
    const/4 v3, 0x0

    :try_start_0
    aget v3, p3, v3

    return v3

    .line 127
    :pswitch_1
    const/4 v3, 0x1

    aget v3, p3, v3

    return v3

    .line 129
    :pswitch_2
    const/4 v3, 0x2

    aget v3, p3, v3

    return v3

    .line 131
    :pswitch_3
    const/4 v3, 0x3

    aget v3, p3, v3

    return v3

    .line 133
    :pswitch_4
    const/4 v3, 0x4

    aget v3, p3, v3

    return v3

    .line 135
    :pswitch_5
    const/4 v3, 0x5

    aget v3, p3, v3

    return v3

    .line 137
    :pswitch_6
    const/4 v3, 0x6

    aget v3, p3, v3

    return v3

    .line 139
    :pswitch_7
    const/4 v3, 0x7

    aget v3, p3, v3

    return v3

    .line 141
    :pswitch_8
    const/16 v3, 0x8

    aget v3, p3, v3

    return v3

    .line 143
    :pswitch_9
    const/16 v3, 0x9

    aget v3, p3, v3

    return v3

    .line 145
    :pswitch_a
    const/16 v3, 0xa

    aget v3, p3, v3

    return v3

    .line 147
    :pswitch_b
    const/16 v3, 0xb

    aget v3, p3, v3

    return v3

    .line 149
    :pswitch_c
    const/16 v3, 0xc

    aget v3, p3, v3

    return v3

    .line 151
    :pswitch_d
    const/16 v3, 0xd

    aget v3, p3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ThemeController"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v6

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    if-ne v2, v7, :cond_2

    .line 159
    const-string/jumbo v3, "ThemeController"

    const-string/jumbo v4, "return blacktheme"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return p2

    .line 162
    :cond_2
    const-string/jumbo v3, "ThemeController"

    const-string/jumbo v4, "return whitetheme"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return p1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public varargs getCorrectThemeResource([I)I
    .locals 2
    .param p1, "resIds"    # [I

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 106
    aget v0, p1, v1

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method public getThemeState()I
    .locals 5

    .prologue
    .line 77
    const/4 v1, 0x2

    .line 79
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

    .line 83
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "ThemeController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
