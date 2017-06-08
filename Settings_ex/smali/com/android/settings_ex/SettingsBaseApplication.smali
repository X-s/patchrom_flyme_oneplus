.class public Lcom/android/settings_ex/SettingsBaseApplication;
.super Landroid/app/Application;
.source "SettingsBaseApplication.java"


# static fields
.field public static mApplication:Landroid/app/Application;


# direct methods
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
    .line 21
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 22
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    sput-object p0, Lcom/android/settings_ex/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 16
    return-void
.end method
