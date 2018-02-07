.class public Lcom/oneplus/settings/SettingsBaseApplication;
.super Landroid/app/Application;
.source "SettingsBaseApplication.java"


# static fields
.field public static final ONEPLUS_DEBUG:Z

.field public static mApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/SettingsBaseApplication;->ONEPLUS_DEBUG:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 22
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    sput-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 15
    return-void
.end method
