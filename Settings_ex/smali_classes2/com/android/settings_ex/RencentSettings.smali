.class public abstract Lcom/android/settings_ex/RencentSettings;
.super Lcom/android/settings_ex/SettingsActivity;
.source "RencentSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    return-void
.end method

.method private getIconId()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RencentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/RencentSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 44
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 45
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RencentSettings;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010433

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->getColor(Landroid/content/res/Resources$Theme;I)I

    move-result v0

    .line 31
    .local v0, "colorPrimary":I
    invoke-virtual {p0}, Lcom/android/settings_ex/RencentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f030000

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 32
    .local v3, "tintedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 35
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RencentSettings;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 36
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0    # "colorPrimary":I
    .end local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "tintedBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method
