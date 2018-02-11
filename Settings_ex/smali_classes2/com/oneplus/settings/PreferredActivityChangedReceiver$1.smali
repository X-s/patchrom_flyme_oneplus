.class Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;
.super Landroid/os/AsyncTask;
.source "PreferredActivityChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/PreferredActivityChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/PreferredActivityChangedReceiver;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/PreferredActivityChangedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/PreferredActivityChangedReceiver;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->this$0:Lcom/oneplus/settings/PreferredActivityChangedReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 35
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 36
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultHomePreference;->getCurrentDefaultHome(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "defaultHomePkg":Ljava/lang/String;
    const-string/jumbo v2, "PreferredActivityChangedReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "defaultHomePkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    if-nez v1, :cond_0

    .line 39
    const-string/jumbo v2, "PreferredActivityChangedReceiver"

    const-string/jumbo v3, "Nothing to do as current default launcher is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-object v5

    .line 42
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/PreferredActivityChangedReceiver;->-get0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const-string/jumbo v2, "PreferredActivityChangedReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nothing to do as the current default launcher pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-object v5

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->this$0:Lcom/oneplus/settings/PreferredActivityChangedReceiver;

    const-string/jumbo v3, "net.oneplus.h2launcher"

    const-string/jumbo v4, "net.oneplus.h2launcher.customizations.wallpaper.SetWallpaperActivity"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/oneplus/settings/PreferredActivityChangedReceiver;->-wrap0(Lcom/oneplus/settings/PreferredActivityChangedReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/oneplus/settings/PreferredActivityChangedReceiver$1;->this$0:Lcom/oneplus/settings/PreferredActivityChangedReceiver;

    const-string/jumbo v3, "net.oneplus.launcher"

    const-string/jumbo v4, "net.oneplus.launcher.wallpaper.SetWallpaperActivity"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/oneplus/settings/PreferredActivityChangedReceiver;->-wrap0(Lcom/oneplus/settings/PreferredActivityChangedReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v5
.end method
